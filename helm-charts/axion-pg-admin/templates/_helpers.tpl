{{/*
Base application name
*/}}
{{- define "axion.name" -}}
axion
{{- end }}


{{/*
pgadmin name
*/}}
{{- define "pgadmin.name" -}}
pgadmin
{{- end }}


{{/*
pgadmin Deployment name
*/}}
{{- define "pgadmin.deploymentName" -}}
{{ include "axion.name" . }}-{{ .Release.Name }}-{{ include "pgadmin.name" . }}-deploy
{{- end }}


{{/*
pgadmin Service name
*/}}
{{- define "pgadmin.serviceName" -}}
{{ include "axion.name" . }}-{{ .Release.Name }}-{{ include "pgadmin.name" . }}-svc
{{- end }}


{{/*
pgadmin Secret name
*/}}
{{- define "pgadmin.secretName" -}}
{{ include "axion.name" . }}-{{ .Release.Name }}-{{ include "pgadmin.name" . }}-secret
{{- end }}


{{/*
pgadmin Ingress name
*/}}
{{- define "pgadmin.ingName" -}}
{{ include "axion.name" . }}-{{ .Release.Name }}-{{ include "pgadmin.name" . }}-ingress
{{- end }}