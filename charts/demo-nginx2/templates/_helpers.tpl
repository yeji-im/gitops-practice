{{- define "demo-nginx2.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "demo-nginx2.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- include "demo-nginx2.name" . -}}
{{- end -}}
{{- end -}}

{{- define "demo-nginx2.labels" -}}
app: {{ include "demo-nginx2.fullname" . }}
{{- end -}}
