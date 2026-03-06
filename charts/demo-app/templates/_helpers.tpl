{{- define "demo-nginx.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "demo-nginx.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- include "demo-nginx.name" . -}}
{{- end -}}
{{- end -}}

{{- define "demo-nginx.labels" -}}
app: {{ include "demo-nginx.fullname" . }}
{{- end -}}
