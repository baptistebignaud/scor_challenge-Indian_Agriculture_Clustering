??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
?
Embedding_State/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_nameEmbedding_State/embeddings
?
.Embedding_State/embeddings/Read/ReadVariableOpReadVariableOpEmbedding_State/embeddings*
_output_shapes

:*
dtype0

NoOpNoOp
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?

value?
B?
 B?

?
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
 
b


embeddings
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api


0


0
 
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
 
jh
VARIABLE_VALUEEmbedding_State/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE


0


0
 
?
non_trainable_variables

layers
metrics
layer_regularization_losses
 layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
 

0
1
2
3
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
~
serving_default_input_StatePlaceholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_StateEmbedding_State/embeddings*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_3689699
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename.Embedding_State/embeddings/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *)
f$R"
 __inference__traced_save_3689886
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameEmbedding_State/embeddings*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *,
f'R%
#__inference__traced_restore_3689899??
?
?
>__inference_model_feature_representation_layer_call_fn_3689713
inputs_state
unknown:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_stateunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *b
f]R[
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3689615o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_nameinputs/State
?
?
>__inference_model_feature_representation_layer_call_fn_3689562
input_state
unknown:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_stateunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *b
f]R[
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3689557o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:?????????
%
_user_specified_nameinput_State
?
?
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3689818

inputs*
embedding_lookup_3689797:
identity??9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_3689797Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3689797*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3689797*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_3689797*
_output_shapes

:*
dtype0?
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_State/embeddings/Regularizer/SumSum.Embedding_State/embeddings/Regularizer/Abs:y:07Embedding_State/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_3689797*
_output_shapes

:*
dtype0?
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_State/embeddings/Regularizer/Sum_1Sum1Embedding_State/embeddings/Regularizer/Square:y:07Embedding_State/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_State/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?&
?
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3689771
inputs_state:
(embedding_state_embedding_lookup_3689746:
identity?? Embedding_State/embedding_lookup?9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpk
Embedding_State/CastCastinputs_state*

DstT0*

SrcT0*'
_output_shapes
:??????????
 Embedding_State/embedding_lookupResourceGather(embedding_state_embedding_lookup_3689746Embedding_State/Cast:y:0*
Tindices0*;
_class1
/-loc:@Embedding_State/embedding_lookup/3689746*+
_output_shapes
:?????????*
dtype0?
)Embedding_State/embedding_lookup/IdentityIdentity)Embedding_State/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Embedding_State/embedding_lookup/3689746*+
_output_shapes
:??????????
+Embedding_State/embedding_lookup/Identity_1Identity2Embedding_State/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten/ReshapeReshape4Embedding_State/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:?????????h
&concatted_clustering/concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B :z
"concatted_clustering/concat/concatIdentityflatten/Reshape:output:0*
T0*'
_output_shapes
:?????????q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_3689746*
_output_shapes

:*
dtype0?
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_State/embeddings/Regularizer/SumSum.Embedding_State/embeddings/Regularizer/Abs:y:07Embedding_State/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_3689746*
_output_shapes

:*
dtype0?
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_State/embeddings/Regularizer/Sum_1Sum1Embedding_State/embeddings/Regularizer/Square:y:07Embedding_State/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_State/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: z
IdentityIdentity+concatted_clustering/concat/concat:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^Embedding_State/embedding_lookup:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2D
 Embedding_State/embedding_lookup Embedding_State/embedding_lookup2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp:U Q
'
_output_shapes
:?????????
&
_user_specified_nameinputs/State
?
?
1__inference_Embedding_State_layer_call_fn_3689793

inputs
unknown:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3689521s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_0_3689860T
Bembedding_state_embeddings_regularizer_abs_readvariableop_resource:
identity??9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpq
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpBembedding_state_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0?
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_State/embeddings/Regularizer/SumSum.Embedding_State/embeddings/Regularizer/Abs:y:07Embedding_State/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpBembedding_state_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0?
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_State/embeddings/Regularizer/Sum_1Sum1Embedding_State/embeddings/Regularizer/Square:y:07Embedding_State/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_State/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: n
IdentityIdentity0Embedding_State/embeddings/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: ?
NoOpNoOp:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp
?
?
"__inference__wrapped_model_3689489
input_stateW
Emodel_feature_representation_embedding_state_embedding_lookup_3689479:
identity??=model_feature_representation/Embedding_State/embedding_lookup?
1model_feature_representation/Embedding_State/CastCastinput_state*

DstT0*

SrcT0*'
_output_shapes
:??????????
=model_feature_representation/Embedding_State/embedding_lookupResourceGatherEmodel_feature_representation_embedding_state_embedding_lookup_36894795model_feature_representation/Embedding_State/Cast:y:0*
Tindices0*X
_classN
LJloc:@model_feature_representation/Embedding_State/embedding_lookup/3689479*+
_output_shapes
:?????????*
dtype0?
Fmodel_feature_representation/Embedding_State/embedding_lookup/IdentityIdentityFmodel_feature_representation/Embedding_State/embedding_lookup:output:0*
T0*X
_classN
LJloc:@model_feature_representation/Embedding_State/embedding_lookup/3689479*+
_output_shapes
:??????????
Hmodel_feature_representation/Embedding_State/embedding_lookup/Identity_1IdentityOmodel_feature_representation/Embedding_State/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????{
*model_feature_representation/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
,model_feature_representation/flatten/ReshapeReshapeQmodel_feature_representation/Embedding_State/embedding_lookup/Identity_1:output:03model_feature_representation/flatten/Const:output:0*
T0*'
_output_shapes
:??????????
Cmodel_feature_representation/concatted_clustering/concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B :?
?model_feature_representation/concatted_clustering/concat/concatIdentity5model_feature_representation/flatten/Reshape:output:0*
T0*'
_output_shapes
:??????????
IdentityIdentityHmodel_feature_representation/concatted_clustering/concat/concat:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp>^model_feature_representation/Embedding_State/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2~
=model_feature_representation/Embedding_State/embedding_lookup=model_feature_representation/Embedding_State/embedding_lookup:T P
'
_output_shapes
:?????????
%
_user_specified_nameinput_State
?
o
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3689840
inputs_0
identityS
concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B :U
concat/concatIdentityinputs_0*
T0*'
_output_shapes
:?????????^
IdentityIdentityconcat/concat:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0
?
`
D__inference_flatten_layer_call_and_return_conditional_losses_3689531

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?$
?
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3689615

inputs)
embedding_state_3689594:
identity??'Embedding_State/StatefulPartitionedCall?9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_state_3689594*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3689521?
flatten/PartitionedCallPartitionedCall0Embedding_State/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3689531?
$concatted_clustering/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3689539q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_3689594*
_output_shapes

:*
dtype0?
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_State/embeddings/Regularizer/SumSum.Embedding_State/embeddings/Regularizer/Abs:y:07Embedding_State/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_3689594*
_output_shapes

:*
dtype0?
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_State/embeddings/Regularizer/Sum_1Sum1Embedding_State/embeddings/Regularizer/Square:y:07Embedding_State/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_State/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: |
IdentityIdentity-concatted_clustering/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
E
)__inference_flatten_layer_call_fn_3689823

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3689531`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3689521

inputs*
embedding_lookup_3689500:
identity??9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?embedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:??????????
embedding_lookupResourceGatherembedding_lookup_3689500Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3689500*+
_output_shapes
:?????????*
dtype0?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3689500*+
_output_shapes
:??????????
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_3689500*
_output_shapes

:*
dtype0?
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_State/embeddings/Regularizer/SumSum.Embedding_State/embeddings/Regularizer/Abs:y:07Embedding_State/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_3689500*
_output_shapes

:*
dtype0?
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_State/embeddings/Regularizer/Sum_1Sum1Embedding_State/embeddings/Regularizer/Square:y:07Embedding_State/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_State/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:??????????
NoOpNoOp:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?$
?
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3689557

inputs)
embedding_state_3689522:
identity??'Embedding_State/StatefulPartitionedCall?9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_state_3689522*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3689521?
flatten/PartitionedCallPartitionedCall0Embedding_State/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3689531?
$concatted_clustering/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3689539q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_3689522*
_output_shapes

:*
dtype0?
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_State/embeddings/Regularizer/SumSum.Embedding_State/embeddings/Regularizer/Abs:y:07Embedding_State/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_3689522*
_output_shapes

:*
dtype0?
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_State/embeddings/Regularizer/Sum_1Sum1Embedding_State/embeddings/Regularizer/Square:y:07Embedding_State/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_State/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: |
IdentityIdentity-concatted_clustering/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
m
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3689539

inputs
identityS
concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B :S
concat/concatIdentityinputs*
T0*'
_output_shapes
:?????????^
IdentityIdentityconcat/concat:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
>__inference_model_feature_representation_layer_call_fn_3689706
inputs_state
unknown:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_stateunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *b
f]R[
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3689557o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????
&
_user_specified_nameinputs/State
?
`
D__inference_flatten_layer_call_and_return_conditional_losses_3689829

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"????   \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:?????????X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?$
?
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3689651
input_state)
embedding_state_3689630:
identity??'Embedding_State/StatefulPartitionedCall?9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinput_stateembedding_state_3689630*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3689521?
flatten/PartitionedCallPartitionedCall0Embedding_State/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3689531?
$concatted_clustering/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3689539q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_3689630*
_output_shapes

:*
dtype0?
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_State/embeddings/Regularizer/SumSum.Embedding_State/embeddings/Regularizer/Abs:y:07Embedding_State/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_3689630*
_output_shapes

:*
dtype0?
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_State/embeddings/Regularizer/Sum_1Sum1Embedding_State/embeddings/Regularizer/Square:y:07Embedding_State/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_State/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: |
IdentityIdentity-concatted_clustering/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp:T P
'
_output_shapes
:?????????
%
_user_specified_nameinput_State
?&
?
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3689742
inputs_state:
(embedding_state_embedding_lookup_3689717:
identity?? Embedding_State/embedding_lookup?9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpk
Embedding_State/CastCastinputs_state*

DstT0*

SrcT0*'
_output_shapes
:??????????
 Embedding_State/embedding_lookupResourceGather(embedding_state_embedding_lookup_3689717Embedding_State/Cast:y:0*
Tindices0*;
_class1
/-loc:@Embedding_State/embedding_lookup/3689717*+
_output_shapes
:?????????*
dtype0?
)Embedding_State/embedding_lookup/IdentityIdentity)Embedding_State/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Embedding_State/embedding_lookup/3689717*+
_output_shapes
:??????????
+Embedding_State/embedding_lookup/Identity_1Identity2Embedding_State/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:?????????^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   ?
flatten/ReshapeReshape4Embedding_State/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:?????????h
&concatted_clustering/concat/concat_dimConst*
_output_shapes
: *
dtype0*
value	B :z
"concatted_clustering/concat/concatIdentityflatten/Reshape:output:0*
T0*'
_output_shapes
:?????????q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_3689717*
_output_shapes

:*
dtype0?
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_State/embeddings/Regularizer/SumSum.Embedding_State/embeddings/Regularizer/Abs:y:07Embedding_State/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_3689717*
_output_shapes

:*
dtype0?
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_State/embeddings/Regularizer/Sum_1Sum1Embedding_State/embeddings/Regularizer/Square:y:07Embedding_State/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_State/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: z
IdentityIdentity+concatted_clustering/concat/concat:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp!^Embedding_State/embedding_lookup:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2D
 Embedding_State/embedding_lookup Embedding_State/embedding_lookup2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp:U Q
'
_output_shapes
:?????????
&
_user_specified_nameinputs/State
?
?
 __inference__traced_save_3689886
file_prefix9
5savev2_embedding_state_embeddings_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*m
valuedBbB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHq
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:05savev2_embedding_state_embeddings_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*!
_input_shapes
: :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

::

_output_shapes
: 
?
?
>__inference_model_feature_representation_layer_call_fn_3689627
input_state
unknown:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_stateunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *b
f]R[
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3689615o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:?????????
%
_user_specified_nameinput_State
?
~
%__inference_signature_wrapper_3689699
input_state
unknown:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_stateunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_3689489o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:?????????
%
_user_specified_nameinput_State
?
T
6__inference_concatted_clustering_layer_call_fn_3689834
inputs_0
identity?
PartitionedCallPartitionedCallinputs_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3689539`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0
?

?
#__inference__traced_restore_3689899
file_prefix=
+assignvariableop_embedding_state_embeddings:

identity_2??AssignVariableOp?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*m
valuedBbB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHt
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes

::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp+assignvariableop_embedding_state_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 m

Identity_1Identityfile_prefix^AssignVariableOp^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_2IdentityIdentity_1:output:0^NoOp_1*
T0*
_output_shapes
: [
NoOp_1NoOp^AssignVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_2Identity_2:output:0*
_input_shapes
: : 2$
AssignVariableOpAssignVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?$
?
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3689675
input_state)
embedding_state_3689654:
identity??'Embedding_State/StatefulPartitionedCall?9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp?<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp?
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinput_stateembedding_state_3689654*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3689521?
flatten/PartitionedCallPartitionedCall0Embedding_State/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3689531?
$concatted_clustering/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *Z
fURS
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3689539q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_3689654*
_output_shapes

:*
dtype0?
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ?
*Embedding_State/embeddings/Regularizer/SumSum.Embedding_State/embeddings/Regularizer/Abs:y:07Embedding_State/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_State/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ?
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ?
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_3689654*
_output_shapes

:*
dtype0?
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ?
,Embedding_State/embeddings/Regularizer/Sum_1Sum1Embedding_State/embeddings/Regularizer/Square:y:07Embedding_State/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_State/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ?
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: |
IdentityIdentity-concatted_clustering/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp:T P
'
_output_shapes
:?????????
%
_user_specified_nameinput_State"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
C
input_State4
serving_default_input_State:0?????????H
concatted_clustering0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?H
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer-3
	variables
trainable_variables
regularization_losses
	keras_api
	
signatures
+__call__
*,&call_and_return_all_conditional_losses
-_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
?


embeddings
	variables
trainable_variables
regularization_losses
	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
'

0"
trackable_list_wrapper
'

0"
trackable_list_wrapper
'
40"
trackable_list_wrapper
?
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
+__call__
-_default_save_signature
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
,
5serving_default"
signature_map
,:*2Embedding_State/embeddings
'

0"
trackable_list_wrapper
'

0"
trackable_list_wrapper
'
40"
trackable_list_wrapper
?
non_trainable_variables

layers
metrics
layer_regularization_losses
 layer_metrics
	variables
trainable_variables
regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
!non_trainable_variables

"layers
#metrics
$layer_regularization_losses
%layer_metrics
	variables
trainable_variables
regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
40"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?2?
>__inference_model_feature_representation_layer_call_fn_3689562
>__inference_model_feature_representation_layer_call_fn_3689706
>__inference_model_feature_representation_layer_call_fn_3689713
>__inference_model_feature_representation_layer_call_fn_3689627?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3689742
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3689771
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3689651
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3689675?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
"__inference__wrapped_model_3689489input_State"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
1__inference_Embedding_State_layer_call_fn_3689793?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3689818?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
)__inference_flatten_layer_call_fn_3689823?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
D__inference_flatten_layer_call_and_return_conditional_losses_3689829?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
6__inference_concatted_clustering_layer_call_fn_3689834?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3689840?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_3689860?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?B?
%__inference_signature_wrapper_3689699input_State"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3689818_
/?,
%?"
 ?
inputs?????????
? ")?&
?
0?????????
? ?
1__inference_Embedding_State_layer_call_fn_3689793R
/?,
%?"
 ?
inputs?????????
? "???????????
"__inference__wrapped_model_3689489?
B??
8?5
3?0
.
State%?"
input_State?????????
? "K?H
F
concatted_clustering.?+
concatted_clustering??????????
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3689840_6?3
,?)
'?$
"?
inputs/0?????????
? "%?"
?
0?????????
? ?
6__inference_concatted_clustering_layer_call_fn_3689834R6?3
,?)
'?$
"?
inputs/0?????????
? "???????????
D__inference_flatten_layer_call_and_return_conditional_losses_3689829\3?0
)?&
$?!
inputs?????????
? "%?"
?
0?????????
? |
)__inference_flatten_layer_call_fn_3689823O3?0
)?&
$?!
inputs?????????
? "??????????<
__inference_loss_fn_0_3689860
?

? 
? "? ?
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3689651v
J?G
@?=
3?0
.
State%?"
input_State?????????
p 

 
? "%?"
?
0?????????
? ?
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3689675v
J?G
@?=
3?0
.
State%?"
input_State?????????
p

 
? "%?"
?
0?????????
? ?
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3689742w
K?H
A?>
4?1
/
State&?#
inputs/State?????????
p 

 
? "%?"
?
0?????????
? ?
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3689771w
K?H
A?>
4?1
/
State&?#
inputs/State?????????
p

 
? "%?"
?
0?????????
? ?
>__inference_model_feature_representation_layer_call_fn_3689562i
J?G
@?=
3?0
.
State%?"
input_State?????????
p 

 
? "???????????
>__inference_model_feature_representation_layer_call_fn_3689627i
J?G
@?=
3?0
.
State%?"
input_State?????????
p

 
? "???????????
>__inference_model_feature_representation_layer_call_fn_3689706j
K?H
A?>
4?1
/
State&?#
inputs/State?????????
p 

 
? "???????????
>__inference_model_feature_representation_layer_call_fn_3689713j
K?H
A?>
4?1
/
State&?#
inputs/State?????????
p

 
? "???????????
%__inference_signature_wrapper_3689699?
C?@
? 
9?6
4
input_State%?"
input_State?????????"K?H
F
concatted_clustering.?+
concatted_clustering?????????