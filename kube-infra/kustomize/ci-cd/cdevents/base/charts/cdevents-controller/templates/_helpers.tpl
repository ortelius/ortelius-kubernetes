{{/*
Expand the name of the chart.
*/}}
{{- define "cdevents-controller.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "cdevents-controller.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "cdevents-controller.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "cdevents-controller.labels" -}}
helm.sh/chart: {{ include "cdevents-controller.chart" . }}
{{ include "cdevents-controller.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "cdevents-controller.selectorLabels" -}}
app.kubernetes.io/name: {{ include "cdevents-controller.fullname" . }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "cdevents-controller.serviceAccountName" -}}
{{- if .Values.serviceAccount.enabled }}
{{- default (include "cdevents-controller.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}

{{/*
Create the name of the tls secret for secure port
*/}}
{{- define "cdevents-controller.tlsSecretName" -}}
{{- $fullname := include "cdevents-controller.fullname" . -}}
{{- default (printf "%s-tls" $fullname) .Values.tls.secretName }}
{{- end }}