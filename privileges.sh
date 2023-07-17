# Grant a user access to the target namespace
oc adm policy add-role-to-user edit developer -n modemo
oc create role custom-create-role --verb=create,get,list,watch --resource=pods,deployments,jobs -n modemo
oc create rolebinding custom-create-role-binding --role=custom-create-role --user=developer -n modemo

# Grant access to the image stream
# oc policy add-role-to-group system:image-puller system:serviceaccounts:<TARGET_NAMESPACE> -n <SOURCE_NAMESPACE>
oc policy add-role-to-group system:image-puller system:serviceaccounts:devspaces -n modemo
