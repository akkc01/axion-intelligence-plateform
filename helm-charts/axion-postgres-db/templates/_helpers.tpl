{{/*
Base application name
*/}}
{{- define "axion.name" -}}
axion
{{- end }}


{{/*
PostgreSQL name
*/}}
{{- define "postgres.name" -}}
postgres
{{- end }}


{{/*
PostgreSQL Deployment name
*/}}
{{- define "postgres.deploymentName" -}}
{{ include "axion.name" . }}-{{ .Release.Name }}-{{ include "postgres.name" . }}-deploy
{{- end }}


{{/*
PostgreSQL Service name
*/}}
{{- define "postgres.serviceName" -}}
{{ include "axion.name" . }}-{{ .Release.Name }}-{{ include "postgres.name" . }}-svc
{{- end }}


{{/*
PostgreSQL Secret name
*/}}
{{- define "postgres.secretName" -}}
{{ include "axion.name" . }}-{{ .Release.Name }}-{{ include "postgres.name" . }}-secret
{{- end }}


{{/*
PostgreSQL ConfigMap name
*/}}
{{- define "postgres.configMapName" -}}
{{ include "axion.name" . }}-{{ .Release.Name }}-{{ include "postgres.name" . }}-configmap
{{- end }}


{{/*
PostgreSQL StorageClass name
*/}}
{{- define "postgres.storageClassName" -}}
{{ include "axion.name" . }}-{{ .Release.Name }}-{{ include "postgres.name" . }}-managed-csi
{{- end }}


{{/*
PostgreSQL PVC name
*/}}
{{- define "postgres.pvcName" -}}
{{ include "axion.name" . }}-{{ .Release.Name }}-{{ include "postgres.name" . }}-pvc
{{- end }}