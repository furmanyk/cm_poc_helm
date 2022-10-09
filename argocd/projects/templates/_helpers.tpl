{{/* vim: set filetype=mustache: */}}
{{/*
Calculate image pull secret for docker registry.
*/}}

{{- define "imagePullSecret" }}
{{- printf "{\"auths\": {\"%s\": {\"auth\": \"%s\"}}}" .Values.dockerRegistry.url (printf "%s:%s" .Values.dockerRegistry.username   .Values.dockerRegistry.password | b64enc) | b64enc }}
{{- end }}

{{- define "imagePullSecretOverride" }}
{{- printf "{\"auths\": {\"%s\": {\"auth\": \"%s\"}}}" .Values.dockerRegistry.urlRo (printf "%s:%s" .Values.dockerRegistry.username   .Values.dockerRegistry.password | b64enc) | b64enc }}
{{- end }}