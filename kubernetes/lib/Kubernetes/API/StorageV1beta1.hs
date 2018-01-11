{-
   Kubernetes

   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: 2.0
   Kubernetes API version: v1.9.2
   Generated by Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
-}

{-|
Module : Kubernetes.API.StorageV1beta1
-}

{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE MonoLocalBinds #-}
{-# LANGUAGE MultiParamTypeClasses #-}
{-# LANGUAGE OverloadedStrings #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing -fno-warn-unused-binds -fno-warn-unused-imports #-}

module Kubernetes.API.StorageV1beta1 where

import Kubernetes.Core
import Kubernetes.MimeTypes
import Kubernetes.Model as M

import qualified Data.Aeson as A
import qualified Data.ByteString as B
import qualified Data.ByteString.Lazy as BL
import qualified Data.Data as P (Typeable, TypeRep, typeOf, typeRep)
import qualified Data.Foldable as P
import qualified Data.Map as Map
import qualified Data.Maybe as P
import qualified Data.Proxy as P (Proxy(..))
import qualified Data.Set as Set
import qualified Data.String as P
import qualified Data.Text as T
import qualified Data.Text.Encoding as T
import qualified Data.Text.Lazy as TL
import qualified Data.Text.Lazy.Encoding as TL
import qualified Data.Time as TI
import qualified Network.HTTP.Client.MultipartFormData as NH
import qualified Network.HTTP.Media as ME
import qualified Network.HTTP.Types as NH
import qualified Web.FormUrlEncoded as WH
import qualified Web.HttpApiData as WH

import Data.Text (Text)
import GHC.Base ((<|>))

import Prelude ((==),(/=),($), (.),(<$>),(<*>),(>>=),Maybe(..),Bool(..),Char,Double,FilePath,Float,Int,Integer,String,fmap,undefined,mempty,maybe,pure,Monad,Applicative,Functor)
import qualified Prelude as P

-- * Operations


-- ** StorageV1beta1

-- *** createStorageClass

-- | @POST \/apis\/storage.k8s.io\/v1beta1\/storageclasses@
-- 
-- create a StorageClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
createStorageClass 
  :: (Consumes CreateStorageClass contentType, MimeRender contentType V1beta1StorageClass)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> V1beta1StorageClass -- ^ "body"
  -> KubernetesRequest CreateStorageClass contentType V1beta1StorageClass accept
createStorageClass _  _ body =
  _mkRequest "POST" ["/apis/storage.k8s.io/v1beta1/storageclasses"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data CreateStorageClass 
instance HasBodyParam CreateStorageClass V1beta1StorageClass 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam CreateStorageClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes CreateStorageClass mtype

-- | @application/json@
instance Produces CreateStorageClass MimeJSON
-- | @application/yaml@
instance Produces CreateStorageClass MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces CreateStorageClass MimeVndKubernetesProtobuf


-- *** deleteCollectionStorageClass

-- | @DELETE \/apis\/storage.k8s.io\/v1beta1\/storageclasses@
-- 
-- delete collection of StorageClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
deleteCollectionStorageClass 
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest DeleteCollectionStorageClass MimeNoContent V1Status accept
deleteCollectionStorageClass  _ =
  _mkRequest "DELETE" ["/apis/storage.k8s.io/v1beta1/storageclasses"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data DeleteCollectionStorageClass  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam DeleteCollectionStorageClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "continue" - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server the server will respond with a 410 ResourceExpired error indicating the client must restart their list without the continue field. This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
instance HasOptionalParam DeleteCollectionStorageClass Continue where
  applyOptionalParam req (Continue xs) =
    req `setQuery` toQuery ("continue", Just xs)

-- | /Optional Param/ "fieldSelector" - A selector to restrict the list of returned objects by their fields. Defaults to everything.
instance HasOptionalParam DeleteCollectionStorageClass FieldSelector where
  applyOptionalParam req (FieldSelector xs) =
    req `setQuery` toQuery ("fieldSelector", Just xs)

-- | /Optional Param/ "includeUninitialized" - If true, partially initialized resources are included in the response.
instance HasOptionalParam DeleteCollectionStorageClass IncludeUninitialized where
  applyOptionalParam req (IncludeUninitialized xs) =
    req `setQuery` toQuery ("includeUninitialized", Just xs)

-- | /Optional Param/ "labelSelector" - A selector to restrict the list of returned objects by their labels. Defaults to everything.
instance HasOptionalParam DeleteCollectionStorageClass LabelSelector where
  applyOptionalParam req (LabelSelector xs) =
    req `setQuery` toQuery ("labelSelector", Just xs)

-- | /Optional Param/ "limit" - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
instance HasOptionalParam DeleteCollectionStorageClass Limit where
  applyOptionalParam req (Limit xs) =
    req `setQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "resourceVersion" - When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it's 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv.
instance HasOptionalParam DeleteCollectionStorageClass ResourceVersion where
  applyOptionalParam req (ResourceVersion xs) =
    req `setQuery` toQuery ("resourceVersion", Just xs)

-- | /Optional Param/ "timeoutSeconds" - Timeout for the list/watch call.
instance HasOptionalParam DeleteCollectionStorageClass TimeoutSeconds where
  applyOptionalParam req (TimeoutSeconds xs) =
    req `setQuery` toQuery ("timeoutSeconds", Just xs)

-- | /Optional Param/ "watch" - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
instance HasOptionalParam DeleteCollectionStorageClass Watch where
  applyOptionalParam req (Watch xs) =
    req `setQuery` toQuery ("watch", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes DeleteCollectionStorageClass mtype

-- | @application/json@
instance Produces DeleteCollectionStorageClass MimeJSON
-- | @application/yaml@
instance Produces DeleteCollectionStorageClass MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces DeleteCollectionStorageClass MimeVndKubernetesProtobuf


-- *** deleteStorageClass

-- | @DELETE \/apis\/storage.k8s.io\/v1beta1\/storageclasses\/{name}@
-- 
-- delete a StorageClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
deleteStorageClass 
  :: (Consumes DeleteStorageClass contentType, MimeRender contentType V1DeleteOptions)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the StorageClass
  -> V1DeleteOptions -- ^ "body"
  -> KubernetesRequest DeleteStorageClass contentType V1Status accept
deleteStorageClass _  _ (Name name) body =
  _mkRequest "DELETE" ["/apis/storage.k8s.io/v1beta1/storageclasses/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data DeleteStorageClass 
instance HasBodyParam DeleteStorageClass V1DeleteOptions 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam DeleteStorageClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "gracePeriodSeconds" - The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
instance HasOptionalParam DeleteStorageClass GracePeriodSeconds where
  applyOptionalParam req (GracePeriodSeconds xs) =
    req `setQuery` toQuery ("gracePeriodSeconds", Just xs)

-- | /Optional Param/ "orphanDependents" - Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the \"orphan\" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
instance HasOptionalParam DeleteStorageClass OrphanDependents where
  applyOptionalParam req (OrphanDependents xs) =
    req `setQuery` toQuery ("orphanDependents", Just xs)

-- | /Optional Param/ "propagationPolicy" - Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
instance HasOptionalParam DeleteStorageClass PropagationPolicy where
  applyOptionalParam req (PropagationPolicy xs) =
    req `setQuery` toQuery ("propagationPolicy", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes DeleteStorageClass mtype

-- | @application/json@
instance Produces DeleteStorageClass MimeJSON
-- | @application/yaml@
instance Produces DeleteStorageClass MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces DeleteStorageClass MimeVndKubernetesProtobuf


-- *** getAPIResources

-- | @GET \/apis\/storage.k8s.io\/v1beta1\/@
-- 
-- get available resources
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
getAPIResources 
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest GetAPIResources MimeNoContent V1APIResourceList accept
getAPIResources  _ =
  _mkRequest "GET" ["/apis/storage.k8s.io/v1beta1/"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data GetAPIResources  

-- | @application/json@
instance Consumes GetAPIResources MimeJSON
-- | @application/yaml@
instance Consumes GetAPIResources MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Consumes GetAPIResources MimeVndKubernetesProtobuf

-- | @application/json@
instance Produces GetAPIResources MimeJSON
-- | @application/yaml@
instance Produces GetAPIResources MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces GetAPIResources MimeVndKubernetesProtobuf


-- *** listStorageClass

-- | @GET \/apis\/storage.k8s.io\/v1beta1\/storageclasses@
-- 
-- list or watch objects of kind StorageClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
listStorageClass 
  :: Accept accept -- ^ request accept ('MimeType')
  -> KubernetesRequest ListStorageClass MimeNoContent V1beta1StorageClassList accept
listStorageClass  _ =
  _mkRequest "GET" ["/apis/storage.k8s.io/v1beta1/storageclasses"]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ListStorageClass  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ListStorageClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "continue" - The continue option should be set when retrieving more results from the server. Since this value is server defined, clients may only use the continue value from a previous query result with identical query parameters (except for the value of continue) and the server may reject a continue value it does not recognize. If the specified continue value is no longer valid whether due to expiration (generally five to fifteen minutes) or a configuration change on the server the server will respond with a 410 ResourceExpired error indicating the client must restart their list without the continue field. This field is not supported when watch is true. Clients may start a watch from the last resourceVersion value returned by the server and not miss any modifications.
instance HasOptionalParam ListStorageClass Continue where
  applyOptionalParam req (Continue xs) =
    req `setQuery` toQuery ("continue", Just xs)

-- | /Optional Param/ "fieldSelector" - A selector to restrict the list of returned objects by their fields. Defaults to everything.
instance HasOptionalParam ListStorageClass FieldSelector where
  applyOptionalParam req (FieldSelector xs) =
    req `setQuery` toQuery ("fieldSelector", Just xs)

-- | /Optional Param/ "includeUninitialized" - If true, partially initialized resources are included in the response.
instance HasOptionalParam ListStorageClass IncludeUninitialized where
  applyOptionalParam req (IncludeUninitialized xs) =
    req `setQuery` toQuery ("includeUninitialized", Just xs)

-- | /Optional Param/ "labelSelector" - A selector to restrict the list of returned objects by their labels. Defaults to everything.
instance HasOptionalParam ListStorageClass LabelSelector where
  applyOptionalParam req (LabelSelector xs) =
    req `setQuery` toQuery ("labelSelector", Just xs)

-- | /Optional Param/ "limit" - limit is a maximum number of responses to return for a list call. If more items exist, the server will set the `continue` field on the list metadata to a value that can be used with the same initial query to retrieve the next set of results. Setting a limit may return fewer than the requested amount of items (up to zero items) in the event all requested objects are filtered out and clients should only use the presence of the continue field to determine whether more results are available. Servers may choose not to support the limit argument and will return all of the available results. If limit is specified and the continue field is empty, clients may assume that no more results are available. This field is not supported if watch is true.  The server guarantees that the objects returned when using continue will be identical to issuing a single list call without a limit - that is, no objects created, modified, or deleted after the first request is issued will be included in any subsequent continued requests. This is sometimes referred to as a consistent snapshot, and ensures that a client that is using limit to receive smaller chunks of a very large result can ensure they see all possible objects. If objects are updated during a chunked list the version of the object that was present at the time the first list result was calculated is returned.
instance HasOptionalParam ListStorageClass Limit where
  applyOptionalParam req (Limit xs) =
    req `setQuery` toQuery ("limit", Just xs)

-- | /Optional Param/ "resourceVersion" - When specified with a watch call, shows changes that occur after that particular version of a resource. Defaults to changes from the beginning of history. When specified for list: - if unset, then the result is returned from remote storage based on quorum-read flag; - if it's 0, then we simply return what we currently have in cache, no guarantee; - if set to non zero, then the result is at least as fresh as given rv.
instance HasOptionalParam ListStorageClass ResourceVersion where
  applyOptionalParam req (ResourceVersion xs) =
    req `setQuery` toQuery ("resourceVersion", Just xs)

-- | /Optional Param/ "timeoutSeconds" - Timeout for the list/watch call.
instance HasOptionalParam ListStorageClass TimeoutSeconds where
  applyOptionalParam req (TimeoutSeconds xs) =
    req `setQuery` toQuery ("timeoutSeconds", Just xs)

-- | /Optional Param/ "watch" - Watch for changes to the described resources and return them as a stream of add, update, and remove notifications. Specify resourceVersion.
instance HasOptionalParam ListStorageClass Watch where
  applyOptionalParam req (Watch xs) =
    req `setQuery` toQuery ("watch", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes ListStorageClass mtype

-- | @application/json@
instance Produces ListStorageClass MimeJSON
-- | @application/yaml@
instance Produces ListStorageClass MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces ListStorageClass MimeVndKubernetesProtobuf
-- | @application/json;stream=watch@
instance Produces ListStorageClass MimeJsonstreamwatch
-- | @application/vnd.kubernetes.protobuf;stream=watch@
instance Produces ListStorageClass MimeVndKubernetesProtobufstreamwatch


-- *** patchStorageClass

-- | @PATCH \/apis\/storage.k8s.io\/v1beta1\/storageclasses\/{name}@
-- 
-- partially update the specified StorageClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
patchStorageClass 
  :: (Consumes PatchStorageClass contentType, MimeRender contentType A.Value)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the StorageClass
  -> A.Value -- ^ "body"
  -> KubernetesRequest PatchStorageClass contentType V1beta1StorageClass accept
patchStorageClass _  _ (Name name) body =
  _mkRequest "PATCH" ["/apis/storage.k8s.io/v1beta1/storageclasses/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data PatchStorageClass 
instance HasBodyParam PatchStorageClass A.Value 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam PatchStorageClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | @application/json-patch+json@
instance Consumes PatchStorageClass MimeJsonPatchjson
-- | @application/merge-patch+json@
instance Consumes PatchStorageClass MimeMergePatchjson
-- | @application/strategic-merge-patch+json@
instance Consumes PatchStorageClass MimeStrategicMergePatchjson

-- | @application/json@
instance Produces PatchStorageClass MimeJSON
-- | @application/yaml@
instance Produces PatchStorageClass MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces PatchStorageClass MimeVndKubernetesProtobuf


-- *** readStorageClass

-- | @GET \/apis\/storage.k8s.io\/v1beta1\/storageclasses\/{name}@
-- 
-- read the specified StorageClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
readStorageClass 
  :: Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the StorageClass
  -> KubernetesRequest ReadStorageClass MimeNoContent V1beta1StorageClass accept
readStorageClass  _ (Name name) =
  _mkRequest "GET" ["/apis/storage.k8s.io/v1beta1/storageclasses/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)

data ReadStorageClass  

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReadStorageClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | /Optional Param/ "exact" - Should the export be exact.  Exact export maintains cluster-specific fields like 'Namespace'.
instance HasOptionalParam ReadStorageClass Exact where
  applyOptionalParam req (Exact xs) =
    req `setQuery` toQuery ("exact", Just xs)

-- | /Optional Param/ "export" - Should this value be exported.  Export strips fields that a user can not specify.
instance HasOptionalParam ReadStorageClass Export where
  applyOptionalParam req (Export xs) =
    req `setQuery` toQuery ("export", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes ReadStorageClass mtype

-- | @application/json@
instance Produces ReadStorageClass MimeJSON
-- | @application/yaml@
instance Produces ReadStorageClass MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReadStorageClass MimeVndKubernetesProtobuf


-- *** replaceStorageClass

-- | @PUT \/apis\/storage.k8s.io\/v1beta1\/storageclasses\/{name}@
-- 
-- replace the specified StorageClass
-- 
-- AuthMethod: 'AuthApiKeyBearerToken'
-- 
replaceStorageClass 
  :: (Consumes ReplaceStorageClass contentType, MimeRender contentType V1beta1StorageClass)
  => ContentType contentType -- ^ request content-type ('MimeType')
  -> Accept accept -- ^ request accept ('MimeType')
  -> Name -- ^ "name" -  name of the StorageClass
  -> V1beta1StorageClass -- ^ "body"
  -> KubernetesRequest ReplaceStorageClass contentType V1beta1StorageClass accept
replaceStorageClass _  _ (Name name) body =
  _mkRequest "PUT" ["/apis/storage.k8s.io/v1beta1/storageclasses/",toPath name]
    `_hasAuthType` (P.Proxy :: P.Proxy AuthApiKeyBearerToken)
    `setBodyParam` body

data ReplaceStorageClass 
instance HasBodyParam ReplaceStorageClass V1beta1StorageClass 

-- | /Optional Param/ "pretty" - If 'true', then the output is pretty printed.
instance HasOptionalParam ReplaceStorageClass Pretty where
  applyOptionalParam req (Pretty xs) =
    req `setQuery` toQuery ("pretty", Just xs)

-- | @*/*@
instance MimeType mtype => Consumes ReplaceStorageClass mtype

-- | @application/json@
instance Produces ReplaceStorageClass MimeJSON
-- | @application/yaml@
instance Produces ReplaceStorageClass MimeYaml
-- | @application/vnd.kubernetes.protobuf@
instance Produces ReplaceStorageClass MimeVndKubernetesProtobuf

