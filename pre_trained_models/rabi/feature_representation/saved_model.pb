═┴
║І
B
AssignVariableOp
resource
value"dtype"
dtypetypeѕ
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
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
delete_old_dirsbool(ѕ
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
dtypetypeѕ
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
Ц
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	ѕ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0ѕ
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
┴
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
executor_typestring ѕе
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
ќ
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ѕ"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28яЂ
љ
Embedding_State/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_nameEmbedding_State/embeddings
Ѕ
.Embedding_State/embeddings/Read/ReadVariableOpReadVariableOpEmbedding_State/embeddings*
_output_shapes

:*
dtype0
Ќ
Embedding_District/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Р*.
shared_nameEmbedding_District/embeddings
љ
1Embedding_District/embeddings/Read/ReadVariableOpReadVariableOpEmbedding_District/embeddings*
_output_shapes
:	Р*
dtype0
Ъ
!Embedding_Sub_District/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	З&*2
shared_name#!Embedding_Sub_District/embeddings
ў
5Embedding_Sub_District/embeddings/Read/ReadVariableOpReadVariableOp!Embedding_Sub_District/embeddings*
_output_shapes
:	З&*
dtype0
Љ
Embedding_Block/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	зC*+
shared_nameEmbedding_Block/embeddings
і
.Embedding_Block/embeddings/Read/ReadVariableOpReadVariableOpEmbedding_Block/embeddings*
_output_shapes
:	зC*
dtype0

NoOpNoOp
ў
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*М
value╔Bк B┐
Ш
layer-0
layer-1
layer-2
layer-3
layer_with_weights-0
layer-4
layer_with_weights-1
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
	variables
trainable_variables
regularization_losses
	keras_api

signatures
 
 
 
 
b

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
b

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
b

embeddings
	variables
trainable_variables
 regularization_losses
!	keras_api
b
"
embeddings
#	variables
$trainable_variables
%regularization_losses
&	keras_api
R
'	variables
(trainable_variables
)regularization_losses
*	keras_api
R
+	variables
,trainable_variables
-regularization_losses
.	keras_api
R
/	variables
0trainable_variables
1regularization_losses
2	keras_api
R
3	variables
4trainable_variables
5regularization_losses
6	keras_api
R
7	variables
8trainable_variables
9regularization_losses
:	keras_api

0
1
2
"3

0
1
2
"3
 
Г
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
 
jh
VARIABLE_VALUEEmbedding_State/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
Г
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
mk
VARIABLE_VALUEEmbedding_District/embeddings:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
Г
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
qo
VARIABLE_VALUE!Embedding_Sub_District/embeddings:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0

0
 
Г
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
 regularization_losses
jh
VARIABLE_VALUEEmbedding_Block/embeddings:layer_with_weights-3/embeddings/.ATTRIBUTES/VARIABLE_VALUE

"0

"0
 
Г
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
#	variables
$trainable_variables
%regularization_losses
 
 
 
Г
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
'	variables
(trainable_variables
)regularization_losses
 
 
 
Г
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
+	variables
,trainable_variables
-regularization_losses
 
 
 
Г
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
/	variables
0trainable_variables
1regularization_losses
 
 
 
Г
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
3	variables
4trainable_variables
5regularization_losses
 
 
 
Г
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
7	variables
8trainable_variables
9regularization_losses
 
^
0
1
2
3
4
5
6
7
	8

9
10
11
12
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
serving_default_input_BlockPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
Ђ
serving_default_input_DistrictPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
~
serving_default_input_StatePlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
Ё
"serving_default_input_Sub_DistrictPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
а
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_Blockserving_default_input_Districtserving_default_input_State"serving_default_input_Sub_DistrictEmbedding_Block/embeddings!Embedding_Sub_District/embeddingsEmbedding_District/embeddingsEmbedding_State/embeddings*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *.
f)R'
%__inference_signature_wrapper_3028555
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ь
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename.Embedding_State/embeddings/Read/ReadVariableOp1Embedding_District/embeddings/Read/ReadVariableOp5Embedding_Sub_District/embeddings/Read/ReadVariableOp.Embedding_Block/embeddings/Read/ReadVariableOpConst*
Tin

2*
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
GPU2*0J 8ѓ *)
f$R"
 __inference__traced_save_3029156
ў
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameEmbedding_State/embeddingsEmbedding_District/embeddings!Embedding_Sub_District/embeddingsEmbedding_Block/embeddings*
Tin	
2*
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
GPU2*0J 8ѓ *,
f'R%
#__inference__traced_restore_3029178ш╔
х
Ё
1__inference_Embedding_State_layer_call_fn_3028811

inputs
unknown:
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3027993s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Й
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_3028011

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Ђ"
╗
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_3027935

inputs+
embedding_lookup_3027914:	З&
identityѕб@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpбCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         й
embedding_lookupResourceGatherembedding_lookup_3027914Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3027914*+
_output_shapes
:         *
dtype0Б
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3027914*+
_output_shapes
:         Ђ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    џ
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_3027914*
_output_shapes
:	З&*
dtype0г
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	З&є
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       л
1Embedding_Sub_District/embeddings/Regularizer/SumSum5Embedding_Sub_District/embeddings/Regularizer/Abs:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<М
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: л
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Ю
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_3027914*
_output_shapes
:	З&*
dtype0х
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	З&є
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       Н
3Embedding_Sub_District/embeddings/Regularizer/Sum_1Sum8Embedding_Sub_District/embeddings/Regularizer/Square:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: z
5Embedding_Sub_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<┘
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ═
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         Р
NoOpNoOpA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2ё
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2і
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
дє
Ї
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028282

inputs
inputs_1
inputs_2
inputs_3*
embedding_block_3028204:	зC1
embedding_sub_district_3028207:	З&-
embedding_district_3028210:	Р)
embedding_state_3028213:
identityѕб'Embedding_Block/StatefulPartitionedCallб9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpб<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpб*Embedding_District/StatefulPartitionedCallб<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpб?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpб'Embedding_State/StatefulPartitionedCallб9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpб<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpб.Embedding_Sub_District/StatefulPartitionedCallб@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpбCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpч
'Embedding_Block/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_block_3028204*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_3027906њ
.Embedding_Sub_District/StatefulPartitionedCallStatefulPartitionedCallinputs_3embedding_sub_district_3028207*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_3027935є
*Embedding_District/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_district_3028210*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_Embedding_District_layer_call_and_return_conditional_losses_3027964§
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinputs_2embedding_state_3028213*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3027993С
flatten/PartitionedCallPartitionedCall0Embedding_State/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3028003в
flatten_1/PartitionedCallPartitionedCall3Embedding_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_3028011№
flatten_2/PartitionedCallPartitionedCall7Embedding_Sub_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3028019У
flatten_3/PartitionedCallPartitionedCall0Embedding_Block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_3028027П
$concatted_clustering/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Z
fURS
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3028038q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_3028213*
_output_shapes

:*
dtype0Ю
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╗
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
О#<Й
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ╗
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ћ
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_3028213*
_output_shapes

:*
dtype0д
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       └
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
О#<─
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: И
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ў
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_district_3028210*
_output_shapes
:	Р*
dtype0ц
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	Рѓ
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ─
-Embedding_District/embeddings/Regularizer/SumSum1Embedding_District/embeddings/Regularizer/Abs:y:0:Embedding_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<К
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ─
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Џ
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_district_3028210*
_output_shapes
:	Р*
dtype0Г
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	Рѓ
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ╔
/Embedding_District/embeddings/Regularizer/Sum_1Sum4Embedding_District/embeddings/Regularizer/Square:y:0:Embedding_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: v
1Embedding_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<═
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ┴
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    а
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_sub_district_3028207*
_output_shapes
:	З&*
dtype0г
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	З&є
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       л
1Embedding_Sub_District/embeddings/Regularizer/SumSum5Embedding_Sub_District/embeddings/Regularizer/Abs:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<М
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: л
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Б
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_sub_district_3028207*
_output_shapes
:	З&*
dtype0х
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	З&є
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       Н
3Embedding_Sub_District/embeddings/Regularizer/Sum_1Sum8Embedding_Sub_District/embeddings/Regularizer/Square:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: z
5Embedding_Sub_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<┘
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ═
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    њ
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_block_3028204*
_output_shapes
:	зC*
dtype0ъ
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	зC
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╗
*Embedding_Block/embeddings/Regularizer/SumSum.Embedding_Block/embeddings/Regularizer/Abs:y:07Embedding_Block/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Й
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ╗
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Ћ
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_block_3028204*
_output_shapes
:	зC*
dtype0Д
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	зC
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       └
,Embedding_Block/embeddings/Regularizer/Sum_1Sum1Embedding_Block/embeddings/Regularizer/Square:y:07Embedding_Block/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_Block/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<─
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: И
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: |
IdentityIdentity-concatted_clustering/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         PЭ
NoOpNoOp(^Embedding_Block/StatefulPartitionedCall:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp+^Embedding_District/StatefulPartitionedCall=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp/^Embedding_Sub_District/StatefulPartitionedCallA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:         :         :         :         : : : : 2R
'Embedding_Block/StatefulPartitionedCall'Embedding_Block/StatefulPartitionedCall2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2X
*Embedding_District/StatefulPartitionedCall*Embedding_District/StatefulPartitionedCall2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2ѓ
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2`
.Embedding_Sub_District/StatefulPartitionedCall.Embedding_Sub_District/StatefulPartitionedCall2ё
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2і
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
├
Ћ
%__inference_signature_wrapper_3028555
input_block
input_district
input_state
input_sub_district
unknown:	зC
	unknown_0:	З&
	unknown_1:	Р
	unknown_2:
identityѕбStatefulPartitionedCallЇ
StatefulPartitionedCallStatefulPartitionedCallinput_blockinput_districtinput_stateinput_sub_districtunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *+
f&R$
"__inference__wrapped_model_3027868o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:         :         :         :         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:         
%
_user_specified_nameinput_Block:WS
'
_output_shapes
:         
(
_user_specified_nameinput_District:TP
'
_output_shapes
:         
%
_user_specified_nameinput_State:[W
'
_output_shapes
:         
,
_user_specified_nameinput_Sub_District
з
д
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_3027906

inputs+
embedding_lookup_3027885:	зC
identityѕб9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpб<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         й
embedding_lookupResourceGatherembedding_lookup_3027885Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3027885*+
_output_shapes
:         *
dtype0Б
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3027885*+
_output_shapes
:         Ђ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Њ
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_3027885*
_output_shapes
:	зC*
dtype0ъ
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	зC
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╗
*Embedding_Block/embeddings/Regularizer/SumSum.Embedding_Block/embeddings/Regularizer/Abs:y:07Embedding_Block/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Й
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ╗
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ќ
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_3027885*
_output_shapes
:	зC*
dtype0Д
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	зC
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       └
,Embedding_Block/embeddings/Regularizer/Sum_1Sum1Embedding_Block/embeddings/Regularizer/Square:y:07Embedding_Block/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_Block/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<─
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: И
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         н
NoOpNoOp:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Й
b
F__inference_flatten_3_layer_call_and_return_conditional_losses_3028027

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
е
E
)__inference_flatten_layer_call_fn_3028982

inputs
identity▓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3028003`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╝
`
D__inference_flatten_layer_call_and_return_conditional_losses_3028988

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╝
Ќ
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3028038

inputs
inputs_1
inputs_2
inputs_3
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ѕ
concatConcatV2inputsinputs_1inputs_2inputs_3concat/axis:output:0*
N*
T0*'
_output_shapes
:         PW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:         P"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:         :         :         :         :O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
Њ
«
>__inference_model_feature_representation_layer_call_fn_3028112
input_block
input_district
input_state
input_sub_district
unknown:	зC
	unknown_0:	З&
	unknown_1:	Р
	unknown_2:
identityѕбStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallinput_blockinput_districtinput_stateinput_sub_districtunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *b
f]R[
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028101o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:         :         :         :         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:         
%
_user_specified_nameinput_Block:WS
'
_output_shapes
:         
(
_user_specified_nameinput_District:TP
'
_output_shapes
:         
%
_user_specified_nameinput_State:[W
'
_output_shapes
:         
,
_user_specified_nameinput_Sub_District
ЮЈ
┘
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028688
inputs_0_block
inputs_0_district
inputs_0_state
inputs_0_sub_district;
(embedding_block_embedding_lookup_3028594:	зCB
/embedding_sub_district_embedding_lookup_3028600:	З&>
+embedding_district_embedding_lookup_3028606:	Р:
(embedding_state_embedding_lookup_3028612:
identityѕб Embedding_Block/embedding_lookupб9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpб<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpб#Embedding_District/embedding_lookupб<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpб?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpб Embedding_State/embedding_lookupб9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpб<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpб'Embedding_Sub_District/embedding_lookupб@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpбCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpm
Embedding_Block/CastCastinputs_0_block*

DstT0*

SrcT0*'
_output_shapes
:         §
 Embedding_Block/embedding_lookupResourceGather(embedding_block_embedding_lookup_3028594Embedding_Block/Cast:y:0*
Tindices0*;
_class1
/-loc:@Embedding_Block/embedding_lookup/3028594*+
_output_shapes
:         *
dtype0М
)Embedding_Block/embedding_lookup/IdentityIdentity)Embedding_Block/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Embedding_Block/embedding_lookup/3028594*+
_output_shapes
:         А
+Embedding_Block/embedding_lookup/Identity_1Identity2Embedding_Block/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         {
Embedding_Sub_District/CastCastinputs_0_sub_district*

DstT0*

SrcT0*'
_output_shapes
:         Ў
'Embedding_Sub_District/embedding_lookupResourceGather/embedding_sub_district_embedding_lookup_3028600Embedding_Sub_District/Cast:y:0*
Tindices0*B
_class8
64loc:@Embedding_Sub_District/embedding_lookup/3028600*+
_output_shapes
:         *
dtype0У
0Embedding_Sub_District/embedding_lookup/IdentityIdentity0Embedding_Sub_District/embedding_lookup:output:0*
T0*B
_class8
64loc:@Embedding_Sub_District/embedding_lookup/3028600*+
_output_shapes
:         »
2Embedding_Sub_District/embedding_lookup/Identity_1Identity9Embedding_Sub_District/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         s
Embedding_District/CastCastinputs_0_district*

DstT0*

SrcT0*'
_output_shapes
:         Ѕ
#Embedding_District/embedding_lookupResourceGather+embedding_district_embedding_lookup_3028606Embedding_District/Cast:y:0*
Tindices0*>
_class4
20loc:@Embedding_District/embedding_lookup/3028606*+
_output_shapes
:         *
dtype0▄
,Embedding_District/embedding_lookup/IdentityIdentity,Embedding_District/embedding_lookup:output:0*
T0*>
_class4
20loc:@Embedding_District/embedding_lookup/3028606*+
_output_shapes
:         Д
.Embedding_District/embedding_lookup/Identity_1Identity5Embedding_District/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         m
Embedding_State/CastCastinputs_0_state*

DstT0*

SrcT0*'
_output_shapes
:         §
 Embedding_State/embedding_lookupResourceGather(embedding_state_embedding_lookup_3028612Embedding_State/Cast:y:0*
Tindices0*;
_class1
/-loc:@Embedding_State/embedding_lookup/3028612*+
_output_shapes
:         *
dtype0М
)Embedding_State/embedding_lookup/IdentityIdentity)Embedding_State/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Embedding_State/embedding_lookup/3028612*+
_output_shapes
:         А
+Embedding_State/embedding_lookup/Identity_1Identity2Embedding_State/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       џ
flatten/ReshapeReshape4Embedding_State/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:         `
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
flatten_1/ReshapeReshape7Embedding_District/embedding_lookup/Identity_1:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:         `
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ц
flatten_2/ReshapeReshape;Embedding_Sub_District/embedding_lookup/Identity_1:output:0flatten_2/Const:output:0*
T0*'
_output_shapes
:         `
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ъ
flatten_3/ReshapeReshape4Embedding_Block/embedding_lookup/Identity_1:output:0flatten_3/Const:output:0*
T0*'
_output_shapes
:         b
 concatted_clustering/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ч
concatted_clustering/concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0flatten_2/Reshape:output:0flatten_3/Reshape:output:0)concatted_clustering/concat/axis:output:0*
N*
T0*'
_output_shapes
:         Pq
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    б
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_3028612*
_output_shapes

:*
dtype0Ю
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╗
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
О#<Й
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ╗
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Ц
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_3028612*
_output_shapes

:*
dtype0д
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       └
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
О#<─
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: И
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp+embedding_district_embedding_lookup_3028606*
_output_shapes
:	Р*
dtype0ц
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	Рѓ
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ─
-Embedding_District/embeddings/Regularizer/SumSum1Embedding_District/embeddings/Regularizer/Abs:y:0:Embedding_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<К
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ─
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: г
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp+embedding_district_embedding_lookup_3028606*
_output_shapes
:	Р*
dtype0Г
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	Рѓ
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ╔
/Embedding_District/embeddings/Regularizer/Sum_1Sum4Embedding_District/embeddings/Regularizer/Square:y:0:Embedding_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: v
1Embedding_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<═
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ┴
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp/embedding_sub_district_embedding_lookup_3028600*
_output_shapes
:	З&*
dtype0г
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	З&є
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       л
1Embedding_Sub_District/embeddings/Regularizer/SumSum5Embedding_Sub_District/embeddings/Regularizer/Abs:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<М
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: л
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ┤
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp/embedding_sub_district_embedding_lookup_3028600*
_output_shapes
:	З&*
dtype0х
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	З&є
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       Н
3Embedding_Sub_District/embeddings/Regularizer/Sum_1Sum8Embedding_Sub_District/embeddings/Regularizer/Square:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: z
5Embedding_Sub_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<┘
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ═
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp(embedding_block_embedding_lookup_3028594*
_output_shapes
:	зC*
dtype0ъ
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	зC
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╗
*Embedding_Block/embeddings/Regularizer/SumSum.Embedding_Block/embeddings/Regularizer/Abs:y:07Embedding_Block/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Й
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ╗
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: д
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_block_embedding_lookup_3028594*
_output_shapes
:	зC*
dtype0Д
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	зC
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       └
,Embedding_Block/embeddings/Regularizer/Sum_1Sum1Embedding_Block/embeddings/Regularizer/Square:y:07Embedding_Block/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_Block/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<─
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: И
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: s
IdentityIdentity$concatted_clustering/concat:output:0^NoOp*
T0*'
_output_shapes
:         P▄
NoOpNoOp!^Embedding_Block/embedding_lookup:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp$^Embedding_District/embedding_lookup=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp!^Embedding_State/embedding_lookup:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_Sub_District/embedding_lookupA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:         :         :         :         : : : : 2D
 Embedding_Block/embedding_lookup Embedding_Block/embedding_lookup2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2J
#Embedding_District/embedding_lookup#Embedding_District/embedding_lookup2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2ѓ
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2D
 Embedding_State/embedding_lookup Embedding_State/embedding_lookup2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_Sub_District/embedding_lookup'Embedding_Sub_District/embedding_lookup2ё
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2і
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:W S
'
_output_shapes
:         
(
_user_specified_nameinputs/0/Block:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/0/District:WS
'
_output_shapes
:         
(
_user_specified_nameinputs/0/State:^Z
'
_output_shapes
:         
/
_user_specified_nameinputs/0/Sub_District
Зє
Ц
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028477
input_block
input_district
input_state
input_sub_district*
embedding_block_3028399:	зC1
embedding_sub_district_3028402:	З&-
embedding_district_3028405:	Р)
embedding_state_3028408:
identityѕб'Embedding_Block/StatefulPartitionedCallб9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpб<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpб*Embedding_District/StatefulPartitionedCallб<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpб?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpб'Embedding_State/StatefulPartitionedCallб9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpб<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpб.Embedding_Sub_District/StatefulPartitionedCallб@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpбCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpђ
'Embedding_Block/StatefulPartitionedCallStatefulPartitionedCallinput_blockembedding_block_3028399*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_3027906ю
.Embedding_Sub_District/StatefulPartitionedCallStatefulPartitionedCallinput_sub_districtembedding_sub_district_3028402*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_3027935ї
*Embedding_District/StatefulPartitionedCallStatefulPartitionedCallinput_districtembedding_district_3028405*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_Embedding_District_layer_call_and_return_conditional_losses_3027964ђ
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinput_stateembedding_state_3028408*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3027993С
flatten/PartitionedCallPartitionedCall0Embedding_State/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3028003в
flatten_1/PartitionedCallPartitionedCall3Embedding_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_3028011№
flatten_2/PartitionedCallPartitionedCall7Embedding_Sub_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3028019У
flatten_3/PartitionedCallPartitionedCall0Embedding_Block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_3028027П
$concatted_clustering/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Z
fURS
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3028038q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_3028408*
_output_shapes

:*
dtype0Ю
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╗
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
О#<Й
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ╗
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ћ
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_3028408*
_output_shapes

:*
dtype0д
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       └
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
О#<─
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: И
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ў
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_district_3028405*
_output_shapes
:	Р*
dtype0ц
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	Рѓ
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ─
-Embedding_District/embeddings/Regularizer/SumSum1Embedding_District/embeddings/Regularizer/Abs:y:0:Embedding_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<К
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ─
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Џ
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_district_3028405*
_output_shapes
:	Р*
dtype0Г
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	Рѓ
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ╔
/Embedding_District/embeddings/Regularizer/Sum_1Sum4Embedding_District/embeddings/Regularizer/Square:y:0:Embedding_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: v
1Embedding_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<═
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ┴
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    а
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_sub_district_3028402*
_output_shapes
:	З&*
dtype0г
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	З&є
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       л
1Embedding_Sub_District/embeddings/Regularizer/SumSum5Embedding_Sub_District/embeddings/Regularizer/Abs:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<М
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: л
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Б
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_sub_district_3028402*
_output_shapes
:	З&*
dtype0х
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	З&є
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       Н
3Embedding_Sub_District/embeddings/Regularizer/Sum_1Sum8Embedding_Sub_District/embeddings/Regularizer/Square:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: z
5Embedding_Sub_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<┘
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ═
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    њ
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_block_3028399*
_output_shapes
:	зC*
dtype0ъ
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	зC
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╗
*Embedding_Block/embeddings/Regularizer/SumSum.Embedding_Block/embeddings/Regularizer/Abs:y:07Embedding_Block/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Й
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ╗
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Ћ
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_block_3028399*
_output_shapes
:	зC*
dtype0Д
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	зC
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       └
,Embedding_Block/embeddings/Regularizer/Sum_1Sum1Embedding_Block/embeddings/Regularizer/Square:y:07Embedding_Block/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_Block/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<─
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: И
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: |
IdentityIdentity-concatted_clustering/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         PЭ
NoOpNoOp(^Embedding_Block/StatefulPartitionedCall:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp+^Embedding_District/StatefulPartitionedCall=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp/^Embedding_Sub_District/StatefulPartitionedCallA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:         :         :         :         : : : : 2R
'Embedding_Block/StatefulPartitionedCall'Embedding_Block/StatefulPartitionedCall2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2X
*Embedding_District/StatefulPartitionedCall*Embedding_District/StatefulPartitionedCall2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2ѓ
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2`
.Embedding_Sub_District/StatefulPartitionedCall.Embedding_Sub_District/StatefulPartitionedCall2ё
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2і
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:T P
'
_output_shapes
:         
%
_user_specified_nameinput_Block:WS
'
_output_shapes
:         
(
_user_specified_nameinput_District:TP
'
_output_shapes
:         
%
_user_specified_nameinput_State:[W
'
_output_shapes
:         
,
_user_specified_nameinput_Sub_District
Й
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_3029010

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
╝
`
D__inference_flatten_layer_call_and_return_conditional_losses_3028003

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
─
Ї
8__inference_Embedding_Sub_District_layer_call_fn_3028905

inputs
unknown:	З&
identityѕбStatefulPartitionedCallР
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_3027935s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ђ"
╗
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_3028930

inputs+
embedding_lookup_3028909:	З&
identityѕб@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpбCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         й
embedding_lookupResourceGatherembedding_lookup_3028909Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3028909*+
_output_shapes
:         *
dtype0Б
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3028909*+
_output_shapes
:         Ђ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    џ
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_3028909*
_output_shapes
:	З&*
dtype0г
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	З&є
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       л
1Embedding_Sub_District/embeddings/Regularizer/SumSum5Embedding_Sub_District/embeddings/Regularizer/Abs:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<М
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: л
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Ю
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_3028909*
_output_shapes
:	З&*
dtype0х
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	З&є
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       Н
3Embedding_Sub_District/embeddings/Regularizer/Sum_1Sum8Embedding_Sub_District/embeddings/Regularizer/Square:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: z
5Embedding_Sub_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<┘
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ═
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         Р
NoOpNoOpA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2ё
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2і
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
У 
»
O__inference_Embedding_District_layer_call_and_return_conditional_losses_3028883

inputs+
embedding_lookup_3028862:	Р
identityѕб<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpб?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         й
embedding_lookupResourceGatherembedding_lookup_3028862Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3028862*+
_output_shapes
:         *
dtype0Б
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3028862*+
_output_shapes
:         Ђ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ќ
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_3028862*
_output_shapes
:	Р*
dtype0ц
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	Рѓ
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ─
-Embedding_District/embeddings/Regularizer/SumSum1Embedding_District/embeddings/Regularizer/Abs:y:0:Embedding_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<К
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ─
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Ў
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_3028862*
_output_shapes
:	Р*
dtype0Г
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	Рѓ
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ╔
/Embedding_District/embeddings/Regularizer/Sum_1Sum4Embedding_District/embeddings/Regularizer/Square:y:0:Embedding_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: v
1Embedding_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<═
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ┴
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         ┌
NoOpNoOp=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2ѓ
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Ь
Ц
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3028836

inputs*
embedding_lookup_3028815:
identityѕб9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpб<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         й
embedding_lookupResourceGatherembedding_lookup_3028815Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3028815*+
_output_shapes
:         *
dtype0Б
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3028815*+
_output_shapes
:         Ђ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    њ
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_3028815*
_output_shapes

:*
dtype0Ю
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╗
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
О#<Й
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ╗
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Ћ
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_3028815*
_output_shapes

:*
dtype0д
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       └
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
О#<─
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: И
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         н
NoOpNoOp:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
У 
»
O__inference_Embedding_District_layer_call_and_return_conditional_losses_3027964

inputs+
embedding_lookup_3027943:	Р
identityѕб<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpб?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         й
embedding_lookupResourceGatherembedding_lookup_3027943Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3027943*+
_output_shapes
:         *
dtype0Б
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3027943*+
_output_shapes
:         Ђ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ќ
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_3027943*
_output_shapes
:	Р*
dtype0ц
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	Рѓ
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ─
-Embedding_District/embeddings/Regularizer/SumSum1Embedding_District/embeddings/Regularizer/Abs:y:0:Embedding_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<К
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ─
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Ў
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_3027943*
_output_shapes
:	Р*
dtype0Г
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	Рѓ
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ╔
/Embedding_District/embeddings/Regularizer/Sum_1Sum4Embedding_District/embeddings/Regularizer/Square:y:0:Embedding_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: v
1Embedding_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<═
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ┴
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         ┌
NoOpNoOp=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2ѓ
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
г
G
+__inference_flatten_2_layer_call_fn_3029004

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3028019`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
г
G
+__inference_flatten_1_layer_call_fn_3028993

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_3028011`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Њ
«
>__inference_model_feature_representation_layer_call_fn_3028309
input_block
input_district
input_state
input_sub_district
unknown:	зC
	unknown_0:	З&
	unknown_1:	Р
	unknown_2:
identityѕбStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallinput_blockinput_districtinput_stateinput_sub_districtunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *b
f]R[
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028282o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:         :         :         :         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
'
_output_shapes
:         
%
_user_specified_nameinput_Block:WS
'
_output_shapes
:         
(
_user_specified_nameinput_District:TP
'
_output_shapes
:         
%
_user_specified_nameinput_State:[W
'
_output_shapes
:         
,
_user_specified_nameinput_Sub_District
Й
b
F__inference_flatten_3_layer_call_and_return_conditional_losses_3029021

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Х
є
1__inference_Embedding_Block_layer_call_fn_3028952

inputs
unknown:	зC
identityѕбStatefulPartitionedCall█
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_3027906s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
Й
b
F__inference_flatten_1_layer_call_and_return_conditional_losses_3028999

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
Й
b
F__inference_flatten_2_layer_call_and_return_conditional_losses_3028019

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"       \
ReshapeReshapeinputsConst:output:0*
T0*'
_output_shapes
:         X
IdentityIdentityReshape:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
и
║
>__inference_model_feature_representation_layer_call_fn_3028571
inputs_0_block
inputs_0_district
inputs_0_state
inputs_0_sub_district
unknown:	зC
	unknown_0:	З&
	unknown_1:	Р
	unknown_2:
identityѕбStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputs_0_blockinputs_0_districtinputs_0_stateinputs_0_sub_districtunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *b
f]R[
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028101o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:         :         :         :         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:         
(
_user_specified_nameinputs/0/Block:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/0/District:WS
'
_output_shapes
:         
(
_user_specified_nameinputs/0/State:^Z
'
_output_shapes
:         
/
_user_specified_nameinputs/0/Sub_District
г
G
+__inference_flatten_3_layer_call_fn_3029015

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_3028027`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         :S O
+
_output_shapes
:         
 
_user_specified_nameinputs
ЮЈ
┘
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028789
inputs_0_block
inputs_0_district
inputs_0_state
inputs_0_sub_district;
(embedding_block_embedding_lookup_3028695:	зCB
/embedding_sub_district_embedding_lookup_3028701:	З&>
+embedding_district_embedding_lookup_3028707:	Р:
(embedding_state_embedding_lookup_3028713:
identityѕб Embedding_Block/embedding_lookupб9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpб<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpб#Embedding_District/embedding_lookupб<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpб?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpб Embedding_State/embedding_lookupб9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpб<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpб'Embedding_Sub_District/embedding_lookupб@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpбCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpm
Embedding_Block/CastCastinputs_0_block*

DstT0*

SrcT0*'
_output_shapes
:         §
 Embedding_Block/embedding_lookupResourceGather(embedding_block_embedding_lookup_3028695Embedding_Block/Cast:y:0*
Tindices0*;
_class1
/-loc:@Embedding_Block/embedding_lookup/3028695*+
_output_shapes
:         *
dtype0М
)Embedding_Block/embedding_lookup/IdentityIdentity)Embedding_Block/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Embedding_Block/embedding_lookup/3028695*+
_output_shapes
:         А
+Embedding_Block/embedding_lookup/Identity_1Identity2Embedding_Block/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         {
Embedding_Sub_District/CastCastinputs_0_sub_district*

DstT0*

SrcT0*'
_output_shapes
:         Ў
'Embedding_Sub_District/embedding_lookupResourceGather/embedding_sub_district_embedding_lookup_3028701Embedding_Sub_District/Cast:y:0*
Tindices0*B
_class8
64loc:@Embedding_Sub_District/embedding_lookup/3028701*+
_output_shapes
:         *
dtype0У
0Embedding_Sub_District/embedding_lookup/IdentityIdentity0Embedding_Sub_District/embedding_lookup:output:0*
T0*B
_class8
64loc:@Embedding_Sub_District/embedding_lookup/3028701*+
_output_shapes
:         »
2Embedding_Sub_District/embedding_lookup/Identity_1Identity9Embedding_Sub_District/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         s
Embedding_District/CastCastinputs_0_district*

DstT0*

SrcT0*'
_output_shapes
:         Ѕ
#Embedding_District/embedding_lookupResourceGather+embedding_district_embedding_lookup_3028707Embedding_District/Cast:y:0*
Tindices0*>
_class4
20loc:@Embedding_District/embedding_lookup/3028707*+
_output_shapes
:         *
dtype0▄
,Embedding_District/embedding_lookup/IdentityIdentity,Embedding_District/embedding_lookup:output:0*
T0*>
_class4
20loc:@Embedding_District/embedding_lookup/3028707*+
_output_shapes
:         Д
.Embedding_District/embedding_lookup/Identity_1Identity5Embedding_District/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         m
Embedding_State/CastCastinputs_0_state*

DstT0*

SrcT0*'
_output_shapes
:         §
 Embedding_State/embedding_lookupResourceGather(embedding_state_embedding_lookup_3028713Embedding_State/Cast:y:0*
Tindices0*;
_class1
/-loc:@Embedding_State/embedding_lookup/3028713*+
_output_shapes
:         *
dtype0М
)Embedding_State/embedding_lookup/IdentityIdentity)Embedding_State/embedding_lookup:output:0*
T0*;
_class1
/-loc:@Embedding_State/embedding_lookup/3028713*+
_output_shapes
:         А
+Embedding_State/embedding_lookup/Identity_1Identity2Embedding_State/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         ^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       џ
flatten/ReshapeReshape4Embedding_State/embedding_lookup/Identity_1:output:0flatten/Const:output:0*
T0*'
_output_shapes
:         `
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       А
flatten_1/ReshapeReshape7Embedding_District/embedding_lookup/Identity_1:output:0flatten_1/Const:output:0*
T0*'
_output_shapes
:         `
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ц
flatten_2/ReshapeReshape;Embedding_Sub_District/embedding_lookup/Identity_1:output:0flatten_2/Const:output:0*
T0*'
_output_shapes
:         `
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ъ
flatten_3/ReshapeReshape4Embedding_Block/embedding_lookup/Identity_1:output:0flatten_3/Const:output:0*
T0*'
_output_shapes
:         b
 concatted_clustering/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ч
concatted_clustering/concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0flatten_2/Reshape:output:0flatten_3/Reshape:output:0)concatted_clustering/concat/axis:output:0*
N*
T0*'
_output_shapes
:         Pq
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    б
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_3028713*
_output_shapes

:*
dtype0Ю
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╗
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
О#<Й
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ╗
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Ц
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_state_embedding_lookup_3028713*
_output_shapes

:*
dtype0д
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       └
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
О#<─
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: И
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp+embedding_district_embedding_lookup_3028707*
_output_shapes
:	Р*
dtype0ц
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	Рѓ
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ─
-Embedding_District/embeddings/Regularizer/SumSum1Embedding_District/embeddings/Regularizer/Abs:y:0:Embedding_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<К
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ─
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: г
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp+embedding_district_embedding_lookup_3028707*
_output_shapes
:	Р*
dtype0Г
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	Рѓ
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ╔
/Embedding_District/embeddings/Regularizer/Sum_1Sum4Embedding_District/embeddings/Regularizer/Square:y:0:Embedding_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: v
1Embedding_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<═
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ┴
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ▒
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp/embedding_sub_district_embedding_lookup_3028701*
_output_shapes
:	З&*
dtype0г
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	З&є
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       л
1Embedding_Sub_District/embeddings/Regularizer/SumSum5Embedding_Sub_District/embeddings/Regularizer/Abs:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<М
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: л
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ┤
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp/embedding_sub_district_embedding_lookup_3028701*
_output_shapes
:	З&*
dtype0х
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	З&є
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       Н
3Embedding_Sub_District/embeddings/Regularizer/Sum_1Sum8Embedding_Sub_District/embeddings/Regularizer/Square:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: z
5Embedding_Sub_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<┘
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ═
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Б
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOp(embedding_block_embedding_lookup_3028695*
_output_shapes
:	зC*
dtype0ъ
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	зC
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╗
*Embedding_Block/embeddings/Regularizer/SumSum.Embedding_Block/embeddings/Regularizer/Abs:y:07Embedding_Block/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Й
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ╗
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: д
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOp(embedding_block_embedding_lookup_3028695*
_output_shapes
:	зC*
dtype0Д
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	зC
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       └
,Embedding_Block/embeddings/Regularizer/Sum_1Sum1Embedding_Block/embeddings/Regularizer/Square:y:07Embedding_Block/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_Block/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<─
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: И
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: s
IdentityIdentity$concatted_clustering/concat:output:0^NoOp*
T0*'
_output_shapes
:         P▄
NoOpNoOp!^Embedding_Block/embedding_lookup:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp$^Embedding_District/embedding_lookup=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp!^Embedding_State/embedding_lookup:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_Sub_District/embedding_lookupA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:         :         :         :         : : : : 2D
 Embedding_Block/embedding_lookup Embedding_Block/embedding_lookup2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2J
#Embedding_District/embedding_lookup#Embedding_District/embedding_lookup2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2ѓ
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2D
 Embedding_State/embedding_lookup Embedding_State/embedding_lookup2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_Sub_District/embedding_lookup'Embedding_Sub_District/embedding_lookup2ё
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2і
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:W S
'
_output_shapes
:         
(
_user_specified_nameinputs/0/Block:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/0/District:WS
'
_output_shapes
:         
(
_user_specified_nameinputs/0/State:^Z
'
_output_shapes
:         
/
_user_specified_nameinputs/0/Sub_District
╚
Ў
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3029038
inputs_0
inputs_1
inputs_2
inputs_3
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :І
concatConcatV2inputs_0inputs_1inputs_2inputs_3concat/axis:output:0*
N*
T0*'
_output_shapes
:         PW
IdentityIdentityconcat:output:0*
T0*'
_output_shapes
:         P"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:         :         :         :         :Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/3
и
Ђ
__inference_loss_fn_0_3029058T
Bembedding_state_embeddings_regularizer_abs_readvariableop_resource:
identityѕб9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpб<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpq
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ╝
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpBembedding_state_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0Ю
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╗
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
О#<Й
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ╗
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ┐
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpBembedding_state_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes

:*
dtype0д
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       └
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
О#<─
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: И
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: n
IdentityIdentity0Embedding_State/embeddings/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: ┴
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
й
~
6__inference_concatted_clustering_layer_call_fn_3029029
inputs_0
inputs_1
inputs_2
inputs_3
identityР
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Z
fURS
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3028038`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:         P"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L:         :         :         :         :Q M
'
_output_shapes
:         
"
_user_specified_name
inputs/0:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/1:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/2:QM
'
_output_shapes
:         
"
_user_specified_name
inputs/3
╝
ѓ
__inference_loss_fn_3_3029118U
Bembedding_block_embeddings_regularizer_abs_readvariableop_resource:	зC
identityѕб9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpб<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpq
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    й
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpBembedding_block_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes
:	зC*
dtype0ъ
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	зC
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╗
*Embedding_Block/embeddings/Regularizer/SumSum.Embedding_Block/embeddings/Regularizer/Abs:y:07Embedding_Block/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Й
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ╗
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: └
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpBembedding_block_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes
:	зC*
dtype0Д
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	зC
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       └
,Embedding_Block/embeddings/Regularizer/Sum_1Sum1Embedding_Block/embeddings/Regularizer/Square:y:07Embedding_Block/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_Block/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<─
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: И
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: n
IdentityIdentity0Embedding_Block/embeddings/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: ┴
NoOpNoOp:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp
▒
с
 __inference__traced_save_3029156
file_prefix9
5savev2_embedding_state_embeddings_read_readvariableop<
8savev2_embedding_district_embeddings_read_readvariableop@
<savev2_embedding_sub_district_embeddings_read_readvariableop9
5savev2_embedding_block_embeddings_read_readvariableop
savev2_const

identity_1ѕбMergeV2Checkpointsw
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
_temp/partЂ
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
value	B : Њ
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Щ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Б
valueЎBќB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/embeddings/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHw
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B џ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:05savev2_embedding_state_embeddings_read_readvariableop8savev2_embedding_district_embeddings_read_readvariableop<savev2_embedding_sub_district_embeddings_read_readvariableop5savev2_embedding_block_embeddings_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes	
2љ
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:І
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

identity_1Identity_1:output:0*B
_input_shapes1
/: ::	Р:	З&:	зC: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

::%!

_output_shapes
:	Р:%!

_output_shapes
:	З&:%!

_output_shapes
:	зC:

_output_shapes
: 
▀
Ќ
__inference_loss_fn_2_3029098\
Iembedding_sub_district_embeddings_regularizer_abs_readvariableop_resource:	З&
identityѕб@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpбCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpx
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ╦
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpIembedding_sub_district_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes
:	З&*
dtype0г
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	З&є
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       л
1Embedding_Sub_District/embeddings/Regularizer/SumSum5Embedding_Sub_District/embeddings/Regularizer/Abs:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<М
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: л
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ╬
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpIembedding_sub_district_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes
:	З&*
dtype0х
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	З&є
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       Н
3Embedding_Sub_District/embeddings/Regularizer/Sum_1Sum8Embedding_Sub_District/embeddings/Regularizer/Square:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: z
5Embedding_Sub_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<┘
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ═
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: u
IdentityIdentity7Embedding_Sub_District/embeddings/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: ¤
NoOpNoOpA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2ё
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2і
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp
я
ф
#__inference__traced_restore_3029178
file_prefix=
+assignvariableop_embedding_state_embeddings:C
0assignvariableop_1_embedding_district_embeddings:	РG
4assignvariableop_2_embedding_sub_district_embeddings:	З&@
-assignvariableop_3_embedding_block_embeddings:	зC

identity_5ѕбAssignVariableOpбAssignVariableOp_1бAssignVariableOp_2бAssignVariableOp_3§
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Б
valueЎBќB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-1/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-2/embeddings/.ATTRIBUTES/VARIABLE_VALUEB:layer_with_weights-3/embeddings/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHz
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB B B B B и
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:ќ
AssignVariableOpAssignVariableOp+assignvariableop_embedding_state_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_1AssignVariableOp0assignvariableop_1_embedding_district_embeddingsIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Б
AssignVariableOp_2AssignVariableOp4assignvariableop_2_embedding_sub_district_embeddingsIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:ю
AssignVariableOp_3AssignVariableOp-assignvariableop_3_embedding_block_embeddingsIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 г

Identity_4Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_5IdentityIdentity_4:output:0^NoOp_1*
T0*
_output_shapes
: џ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*
_input_shapes

: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_3:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
дє
Ї
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028101

inputs
inputs_1
inputs_2
inputs_3*
embedding_block_3027907:	зC1
embedding_sub_district_3027936:	З&-
embedding_district_3027965:	Р)
embedding_state_3027994:
identityѕб'Embedding_Block/StatefulPartitionedCallб9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpб<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpб*Embedding_District/StatefulPartitionedCallб<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpб?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpб'Embedding_State/StatefulPartitionedCallб9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpб<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpб.Embedding_Sub_District/StatefulPartitionedCallб@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpбCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpч
'Embedding_Block/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_block_3027907*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_3027906њ
.Embedding_Sub_District/StatefulPartitionedCallStatefulPartitionedCallinputs_3embedding_sub_district_3027936*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_3027935є
*Embedding_District/StatefulPartitionedCallStatefulPartitionedCallinputs_1embedding_district_3027965*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_Embedding_District_layer_call_and_return_conditional_losses_3027964§
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinputs_2embedding_state_3027994*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3027993С
flatten/PartitionedCallPartitionedCall0Embedding_State/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3028003в
flatten_1/PartitionedCallPartitionedCall3Embedding_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_3028011№
flatten_2/PartitionedCallPartitionedCall7Embedding_Sub_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3028019У
flatten_3/PartitionedCallPartitionedCall0Embedding_Block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_3028027П
$concatted_clustering/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Z
fURS
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3028038q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_3027994*
_output_shapes

:*
dtype0Ю
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╗
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
О#<Й
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ╗
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ћ
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_3027994*
_output_shapes

:*
dtype0д
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       └
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
О#<─
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: И
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ў
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_district_3027965*
_output_shapes
:	Р*
dtype0ц
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	Рѓ
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ─
-Embedding_District/embeddings/Regularizer/SumSum1Embedding_District/embeddings/Regularizer/Abs:y:0:Embedding_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<К
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ─
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Џ
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_district_3027965*
_output_shapes
:	Р*
dtype0Г
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	Рѓ
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ╔
/Embedding_District/embeddings/Regularizer/Sum_1Sum4Embedding_District/embeddings/Regularizer/Square:y:0:Embedding_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: v
1Embedding_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<═
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ┴
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    а
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_sub_district_3027936*
_output_shapes
:	З&*
dtype0г
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	З&є
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       л
1Embedding_Sub_District/embeddings/Regularizer/SumSum5Embedding_Sub_District/embeddings/Regularizer/Abs:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<М
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: л
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Б
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_sub_district_3027936*
_output_shapes
:	З&*
dtype0х
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	З&є
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       Н
3Embedding_Sub_District/embeddings/Regularizer/Sum_1Sum8Embedding_Sub_District/embeddings/Regularizer/Square:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: z
5Embedding_Sub_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<┘
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ═
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    њ
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_block_3027907*
_output_shapes
:	зC*
dtype0ъ
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	зC
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╗
*Embedding_Block/embeddings/Regularizer/SumSum.Embedding_Block/embeddings/Regularizer/Abs:y:07Embedding_Block/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Й
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ╗
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Ћ
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_block_3027907*
_output_shapes
:	зC*
dtype0Д
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	зC
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       └
,Embedding_Block/embeddings/Regularizer/Sum_1Sum1Embedding_Block/embeddings/Regularizer/Square:y:07Embedding_Block/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_Block/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<─
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: И
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: |
IdentityIdentity-concatted_clustering/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         PЭ
NoOpNoOp(^Embedding_Block/StatefulPartitionedCall:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp+^Embedding_District/StatefulPartitionedCall=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp/^Embedding_Sub_District/StatefulPartitionedCallA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:         :         :         :         : : : : 2R
'Embedding_Block/StatefulPartitionedCall'Embedding_Block/StatefulPartitionedCall2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2X
*Embedding_District/StatefulPartitionedCall*Embedding_District/StatefulPartitionedCall2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2ѓ
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2`
.Embedding_Sub_District/StatefulPartitionedCall.Embedding_Sub_District/StatefulPartitionedCall2ё
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2і
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
Зє
Ц
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028393
input_block
input_district
input_state
input_sub_district*
embedding_block_3028315:	зC1
embedding_sub_district_3028318:	З&-
embedding_district_3028321:	Р)
embedding_state_3028324:
identityѕб'Embedding_Block/StatefulPartitionedCallб9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpб<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpб*Embedding_District/StatefulPartitionedCallб<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpб?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpб'Embedding_State/StatefulPartitionedCallб9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpб<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpб.Embedding_Sub_District/StatefulPartitionedCallб@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpбCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpђ
'Embedding_Block/StatefulPartitionedCallStatefulPartitionedCallinput_blockembedding_block_3028315*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_3027906ю
.Embedding_Sub_District/StatefulPartitionedCallStatefulPartitionedCallinput_sub_districtembedding_sub_district_3028318*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *\
fWRU
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_3027935ї
*Embedding_District/StatefulPartitionedCallStatefulPartitionedCallinput_districtembedding_district_3028321*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_Embedding_District_layer_call_and_return_conditional_losses_3027964ђ
'Embedding_State/StatefulPartitionedCallStatefulPartitionedCallinput_stateembedding_state_3028324*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *U
fPRN
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3027993С
flatten/PartitionedCallPartitionedCall0Embedding_State/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_3028003в
flatten_1/PartitionedCallPartitionedCall3Embedding_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_1_layer_call_and_return_conditional_losses_3028011№
flatten_2/PartitionedCallPartitionedCall7Embedding_Sub_District/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_2_layer_call_and_return_conditional_losses_3028019У
flatten_3/PartitionedCallPartitionedCall0Embedding_Block/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *O
fJRH
F__inference_flatten_3_layer_call_and_return_conditional_losses_3028027П
$concatted_clustering/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8ѓ *Z
fURS
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3028038q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Љ
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_state_3028324*
_output_shapes

:*
dtype0Ю
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╗
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
О#<Й
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ╗
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ћ
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_state_3028324*
_output_shapes

:*
dtype0д
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       └
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
О#<─
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: И
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ў
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_district_3028321*
_output_shapes
:	Р*
dtype0ц
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	Рѓ
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ─
-Embedding_District/embeddings/Regularizer/SumSum1Embedding_District/embeddings/Regularizer/Abs:y:0:Embedding_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<К
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ─
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Џ
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_district_3028321*
_output_shapes
:	Р*
dtype0Г
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	Рѓ
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ╔
/Embedding_District/embeddings/Regularizer/Sum_1Sum4Embedding_District/embeddings/Regularizer/Square:y:0:Embedding_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: v
1Embedding_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<═
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ┴
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    а
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_sub_district_3028318*
_output_shapes
:	З&*
dtype0г
1Embedding_Sub_District/embeddings/Regularizer/AbsAbsHEmbedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	З&є
5Embedding_Sub_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       л
1Embedding_Sub_District/embeddings/Regularizer/SumSum5Embedding_Sub_District/embeddings/Regularizer/Abs:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: x
3Embedding_Sub_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<М
1Embedding_Sub_District/embeddings/Regularizer/mulMul<Embedding_Sub_District/embeddings/Regularizer/mul/x:output:0:Embedding_Sub_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: л
1Embedding_Sub_District/embeddings/Regularizer/addAddV2<Embedding_Sub_District/embeddings/Regularizer/Const:output:05Embedding_Sub_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Б
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_sub_district_3028318*
_output_shapes
:	З&*
dtype0х
4Embedding_Sub_District/embeddings/Regularizer/SquareSquareKEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	З&є
5Embedding_Sub_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       Н
3Embedding_Sub_District/embeddings/Regularizer/Sum_1Sum8Embedding_Sub_District/embeddings/Regularizer/Square:y:0>Embedding_Sub_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: z
5Embedding_Sub_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<┘
3Embedding_Sub_District/embeddings/Regularizer/mul_1Mul>Embedding_Sub_District/embeddings/Regularizer/mul_1/x:output:0<Embedding_Sub_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ═
3Embedding_Sub_District/embeddings/Regularizer/add_1AddV25Embedding_Sub_District/embeddings/Regularizer/add:z:07Embedding_Sub_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    њ
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_block_3028315*
_output_shapes
:	зC*
dtype0ъ
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	зC
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╗
*Embedding_Block/embeddings/Regularizer/SumSum.Embedding_Block/embeddings/Regularizer/Abs:y:07Embedding_Block/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Й
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ╗
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Ћ
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_block_3028315*
_output_shapes
:	зC*
dtype0Д
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	зC
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       └
,Embedding_Block/embeddings/Regularizer/Sum_1Sum1Embedding_Block/embeddings/Regularizer/Square:y:07Embedding_Block/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_Block/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<─
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: И
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: |
IdentityIdentity-concatted_clustering/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         PЭ
NoOpNoOp(^Embedding_Block/StatefulPartitionedCall:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp+^Embedding_District/StatefulPartitionedCall=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp(^Embedding_State/StatefulPartitionedCall:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp/^Embedding_Sub_District/StatefulPartitionedCallA^Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOpD^Embedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:         :         :         :         : : : : 2R
'Embedding_Block/StatefulPartitionedCall'Embedding_Block/StatefulPartitionedCall2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2X
*Embedding_District/StatefulPartitionedCall*Embedding_District/StatefulPartitionedCall2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2ѓ
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp2R
'Embedding_State/StatefulPartitionedCall'Embedding_State/StatefulPartitionedCall2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2`
.Embedding_Sub_District/StatefulPartitionedCall.Embedding_Sub_District/StatefulPartitionedCall2ё
@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp@Embedding_Sub_District/embeddings/Regularizer/Abs/ReadVariableOp2і
CEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOpCEmbedding_Sub_District/embeddings/Regularizer/Square/ReadVariableOp:T P
'
_output_shapes
:         
%
_user_specified_nameinput_Block:WS
'
_output_shapes
:         
(
_user_specified_nameinput_District:TP
'
_output_shapes
:         
%
_user_specified_nameinput_State:[W
'
_output_shapes
:         
,
_user_specified_nameinput_Sub_District
╝
Ѕ
4__inference_Embedding_District_layer_call_fn_3028858

inputs
unknown:	Р
identityѕбStatefulPartitionedCallя
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:         *#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *X
fSRQ
O__inference_Embedding_District_layer_call_and_return_conditional_losses_3027964s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
░C
■
"__inference__wrapped_model_3027868
input_block
input_district
input_state
input_sub_districtX
Emodel_feature_representation_embedding_block_embedding_lookup_3027834:	зC_
Lmodel_feature_representation_embedding_sub_district_embedding_lookup_3027840:	З&[
Hmodel_feature_representation_embedding_district_embedding_lookup_3027846:	РW
Emodel_feature_representation_embedding_state_embedding_lookup_3027852:
identityѕб=model_feature_representation/Embedding_Block/embedding_lookupб@model_feature_representation/Embedding_District/embedding_lookupб=model_feature_representation/Embedding_State/embedding_lookupбDmodel_feature_representation/Embedding_Sub_District/embedding_lookupЄ
1model_feature_representation/Embedding_Block/CastCastinput_block*

DstT0*

SrcT0*'
_output_shapes
:         ы
=model_feature_representation/Embedding_Block/embedding_lookupResourceGatherEmodel_feature_representation_embedding_block_embedding_lookup_30278345model_feature_representation/Embedding_Block/Cast:y:0*
Tindices0*X
_classN
LJloc:@model_feature_representation/Embedding_Block/embedding_lookup/3027834*+
_output_shapes
:         *
dtype0ф
Fmodel_feature_representation/Embedding_Block/embedding_lookup/IdentityIdentityFmodel_feature_representation/Embedding_Block/embedding_lookup:output:0*
T0*X
_classN
LJloc:@model_feature_representation/Embedding_Block/embedding_lookup/3027834*+
_output_shapes
:         █
Hmodel_feature_representation/Embedding_Block/embedding_lookup/Identity_1IdentityOmodel_feature_representation/Embedding_Block/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         Ћ
8model_feature_representation/Embedding_Sub_District/CastCastinput_sub_district*

DstT0*

SrcT0*'
_output_shapes
:         Ї
Dmodel_feature_representation/Embedding_Sub_District/embedding_lookupResourceGatherLmodel_feature_representation_embedding_sub_district_embedding_lookup_3027840<model_feature_representation/Embedding_Sub_District/Cast:y:0*
Tindices0*_
_classU
SQloc:@model_feature_representation/Embedding_Sub_District/embedding_lookup/3027840*+
_output_shapes
:         *
dtype0┐
Mmodel_feature_representation/Embedding_Sub_District/embedding_lookup/IdentityIdentityMmodel_feature_representation/Embedding_Sub_District/embedding_lookup:output:0*
T0*_
_classU
SQloc:@model_feature_representation/Embedding_Sub_District/embedding_lookup/3027840*+
_output_shapes
:         ж
Omodel_feature_representation/Embedding_Sub_District/embedding_lookup/Identity_1IdentityVmodel_feature_representation/Embedding_Sub_District/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         Ї
4model_feature_representation/Embedding_District/CastCastinput_district*

DstT0*

SrcT0*'
_output_shapes
:         §
@model_feature_representation/Embedding_District/embedding_lookupResourceGatherHmodel_feature_representation_embedding_district_embedding_lookup_30278468model_feature_representation/Embedding_District/Cast:y:0*
Tindices0*[
_classQ
OMloc:@model_feature_representation/Embedding_District/embedding_lookup/3027846*+
_output_shapes
:         *
dtype0│
Imodel_feature_representation/Embedding_District/embedding_lookup/IdentityIdentityImodel_feature_representation/Embedding_District/embedding_lookup:output:0*
T0*[
_classQ
OMloc:@model_feature_representation/Embedding_District/embedding_lookup/3027846*+
_output_shapes
:         р
Kmodel_feature_representation/Embedding_District/embedding_lookup/Identity_1IdentityRmodel_feature_representation/Embedding_District/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         Є
1model_feature_representation/Embedding_State/CastCastinput_state*

DstT0*

SrcT0*'
_output_shapes
:         ы
=model_feature_representation/Embedding_State/embedding_lookupResourceGatherEmodel_feature_representation_embedding_state_embedding_lookup_30278525model_feature_representation/Embedding_State/Cast:y:0*
Tindices0*X
_classN
LJloc:@model_feature_representation/Embedding_State/embedding_lookup/3027852*+
_output_shapes
:         *
dtype0ф
Fmodel_feature_representation/Embedding_State/embedding_lookup/IdentityIdentityFmodel_feature_representation/Embedding_State/embedding_lookup:output:0*
T0*X
_classN
LJloc:@model_feature_representation/Embedding_State/embedding_lookup/3027852*+
_output_shapes
:         █
Hmodel_feature_representation/Embedding_State/embedding_lookup/Identity_1IdentityOmodel_feature_representation/Embedding_State/embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         {
*model_feature_representation/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ы
,model_feature_representation/flatten/ReshapeReshapeQmodel_feature_representation/Embedding_State/embedding_lookup/Identity_1:output:03model_feature_representation/flatten/Const:output:0*
T0*'
_output_shapes
:         }
,model_feature_representation/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Э
.model_feature_representation/flatten_1/ReshapeReshapeTmodel_feature_representation/Embedding_District/embedding_lookup/Identity_1:output:05model_feature_representation/flatten_1/Const:output:0*
T0*'
_output_shapes
:         }
,model_feature_representation/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ч
.model_feature_representation/flatten_2/ReshapeReshapeXmodel_feature_representation/Embedding_Sub_District/embedding_lookup/Identity_1:output:05model_feature_representation/flatten_2/Const:output:0*
T0*'
_output_shapes
:         }
,model_feature_representation/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"       ш
.model_feature_representation/flatten_3/ReshapeReshapeQmodel_feature_representation/Embedding_Block/embedding_lookup/Identity_1:output:05model_feature_representation/flatten_3/Const:output:0*
T0*'
_output_shapes
:         
=model_feature_representation/concatted_clustering/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Е
8model_feature_representation/concatted_clustering/concatConcatV25model_feature_representation/flatten/Reshape:output:07model_feature_representation/flatten_1/Reshape:output:07model_feature_representation/flatten_2/Reshape:output:07model_feature_representation/flatten_3/Reshape:output:0Fmodel_feature_representation/concatted_clustering/concat/axis:output:0*
N*
T0*'
_output_shapes
:         Pљ
IdentityIdentityAmodel_feature_representation/concatted_clustering/concat:output:0^NoOp*
T0*'
_output_shapes
:         Pл
NoOpNoOp>^model_feature_representation/Embedding_Block/embedding_lookupA^model_feature_representation/Embedding_District/embedding_lookup>^model_feature_representation/Embedding_State/embedding_lookupE^model_feature_representation/Embedding_Sub_District/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:         :         :         :         : : : : 2~
=model_feature_representation/Embedding_Block/embedding_lookup=model_feature_representation/Embedding_Block/embedding_lookup2ё
@model_feature_representation/Embedding_District/embedding_lookup@model_feature_representation/Embedding_District/embedding_lookup2~
=model_feature_representation/Embedding_State/embedding_lookup=model_feature_representation/Embedding_State/embedding_lookup2ї
Dmodel_feature_representation/Embedding_Sub_District/embedding_lookupDmodel_feature_representation/Embedding_Sub_District/embedding_lookup:T P
'
_output_shapes
:         
%
_user_specified_nameinput_Block:WS
'
_output_shapes
:         
(
_user_specified_nameinput_District:TP
'
_output_shapes
:         
%
_user_specified_nameinput_State:[W
'
_output_shapes
:         
,
_user_specified_nameinput_Sub_District
Ь
Ц
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3027993

inputs*
embedding_lookup_3027972:
identityѕб9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpб<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         й
embedding_lookupResourceGatherembedding_lookup_3027972Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3027972*+
_output_shapes
:         *
dtype0Б
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3027972*+
_output_shapes
:         Ђ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         q
,Embedding_State/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    њ
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_3027972*
_output_shapes

:*
dtype0Ю
*Embedding_State/embeddings/Regularizer/AbsAbsAEmbedding_State/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╗
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
О#<Й
*Embedding_State/embeddings/Regularizer/mulMul5Embedding_State/embeddings/Regularizer/mul/x:output:03Embedding_State/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ╗
*Embedding_State/embeddings/Regularizer/addAddV25Embedding_State/embeddings/Regularizer/Const:output:0.Embedding_State/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: Ћ
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_3027972*
_output_shapes

:*
dtype0д
-Embedding_State/embeddings/Regularizer/SquareSquareDEmbedding_State/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
.Embedding_State/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       └
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
О#<─
,Embedding_State/embeddings/Regularizer/mul_1Mul7Embedding_State/embeddings/Regularizer/mul_1/x:output:05Embedding_State/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: И
,Embedding_State/embeddings/Regularizer/add_1AddV2.Embedding_State/embeddings/Regularizer/add:z:00Embedding_State/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         н
NoOpNoOp:^Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_State/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2v
9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_State/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp<Embedding_State/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
и
║
>__inference_model_feature_representation_layer_call_fn_3028587
inputs_0_block
inputs_0_district
inputs_0_state
inputs_0_sub_district
unknown:	зC
	unknown_0:	З&
	unknown_1:	Р
	unknown_2:
identityѕбStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputs_0_blockinputs_0_districtinputs_0_stateinputs_0_sub_districtunknown	unknown_0	unknown_1	unknown_2*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8ѓ *b
f]R[
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028282o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*g
_input_shapesV
T:         :         :         :         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:         
(
_user_specified_nameinputs/0/Block:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/0/District:WS
'
_output_shapes
:         
(
_user_specified_nameinputs/0/State:^Z
'
_output_shapes
:         
/
_user_specified_nameinputs/0/Sub_District
з
д
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_3028977

inputs+
embedding_lookup_3028956:	зC
identityѕб9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpб<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpбembedding_lookupU
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:         й
embedding_lookupResourceGatherembedding_lookup_3028956Cast:y:0*
Tindices0*+
_class!
loc:@embedding_lookup/3028956*+
_output_shapes
:         *
dtype0Б
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/3028956*+
_output_shapes
:         Ђ
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*+
_output_shapes
:         q
,Embedding_Block/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Њ
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpembedding_lookup_3028956*
_output_shapes
:	зC*
dtype0ъ
*Embedding_Block/embeddings/Regularizer/AbsAbsAEmbedding_Block/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	зC
.Embedding_Block/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ╗
*Embedding_Block/embeddings/Regularizer/SumSum.Embedding_Block/embeddings/Regularizer/Abs:y:07Embedding_Block/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: q
,Embedding_Block/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<Й
*Embedding_Block/embeddings/Regularizer/mulMul5Embedding_Block/embeddings/Regularizer/mul/x:output:03Embedding_Block/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ╗
*Embedding_Block/embeddings/Regularizer/addAddV25Embedding_Block/embeddings/Regularizer/Const:output:0.Embedding_Block/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: ќ
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpembedding_lookup_3028956*
_output_shapes
:	зC*
dtype0Д
-Embedding_Block/embeddings/Regularizer/SquareSquareDEmbedding_Block/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	зC
.Embedding_Block/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       └
,Embedding_Block/embeddings/Regularizer/Sum_1Sum1Embedding_Block/embeddings/Regularizer/Square:y:07Embedding_Block/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: s
.Embedding_Block/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<─
,Embedding_Block/embeddings/Regularizer/mul_1Mul7Embedding_Block/embeddings/Regularizer/mul_1/x:output:05Embedding_Block/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: И
,Embedding_Block/embeddings/Regularizer/add_1AddV2.Embedding_Block/embeddings/Regularizer/add:z:00Embedding_Block/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: w
IdentityIdentity$embedding_lookup/Identity_1:output:0^NoOp*
T0*+
_output_shapes
:         н
NoOpNoOp:^Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp=^Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp^embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:         : 2v
9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp9Embedding_Block/embeddings/Regularizer/Abs/ReadVariableOp2|
<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp<Embedding_Block/embeddings/Regularizer/Square/ReadVariableOp2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs
║
І
__inference_loss_fn_1_3029078X
Eembedding_district_embeddings_regularizer_abs_readvariableop_resource:	Р
identityѕб<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpб?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpt
/Embedding_District/embeddings/Regularizer/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ├
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOpReadVariableOpEembedding_district_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes
:	Р*
dtype0ц
-Embedding_District/embeddings/Regularizer/AbsAbsDEmbedding_District/embeddings/Regularizer/Abs/ReadVariableOp:value:0*
T0*
_output_shapes
:	Рѓ
1Embedding_District/embeddings/Regularizer/Const_1Const*
_output_shapes
:*
dtype0*
valueB"       ─
-Embedding_District/embeddings/Regularizer/SumSum1Embedding_District/embeddings/Regularizer/Abs:y:0:Embedding_District/embeddings/Regularizer/Const_1:output:0*
T0*
_output_shapes
: t
/Embedding_District/embeddings/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<К
-Embedding_District/embeddings/Regularizer/mulMul8Embedding_District/embeddings/Regularizer/mul/x:output:06Embedding_District/embeddings/Regularizer/Sum:output:0*
T0*
_output_shapes
: ─
-Embedding_District/embeddings/Regularizer/addAddV28Embedding_District/embeddings/Regularizer/Const:output:01Embedding_District/embeddings/Regularizer/mul:z:0*
T0*
_output_shapes
: к
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOpReadVariableOpEembedding_district_embeddings_regularizer_abs_readvariableop_resource*
_output_shapes
:	Р*
dtype0Г
0Embedding_District/embeddings/Regularizer/SquareSquareGEmbedding_District/embeddings/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	Рѓ
1Embedding_District/embeddings/Regularizer/Const_2Const*
_output_shapes
:*
dtype0*
valueB"       ╔
/Embedding_District/embeddings/Regularizer/Sum_1Sum4Embedding_District/embeddings/Regularizer/Square:y:0:Embedding_District/embeddings/Regularizer/Const_2:output:0*
T0*
_output_shapes
: v
1Embedding_District/embeddings/Regularizer/mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *
О#<═
/Embedding_District/embeddings/Regularizer/mul_1Mul:Embedding_District/embeddings/Regularizer/mul_1/x:output:08Embedding_District/embeddings/Regularizer/Sum_1:output:0*
T0*
_output_shapes
: ┴
/Embedding_District/embeddings/Regularizer/add_1AddV21Embedding_District/embeddings/Regularizer/add:z:03Embedding_District/embeddings/Regularizer/mul_1:z:0*
T0*
_output_shapes
: q
IdentityIdentity3Embedding_District/embeddings/Regularizer/add_1:z:0^NoOp*
T0*
_output_shapes
: К
NoOpNoOp=^Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp@^Embedding_District/embeddings/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2|
<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp<Embedding_District/embeddings/Regularizer/Abs/ReadVariableOp2ѓ
?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp?Embedding_District/embeddings/Regularizer/Square/ReadVariableOp"ѓL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*б
serving_defaultј
C
input_Block4
serving_default_input_Block:0         
I
input_District7
 serving_default_input_District:0         
C
input_State4
serving_default_input_State:0         
Q
input_Sub_District;
$serving_default_input_Sub_District:0         H
concatted_clustering0
StatefulPartitionedCall:0         Ptensorflow/serving/predict:ог
У
layer-0
layer-1
layer-2
layer-3
layer_with_weights-0
layer-4
layer_with_weights-1
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
	variables
trainable_variables
regularization_losses
	keras_api

signatures
m__call__
*n&call_and_return_all_conditional_losses
o_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
"
_tf_keras_input_layer
х

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
p__call__
*q&call_and_return_all_conditional_losses"
_tf_keras_layer
х

embeddings
	variables
trainable_variables
regularization_losses
	keras_api
r__call__
*s&call_and_return_all_conditional_losses"
_tf_keras_layer
х

embeddings
	variables
trainable_variables
 regularization_losses
!	keras_api
t__call__
*u&call_and_return_all_conditional_losses"
_tf_keras_layer
х
"
embeddings
#	variables
$trainable_variables
%regularization_losses
&	keras_api
v__call__
*w&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
'	variables
(trainable_variables
)regularization_losses
*	keras_api
x__call__
*y&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
+	variables
,trainable_variables
-regularization_losses
.	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
/	variables
0trainable_variables
1regularization_losses
2	keras_api
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_layer
Ц
3	variables
4trainable_variables
5regularization_losses
6	keras_api
~__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Д
7	variables
8trainable_variables
9regularization_losses
:	keras_api
ђ__call__
+Ђ&call_and_return_all_conditional_losses"
_tf_keras_layer
<
0
1
2
"3"
trackable_list_wrapper
<
0
1
2
"3"
trackable_list_wrapper
@
ѓ0
Ѓ1
ё2
Ё3"
trackable_list_wrapper
╩
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
m__call__
o_default_save_signature
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
-
єserving_default"
signature_map
,:*2Embedding_State/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
(
ѓ0"
trackable_list_wrapper
Г
@non_trainable_variables

Alayers
Bmetrics
Clayer_regularization_losses
Dlayer_metrics
	variables
trainable_variables
regularization_losses
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
0:.	Р2Embedding_District/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
(
Ѓ0"
trackable_list_wrapper
Г
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
4:2	З&2!Embedding_Sub_District/embeddings
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
(
ё0"
trackable_list_wrapper
Г
Jnon_trainable_variables

Klayers
Lmetrics
Mlayer_regularization_losses
Nlayer_metrics
	variables
trainable_variables
 regularization_losses
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
-:+	зC2Embedding_Block/embeddings
'
"0"
trackable_list_wrapper
'
"0"
trackable_list_wrapper
(
Ё0"
trackable_list_wrapper
Г
Onon_trainable_variables

Players
Qmetrics
Rlayer_regularization_losses
Slayer_metrics
#	variables
$trainable_variables
%regularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Tnon_trainable_variables

Ulayers
Vmetrics
Wlayer_regularization_losses
Xlayer_metrics
'	variables
(trainable_variables
)regularization_losses
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
+	variables
,trainable_variables
-regularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
/	variables
0trainable_variables
1regularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Г
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
3	variables
4trainable_variables
5regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
7	variables
8trainable_variables
9regularization_losses
ђ__call__
+Ђ&call_and_return_all_conditional_losses
'Ђ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
~
0
1
2
3
4
5
6
7
	8

9
10
11
12"
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
(
ѓ0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
Ѓ0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
ё0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
Ё0"
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
к2├
>__inference_model_feature_representation_layer_call_fn_3028112
>__inference_model_feature_representation_layer_call_fn_3028571
>__inference_model_feature_representation_layer_call_fn_3028587
>__inference_model_feature_representation_layer_call_fn_3028309└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
▓2»
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028688
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028789
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028393
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028477└
и▓│
FullArgSpec1
args)џ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsџ
p 

 

kwonlyargsџ 
kwonlydefaultsф 
annotationsф *
 
ѓB 
"__inference__wrapped_model_3027868input_Blockinput_Districtinput_Stateinput_Sub_District"ў
Љ▓Ї
FullArgSpec
argsџ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
█2п
1__inference_Embedding_State_layer_call_fn_3028811б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ш2з
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3028836б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
я2█
4__inference_Embedding_District_layer_call_fn_3028858б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
щ2Ш
O__inference_Embedding_District_layer_call_and_return_conditional_losses_3028883б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Р2▀
8__inference_Embedding_Sub_District_layer_call_fn_3028905б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
§2Щ
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_3028930б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
█2п
1__inference_Embedding_Block_layer_call_fn_3028952б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ш2з
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_3028977б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
М2л
)__inference_flatten_layer_call_fn_3028982б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Ь2в
D__inference_flatten_layer_call_and_return_conditional_losses_3028988б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Н2м
+__inference_flatten_1_layer_call_fn_3028993б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­2ь
F__inference_flatten_1_layer_call_and_return_conditional_losses_3028999б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Н2м
+__inference_flatten_2_layer_call_fn_3029004б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­2ь
F__inference_flatten_2_layer_call_and_return_conditional_losses_3029010б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Н2м
+__inference_flatten_3_layer_call_fn_3029015б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
­2ь
F__inference_flatten_3_layer_call_and_return_conditional_losses_3029021б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
Я2П
6__inference_concatted_clustering_layer_call_fn_3029029б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
ч2Э
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3029038б
Ў▓Ћ
FullArgSpec
argsџ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 
┤2▒
__inference_loss_fn_0_3029058Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
┤2▒
__inference_loss_fn_1_3029078Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
┤2▒
__inference_loss_fn_2_3029098Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
┤2▒
__inference_loss_fn_3_3029118Ј
Є▓Ѓ
FullArgSpec
argsџ 
varargs
 
varkw
 
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *б 
 BЧ
%__inference_signature_wrapper_3028555input_Blockinput_Districtinput_Stateinput_Sub_District"ћ
Ї▓Ѕ
FullArgSpec
argsџ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsџ 
kwonlydefaults
 
annotationsф *
 »
L__inference_Embedding_Block_layer_call_and_return_conditional_losses_3028977_"/б,
%б"
 і
inputs         
ф ")б&
і
0         
џ Є
1__inference_Embedding_Block_layer_call_fn_3028952R"/б,
%б"
 і
inputs         
ф "і         ▓
O__inference_Embedding_District_layer_call_and_return_conditional_losses_3028883_/б,
%б"
 і
inputs         
ф ")б&
і
0         
џ і
4__inference_Embedding_District_layer_call_fn_3028858R/б,
%б"
 і
inputs         
ф "і         »
L__inference_Embedding_State_layer_call_and_return_conditional_losses_3028836_/б,
%б"
 і
inputs         
ф ")б&
і
0         
џ Є
1__inference_Embedding_State_layer_call_fn_3028811R/б,
%б"
 і
inputs         
ф "і         Х
S__inference_Embedding_Sub_District_layer_call_and_return_conditional_losses_3028930_/б,
%б"
 і
inputs         
ф ")б&
і
0         
џ ј
8__inference_Embedding_Sub_District_layer_call_fn_3028905R/б,
%б"
 і
inputs         
ф "і         №
"__inference__wrapped_model_3027868╚"ЫбЬ
ТбР
▀џ█
пфн
.
Block%і"
input_Block         
4
District(і%
input_District         
.
State%і"
input_State         
<
Sub_District,і)
input_Sub_District         
ф "KфH
F
concatted_clustering.і+
concatted_clustering         PД
Q__inference_concatted_clustering_layer_call_and_return_conditional_losses_3029038ЛДбБ
ЏбЌ
ћџљ
"і
inputs/0         
"і
inputs/1         
"і
inputs/2         
"і
inputs/3         
ф "%б"
і
0         P
џ  
6__inference_concatted_clustering_layer_call_fn_3029029─ДбБ
ЏбЌ
ћџљ
"і
inputs/0         
"і
inputs/1         
"і
inputs/2         
"і
inputs/3         
ф "і         Pд
F__inference_flatten_1_layer_call_and_return_conditional_losses_3028999\3б0
)б&
$і!
inputs         
ф "%б"
і
0         
џ ~
+__inference_flatten_1_layer_call_fn_3028993O3б0
)б&
$і!
inputs         
ф "і         д
F__inference_flatten_2_layer_call_and_return_conditional_losses_3029010\3б0
)б&
$і!
inputs         
ф "%б"
і
0         
џ ~
+__inference_flatten_2_layer_call_fn_3029004O3б0
)б&
$і!
inputs         
ф "і         д
F__inference_flatten_3_layer_call_and_return_conditional_losses_3029021\3б0
)б&
$і!
inputs         
ф "%б"
і
0         
џ ~
+__inference_flatten_3_layer_call_fn_3029015O3б0
)б&
$і!
inputs         
ф "і         ц
D__inference_flatten_layer_call_and_return_conditional_losses_3028988\3б0
)б&
$і!
inputs         
ф "%б"
і
0         
џ |
)__inference_flatten_layer_call_fn_3028982O3б0
)б&
$і!
inputs         
ф "і         <
__inference_loss_fn_0_3029058б

б 
ф "і <
__inference_loss_fn_1_3029078б

б 
ф "і <
__inference_loss_fn_2_3029098б

б 
ф "і <
__inference_loss_fn_3_3029118"б

б 
ф "і ѕ
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028393ф"ЩбШ
ЬбЖ
▀џ█
пфн
.
Block%і"
input_Block         
4
District(і%
input_District         
.
State%і"
input_State         
<
Sub_District,і)
input_Sub_District         
p 

 
ф "%б"
і
0         P
џ ѕ
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028477ф"ЩбШ
ЬбЖ
▀џ█
пфн
.
Block%і"
input_Block         
4
District(і%
input_District         
.
State%і"
input_State         
<
Sub_District,і)
input_Sub_District         
p

 
ф "%б"
і
0         P
џ ћ
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028688Х"єбѓ
ЩбШ
вџу
СфЯ
1
Block(і%
inputs/0/Block         
7
District+і(
inputs/0/District         
1
State(і%
inputs/0/State         
?
Sub_District/і,
inputs/0/Sub_District         
p 

 
ф "%б"
і
0         P
џ ћ
Y__inference_model_feature_representation_layer_call_and_return_conditional_losses_3028789Х"єбѓ
ЩбШ
вџу
СфЯ
1
Block(і%
inputs/0/Block         
7
District+і(
inputs/0/District         
1
State(і%
inputs/0/State         
?
Sub_District/і,
inputs/0/Sub_District         
p

 
ф "%б"
і
0         P
џ Я
>__inference_model_feature_representation_layer_call_fn_3028112Ю"ЩбШ
ЬбЖ
▀џ█
пфн
.
Block%і"
input_Block         
4
District(і%
input_District         
.
State%і"
input_State         
<
Sub_District,і)
input_Sub_District         
p 

 
ф "і         PЯ
>__inference_model_feature_representation_layer_call_fn_3028309Ю"ЩбШ
ЬбЖ
▀џ█
пфн
.
Block%і"
input_Block         
4
District(і%
input_District         
.
State%і"
input_State         
<
Sub_District,і)
input_Sub_District         
p

 
ф "і         PВ
>__inference_model_feature_representation_layer_call_fn_3028571Е"єбѓ
ЩбШ
вџу
СфЯ
1
Block(і%
inputs/0/Block         
7
District+і(
inputs/0/District         
1
State(і%
inputs/0/State         
?
Sub_District/і,
inputs/0/Sub_District         
p 

 
ф "і         PВ
>__inference_model_feature_representation_layer_call_fn_3028587Е"єбѓ
ЩбШ
вџу
СфЯ
1
Block(і%
inputs/0/Block         
7
District+і(
inputs/0/District         
1
State(і%
inputs/0/State         
?
Sub_District/і,
inputs/0/Sub_District         
p

 
ф "і         PЧ
%__inference_signature_wrapper_3028555м"ЧбЭ
б 
­фВ
4
input_Block%і"
input_Block         
:
input_District(і%
input_District         
4
input_State%і"
input_State         
B
input_Sub_District,і)
input_Sub_District         "KфH
F
concatted_clustering.і+
concatted_clustering         P