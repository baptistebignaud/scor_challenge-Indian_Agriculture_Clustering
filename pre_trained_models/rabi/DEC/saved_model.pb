??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
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
8
Pow
x"T
y"T
z"T"
Ttype:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
3
Square
x"T
y"T"
Ttype:
2
	
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.7.02v2.7.0-rc1-69-gc256c071bb28??
?
encoder_layer0/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P@*&
shared_nameencoder_layer0/kernel

)encoder_layer0/kernel/Read/ReadVariableOpReadVariableOpencoder_layer0/kernel*
_output_shapes

:P@*
dtype0
~
encoder_layer0/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameencoder_layer0/bias
w
'encoder_layer0/bias/Read/ReadVariableOpReadVariableOpencoder_layer0/bias*
_output_shapes
:@*
dtype0
?
encoder_layer1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*&
shared_nameencoder_layer1/kernel
?
)encoder_layer1/kernel/Read/ReadVariableOpReadVariableOpencoder_layer1/kernel*
_output_shapes
:	@?*
dtype0

encoder_layer1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameencoder_layer1/bias
x
'encoder_layer1/bias/Read/ReadVariableOpReadVariableOpencoder_layer1/bias*
_output_shapes	
:?*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	?*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:*
dtype0
?
clustering/clustersVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*$
shared_nameclustering/clusters
{
'clustering/clusters/Read/ReadVariableOpReadVariableOpclustering/clusters*
_output_shapes

:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
?
Adam/encoder_layer0/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P@*-
shared_nameAdam/encoder_layer0/kernel/m
?
0Adam/encoder_layer0/kernel/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer0/kernel/m*
_output_shapes

:P@*
dtype0
?
Adam/encoder_layer0/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/encoder_layer0/bias/m
?
.Adam/encoder_layer0/bias/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer0/bias/m*
_output_shapes
:@*
dtype0
?
Adam/encoder_layer1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*-
shared_nameAdam/encoder_layer1/kernel/m
?
0Adam/encoder_layer1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer1/kernel/m*
_output_shapes
:	@?*
dtype0
?
Adam/encoder_layer1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/encoder_layer1/bias/m
?
.Adam/encoder_layer1/bias/m/Read/ReadVariableOpReadVariableOpAdam/encoder_layer1/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*$
shared_nameAdam/dense/kernel/m
|
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes
:	?*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:*
dtype0
?
Adam/clustering/clusters/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_nameAdam/clustering/clusters/m
?
.Adam/clustering/clusters/m/Read/ReadVariableOpReadVariableOpAdam/clustering/clusters/m*
_output_shapes

:*
dtype0
?
Adam/encoder_layer0/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P@*-
shared_nameAdam/encoder_layer0/kernel/v
?
0Adam/encoder_layer0/kernel/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer0/kernel/v*
_output_shapes

:P@*
dtype0
?
Adam/encoder_layer0/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_nameAdam/encoder_layer0/bias/v
?
.Adam/encoder_layer0/bias/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer0/bias/v*
_output_shapes
:@*
dtype0
?
Adam/encoder_layer1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@?*-
shared_nameAdam/encoder_layer1/kernel/v
?
0Adam/encoder_layer1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer1/kernel/v*
_output_shapes
:	@?*
dtype0
?
Adam/encoder_layer1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*+
shared_nameAdam/encoder_layer1/bias/v
?
.Adam/encoder_layer1/bias/v/Read/ReadVariableOpReadVariableOpAdam/encoder_layer1/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*$
shared_nameAdam/dense/kernel/v
|
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes
:	?*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:*
dtype0
?
Adam/clustering/clusters/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*+
shared_nameAdam/clustering/clusters/v
?
.Adam/clustering/clusters/v/Read/ReadVariableOpReadVariableOpAdam/clustering/clusters/v*
_output_shapes

:*
dtype0

NoOpNoOp
?.
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?-
value?-B?- B?-
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api

signatures
 
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
regularization_losses
	keras_api
h

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
R
	variables
trainable_variables
 regularization_losses
!	keras_api
h

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
`
(clusters
)	variables
*trainable_variables
+regularization_losses
,	keras_api
?
-iter

.beta_1

/beta_2
	0decay
1learning_ratemZm[m\m]"m^#m_(m`vavbvcvd"ve#vf(vg
1
0
1
2
3
"4
#5
(6
1
0
1
2
3
"4
#5
(6
 
?
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
		variables

trainable_variables
regularization_losses
 
a_
VARIABLE_VALUEencoder_layer0/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEencoder_layer0/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
a_
VARIABLE_VALUEencoder_layer1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUEencoder_layer1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
 
 
 
?
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
 regularization_losses
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

"0
#1

"0
#1
 
?
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
$	variables
%trainable_variables
&regularization_losses
a_
VARIABLE_VALUEclustering/clusters8layer_with_weights-3/clusters/.ATTRIBUTES/VARIABLE_VALUE

(0

(0
 
?
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
)	variables
*trainable_variables
+regularization_losses
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
1
0
1
2
3
4
5
6

U0
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
4
	Vtotal
	Wcount
X	variables
Y	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

V0
W1

X	variables
??
VARIABLE_VALUEAdam/encoder_layer0/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/encoder_layer0/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/encoder_layer1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/encoder_layer1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/clustering/clusters/mTlayer_with_weights-3/clusters/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/encoder_layer0/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/encoder_layer0/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/encoder_layer1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEAdam/encoder_layer1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/clustering/clusters/vTlayer_with_weights-3/clusters/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_encoderPlaceholder*'
_output_shapes
:?????????P*
dtype0*
shape:?????????P
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_encoderencoder_layer0/kernelencoder_layer0/biasencoder_layer1/kernelencoder_layer1/biasdense/kernel
dense/biasclustering/clusters*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *.
f)R'
%__inference_signature_wrapper_3029649
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename)encoder_layer0/kernel/Read/ReadVariableOp'encoder_layer0/bias/Read/ReadVariableOp)encoder_layer1/kernel/Read/ReadVariableOp'encoder_layer1/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp'clustering/clusters/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp0Adam/encoder_layer0/kernel/m/Read/ReadVariableOp.Adam/encoder_layer0/bias/m/Read/ReadVariableOp0Adam/encoder_layer1/kernel/m/Read/ReadVariableOp.Adam/encoder_layer1/bias/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp.Adam/clustering/clusters/m/Read/ReadVariableOp0Adam/encoder_layer0/kernel/v/Read/ReadVariableOp.Adam/encoder_layer0/bias/v/Read/ReadVariableOp0Adam/encoder_layer1/kernel/v/Read/ReadVariableOp.Adam/encoder_layer1/bias/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp.Adam/clustering/clusters/v/Read/ReadVariableOpConst*)
Tin"
 2	*
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
 __inference__traced_save_3030081
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameencoder_layer0/kernelencoder_layer0/biasencoder_layer1/kernelencoder_layer1/biasdense/kernel
dense/biasclustering/clusters	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/encoder_layer0/kernel/mAdam/encoder_layer0/bias/mAdam/encoder_layer1/kernel/mAdam/encoder_layer1/bias/mAdam/dense/kernel/mAdam/dense/bias/mAdam/clustering/clusters/mAdam/encoder_layer0/kernel/vAdam/encoder_layer0/bias/vAdam/encoder_layer1/kernel/vAdam/encoder_layer1/bias/vAdam/dense/kernel/vAdam/dense/bias/vAdam/clustering/clusters/v*(
Tin!
2*
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
#__inference__traced_restore_3030175??
?	
?
B__inference_dense_layer_call_and_return_conditional_losses_3029320

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
)__inference_dropout_layer_call_fn_3029824

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_3029480o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
G
+__inference_dropout_1_layer_call_fn_3029865

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_3029308a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_clustering_layer_call_fn_3029920

inputs
unknown:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_clustering_layer_call_and_return_conditional_losses_3029412o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_clustering_layer_call_and_return_conditional_losses_3029412

inputs-
sub_readvariableop_resource:
identity??sub/ReadVariableOpP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????n
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes

:*
dtype0q
subSubExpandDims:output:0sub/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????O
SquareSquaresub:z:0*
T0*+
_output_shapes
:?????????W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :h
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??f
truedivRealDivSum:output:0truediv/y:output:0*
T0*'
_output_shapes
:?????????J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??[
addAddV2add/x:output:0truediv:z:0*
T0*'
_output_shapes
:?????????P
truediv_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
	truediv_1RealDivtruediv_1/x:output:0add:z:0*
T0*'
_output_shapes
:?????????J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??[
powPowtruediv_1:z:0pow/y:output:0*
T0*'
_output_shapes
:?????????_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       j
	transpose	Transposepow:z:0transpose/perm:output:0*
T0*'
_output_shapes
:?????????Y
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :e
Sum_1Sumpow:z:0 Sum_1/reduction_indices:output:0*
T0*#
_output_shapes
:?????????e
	truediv_2RealDivtranspose:y:0Sum_1:output:0*
T0*'
_output_shapes
:?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       t
transpose_1	Transposetruediv_2:z:0transpose_1/perm:output:0*
T0*'
_output_shapes
:?????????^
IdentityIdentitytranspose_1:y:0^NoOp*
T0*'
_output_shapes
:?????????[
NoOpNoOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2(
sub/ReadVariableOpsub/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
K__inference_encoder_layer0_layer_call_and_return_conditional_losses_3029274

inputs0
matmul_readvariableop_resource:P@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
?
0__inference_encoder_layer0_layer_call_fn_3029804

inputs
unknown:P@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer0_layer_call_and_return_conditional_losses_3029274o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????P: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_3029875

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
K__inference_encoder_layer1_layer_call_and_return_conditional_losses_3029860

inputs1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
'__inference_model_layer_call_fn_3029668

inputs
unknown:P@
	unknown_0:@
	unknown_1:	@?
	unknown_2:	?
	unknown_3:	?
	unknown_4:
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_3029358o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????P: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?	
?
'__inference_model_layer_call_fn_3029375
input_encoder
unknown:P@
	unknown_0:@
	unknown_1:	@?
	unknown_2:	?
	unknown_3:	?
	unknown_4:
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_encoderunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_3029358o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????P: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????P
'
_user_specified_nameinput_encoder
?
?
'__inference_dense_layer_call_fn_3029896

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_3029320o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
G__inference_clustering_layer_call_and_return_conditional_losses_3029353

inputs-
sub_readvariableop_resource:
identity??sub/ReadVariableOpP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????n
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes

:*
dtype0q
subSubExpandDims:output:0sub/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????O
SquareSquaresub:z:0*
T0*+
_output_shapes
:?????????W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :h
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??f
truedivRealDivSum:output:0truediv/y:output:0*
T0*'
_output_shapes
:?????????J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??[
addAddV2add/x:output:0truediv:z:0*
T0*'
_output_shapes
:?????????P
truediv_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
	truediv_1RealDivtruediv_1/x:output:0add:z:0*
T0*'
_output_shapes
:?????????J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??[
powPowtruediv_1:z:0pow/y:output:0*
T0*'
_output_shapes
:?????????_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       j
	transpose	Transposepow:z:0transpose/perm:output:0*
T0*'
_output_shapes
:?????????Y
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :e
Sum_1Sumpow:z:0 Sum_1/reduction_indices:output:0*
T0*#
_output_shapes
:?????????e
	truediv_2RealDivtranspose:y:0Sum_1:output:0*
T0*'
_output_shapes
:?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       t
transpose_1	Transposetruediv_2:z:0transpose_1/perm:output:0*
T0*'
_output_shapes
:?????????^
IdentityIdentitytranspose_1:y:0^NoOp*
T0*'
_output_shapes
:?????????[
NoOpNoOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2(
sub/ReadVariableOpsub/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
B__inference_model_layer_call_and_return_conditional_losses_3029538

inputs(
encoder_layer0_3029517:P@$
encoder_layer0_3029519:@)
encoder_layer1_3029523:	@?%
encoder_layer1_3029525:	? 
dense_3029529:	?
dense_3029531:$
clustering_3029534:
identity??"clustering/StatefulPartitionedCall?dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?&encoder_layer0/StatefulPartitionedCall?&encoder_layer1/StatefulPartitionedCall?
&encoder_layer0/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_layer0_3029517encoder_layer0_3029519*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer0_layer_call_and_return_conditional_losses_3029274?
dropout/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_3029480?
&encoder_layer1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0encoder_layer1_3029523encoder_layer1_3029525*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer1_layer_call_and_return_conditional_losses_3029297?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_3029447?
dense/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_3029529dense_3029531*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_3029320?
"clustering/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0clustering_3029534*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_clustering_layer_call_and_return_conditional_losses_3029412z
IdentityIdentity+clustering/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^clustering/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall'^encoder_layer0/StatefulPartitionedCall'^encoder_layer1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????P: : : : : : : 2H
"clustering/StatefulPartitionedCall"clustering/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2P
&encoder_layer0/StatefulPartitionedCall&encoder_layer0/StatefulPartitionedCall2P
&encoder_layer1/StatefulPartitionedCall&encoder_layer1/StatefulPartitionedCall:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?8
?
"__inference__wrapped_model_3029257
input_encoderE
3model_encoder_layer0_matmul_readvariableop_resource:P@B
4model_encoder_layer0_biasadd_readvariableop_resource:@F
3model_encoder_layer1_matmul_readvariableop_resource:	@?C
4model_encoder_layer1_biasadd_readvariableop_resource:	?=
*model_dense_matmul_readvariableop_resource:	?9
+model_dense_biasadd_readvariableop_resource:>
,model_clustering_sub_readvariableop_resource:
identity??#model/clustering/sub/ReadVariableOp?"model/dense/BiasAdd/ReadVariableOp?!model/dense/MatMul/ReadVariableOp?+model/encoder_layer0/BiasAdd/ReadVariableOp?*model/encoder_layer0/MatMul/ReadVariableOp?+model/encoder_layer1/BiasAdd/ReadVariableOp?*model/encoder_layer1/MatMul/ReadVariableOp?
*model/encoder_layer0/MatMul/ReadVariableOpReadVariableOp3model_encoder_layer0_matmul_readvariableop_resource*
_output_shapes

:P@*
dtype0?
model/encoder_layer0/MatMulMatMulinput_encoder2model/encoder_layer0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
+model/encoder_layer0/BiasAdd/ReadVariableOpReadVariableOp4model_encoder_layer0_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
model/encoder_layer0/BiasAddBiasAdd%model/encoder_layer0/MatMul:product:03model/encoder_layer0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@{
model/dropout/IdentityIdentity%model/encoder_layer0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
*model/encoder_layer1/MatMul/ReadVariableOpReadVariableOp3model_encoder_layer1_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
model/encoder_layer1/MatMulMatMulmodel/dropout/Identity:output:02model/encoder_layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
+model/encoder_layer1/BiasAdd/ReadVariableOpReadVariableOp4model_encoder_layer1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
model/encoder_layer1/BiasAddBiasAdd%model/encoder_layer1/MatMul:product:03model/encoder_layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????~
model/dropout_1/IdentityIdentity%model/encoder_layer1/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
model/dense/MatMulMatMul!model/dropout_1/Identity:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????a
model/clustering/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
model/clustering/ExpandDims
ExpandDimsmodel/dense/BiasAdd:output:0(model/clustering/ExpandDims/dim:output:0*
T0*+
_output_shapes
:??????????
#model/clustering/sub/ReadVariableOpReadVariableOp,model_clustering_sub_readvariableop_resource*
_output_shapes

:*
dtype0?
model/clustering/subSub$model/clustering/ExpandDims:output:0+model/clustering/sub/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????q
model/clustering/SquareSquaremodel/clustering/sub:z:0*
T0*+
_output_shapes
:?????????h
&model/clustering/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
model/clustering/SumSummodel/clustering/Square:y:0/model/clustering/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????_
model/clustering/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
model/clustering/truedivRealDivmodel/clustering/Sum:output:0#model/clustering/truediv/y:output:0*
T0*'
_output_shapes
:?????????[
model/clustering/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
model/clustering/addAddV2model/clustering/add/x:output:0model/clustering/truediv:z:0*
T0*'
_output_shapes
:?????????a
model/clustering/truediv_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
model/clustering/truediv_1RealDiv%model/clustering/truediv_1/x:output:0model/clustering/add:z:0*
T0*'
_output_shapes
:?????????[
model/clustering/pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
model/clustering/powPowmodel/clustering/truediv_1:z:0model/clustering/pow/y:output:0*
T0*'
_output_shapes
:?????????p
model/clustering/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       ?
model/clustering/transpose	Transposemodel/clustering/pow:z:0(model/clustering/transpose/perm:output:0*
T0*'
_output_shapes
:?????????j
(model/clustering/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
model/clustering/Sum_1Summodel/clustering/pow:z:01model/clustering/Sum_1/reduction_indices:output:0*
T0*#
_output_shapes
:??????????
model/clustering/truediv_2RealDivmodel/clustering/transpose:y:0model/clustering/Sum_1:output:0*
T0*'
_output_shapes
:?????????r
!model/clustering/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       ?
model/clustering/transpose_1	Transposemodel/clustering/truediv_2:z:0*model/clustering/transpose_1/perm:output:0*
T0*'
_output_shapes
:?????????o
IdentityIdentity model/clustering/transpose_1:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp$^model/clustering/sub/ReadVariableOp#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp,^model/encoder_layer0/BiasAdd/ReadVariableOp+^model/encoder_layer0/MatMul/ReadVariableOp,^model/encoder_layer1/BiasAdd/ReadVariableOp+^model/encoder_layer1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????P: : : : : : : 2J
#model/clustering/sub/ReadVariableOp#model/clustering/sub/ReadVariableOp2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2Z
+model/encoder_layer0/BiasAdd/ReadVariableOp+model/encoder_layer0/BiasAdd/ReadVariableOp2X
*model/encoder_layer0/MatMul/ReadVariableOp*model/encoder_layer0/MatMul/ReadVariableOp2Z
+model/encoder_layer1/BiasAdd/ReadVariableOp+model/encoder_layer1/BiasAdd/ReadVariableOp2X
*model/encoder_layer1/MatMul/ReadVariableOp*model/encoder_layer1/MatMul/ReadVariableOp:V R
'
_output_shapes
:?????????P
'
_user_specified_nameinput_encoder
?	
c
D__inference_dropout_layer_call_and_return_conditional_losses_3029841

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
B__inference_model_layer_call_and_return_conditional_losses_3029358

inputs(
encoder_layer0_3029275:P@$
encoder_layer0_3029277:@)
encoder_layer1_3029298:	@?%
encoder_layer1_3029300:	? 
dense_3029321:	?
dense_3029323:$
clustering_3029354:
identity??"clustering/StatefulPartitionedCall?dense/StatefulPartitionedCall?&encoder_layer0/StatefulPartitionedCall?&encoder_layer1/StatefulPartitionedCall?
&encoder_layer0/StatefulPartitionedCallStatefulPartitionedCallinputsencoder_layer0_3029275encoder_layer0_3029277*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer0_layer_call_and_return_conditional_losses_3029274?
dropout/PartitionedCallPartitionedCall/encoder_layer0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_3029285?
&encoder_layer1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0encoder_layer1_3029298encoder_layer1_3029300*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer1_layer_call_and_return_conditional_losses_3029297?
dropout_1/PartitionedCallPartitionedCall/encoder_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_3029308?
dense/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_3029321dense_3029323*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_3029320?
"clustering/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0clustering_3029354*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_clustering_layer_call_and_return_conditional_losses_3029353z
IdentityIdentity+clustering/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^clustering/StatefulPartitionedCall^dense/StatefulPartitionedCall'^encoder_layer0/StatefulPartitionedCall'^encoder_layer1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????P: : : : : : : 2H
"clustering/StatefulPartitionedCall"clustering/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2P
&encoder_layer0/StatefulPartitionedCall&encoder_layer0/StatefulPartitionedCall2P
&encoder_layer1/StatefulPartitionedCall&encoder_layer1/StatefulPartitionedCall:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?3
?
B__inference_model_layer_call_and_return_conditional_losses_3029734

inputs?
-encoder_layer0_matmul_readvariableop_resource:P@<
.encoder_layer0_biasadd_readvariableop_resource:@@
-encoder_layer1_matmul_readvariableop_resource:	@?=
.encoder_layer1_biasadd_readvariableop_resource:	?7
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:8
&clustering_sub_readvariableop_resource:
identity??clustering/sub/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?%encoder_layer0/BiasAdd/ReadVariableOp?$encoder_layer0/MatMul/ReadVariableOp?%encoder_layer1/BiasAdd/ReadVariableOp?$encoder_layer1/MatMul/ReadVariableOp?
$encoder_layer0/MatMul/ReadVariableOpReadVariableOp-encoder_layer0_matmul_readvariableop_resource*
_output_shapes

:P@*
dtype0?
encoder_layer0/MatMulMatMulinputs,encoder_layer0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
%encoder_layer0/BiasAdd/ReadVariableOpReadVariableOp.encoder_layer0_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
encoder_layer0/BiasAddBiasAddencoder_layer0/MatMul:product:0-encoder_layer0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@o
dropout/IdentityIdentityencoder_layer0/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
$encoder_layer1/MatMul/ReadVariableOpReadVariableOp-encoder_layer1_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
encoder_layer1/MatMulMatMuldropout/Identity:output:0,encoder_layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%encoder_layer1/BiasAdd/ReadVariableOpReadVariableOp.encoder_layer1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder_layer1/BiasAddBiasAddencoder_layer1/MatMul:product:0-encoder_layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????r
dropout_1/IdentityIdentityencoder_layer1/BiasAdd:output:0*
T0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMulMatMuldropout_1/Identity:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
clustering/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
clustering/ExpandDims
ExpandDimsdense/BiasAdd:output:0"clustering/ExpandDims/dim:output:0*
T0*+
_output_shapes
:??????????
clustering/sub/ReadVariableOpReadVariableOp&clustering_sub_readvariableop_resource*
_output_shapes

:*
dtype0?
clustering/subSubclustering/ExpandDims:output:0%clustering/sub/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????e
clustering/SquareSquareclustering/sub:z:0*
T0*+
_output_shapes
:?????????b
 clustering/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
clustering/SumSumclustering/Square:y:0)clustering/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????Y
clustering/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clustering/truedivRealDivclustering/Sum:output:0clustering/truediv/y:output:0*
T0*'
_output_shapes
:?????????U
clustering/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??|
clustering/addAddV2clustering/add/x:output:0clustering/truediv:z:0*
T0*'
_output_shapes
:?????????[
clustering/truediv_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clustering/truediv_1RealDivclustering/truediv_1/x:output:0clustering/add:z:0*
T0*'
_output_shapes
:?????????U
clustering/pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??|
clustering/powPowclustering/truediv_1:z:0clustering/pow/y:output:0*
T0*'
_output_shapes
:?????????j
clustering/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       ?
clustering/transpose	Transposeclustering/pow:z:0"clustering/transpose/perm:output:0*
T0*'
_output_shapes
:?????????d
"clustering/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
clustering/Sum_1Sumclustering/pow:z:0+clustering/Sum_1/reduction_indices:output:0*
T0*#
_output_shapes
:??????????
clustering/truediv_2RealDivclustering/transpose:y:0clustering/Sum_1:output:0*
T0*'
_output_shapes
:?????????l
clustering/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       ?
clustering/transpose_1	Transposeclustering/truediv_2:z:0$clustering/transpose_1/perm:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentityclustering/transpose_1:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^clustering/sub/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp&^encoder_layer0/BiasAdd/ReadVariableOp%^encoder_layer0/MatMul/ReadVariableOp&^encoder_layer1/BiasAdd/ReadVariableOp%^encoder_layer1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????P: : : : : : : 2>
clustering/sub/ReadVariableOpclustering/sub/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2N
%encoder_layer0/BiasAdd/ReadVariableOp%encoder_layer0/BiasAdd/ReadVariableOp2L
$encoder_layer0/MatMul/ReadVariableOp$encoder_layer0/MatMul/ReadVariableOp2N
%encoder_layer1/BiasAdd/ReadVariableOp%encoder_layer1/BiasAdd/ReadVariableOp2L
$encoder_layer1/MatMul/ReadVariableOp$encoder_layer1/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
?
0__inference_encoder_layer1_layer_call_fn_3029850

inputs
unknown:	@?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer1_layer_call_and_return_conditional_losses_3029297p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
B__inference_model_layer_call_and_return_conditional_losses_3029622
input_encoder(
encoder_layer0_3029601:P@$
encoder_layer0_3029603:@)
encoder_layer1_3029607:	@?%
encoder_layer1_3029609:	? 
dense_3029613:	?
dense_3029615:$
clustering_3029618:
identity??"clustering/StatefulPartitionedCall?dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?&encoder_layer0/StatefulPartitionedCall?&encoder_layer1/StatefulPartitionedCall?
&encoder_layer0/StatefulPartitionedCallStatefulPartitionedCallinput_encoderencoder_layer0_3029601encoder_layer0_3029603*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer0_layer_call_and_return_conditional_losses_3029274?
dropout/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_3029480?
&encoder_layer1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0encoder_layer1_3029607encoder_layer1_3029609*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer1_layer_call_and_return_conditional_losses_3029297?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall/encoder_layer1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_3029447?
dense/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_3029613dense_3029615*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_3029320?
"clustering/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0clustering_3029618*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_clustering_layer_call_and_return_conditional_losses_3029412z
IdentityIdentity+clustering/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^clustering/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall'^encoder_layer0/StatefulPartitionedCall'^encoder_layer1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????P: : : : : : : 2H
"clustering/StatefulPartitionedCall"clustering/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2P
&encoder_layer0/StatefulPartitionedCall&encoder_layer0/StatefulPartitionedCall2P
&encoder_layer1/StatefulPartitionedCall&encoder_layer1/StatefulPartitionedCall:V R
'
_output_shapes
:?????????P
'
_user_specified_nameinput_encoder
?	
?
'__inference_model_layer_call_fn_3029687

inputs
unknown:P@
	unknown_0:@
	unknown_1:	@?
	unknown_2:	?
	unknown_3:	?
	unknown_4:
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_3029538o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????P: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
?
,__inference_clustering_layer_call_fn_3029913

inputs
unknown:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_clustering_layer_call_and_return_conditional_losses_3029353o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
+__inference_dropout_1_layer_call_fn_3029870

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_3029447p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_3029308

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?B
?
B__inference_model_layer_call_and_return_conditional_losses_3029795

inputs?
-encoder_layer0_matmul_readvariableop_resource:P@<
.encoder_layer0_biasadd_readvariableop_resource:@@
-encoder_layer1_matmul_readvariableop_resource:	@?=
.encoder_layer1_biasadd_readvariableop_resource:	?7
$dense_matmul_readvariableop_resource:	?3
%dense_biasadd_readvariableop_resource:8
&clustering_sub_readvariableop_resource:
identity??clustering/sub/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?%encoder_layer0/BiasAdd/ReadVariableOp?$encoder_layer0/MatMul/ReadVariableOp?%encoder_layer1/BiasAdd/ReadVariableOp?$encoder_layer1/MatMul/ReadVariableOp?
$encoder_layer0/MatMul/ReadVariableOpReadVariableOp-encoder_layer0_matmul_readvariableop_resource*
_output_shapes

:P@*
dtype0?
encoder_layer0/MatMulMatMulinputs,encoder_layer0/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
%encoder_layer0/BiasAdd/ReadVariableOpReadVariableOp.encoder_layer0_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
encoder_layer0/BiasAddBiasAddencoder_layer0/MatMul:product:0-encoder_layer0/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout/dropout/MulMulencoder_layer0/BiasAdd:output:0dropout/dropout/Const:output:0*
T0*'
_output_shapes
:?????????@d
dropout/dropout/ShapeShapeencoder_layer0/BiasAdd:output:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*

seed*c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@?
$encoder_layer1/MatMul/ReadVariableOpReadVariableOp-encoder_layer1_matmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0?
encoder_layer1/MatMulMatMuldropout/dropout/Mul_1:z:0,encoder_layer1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
%encoder_layer1/BiasAdd/ReadVariableOpReadVariableOp.encoder_layer1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
encoder_layer1/BiasAddBiasAddencoder_layer1/MatMul:product:0-encoder_layer1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dropout_1/dropout/MulMulencoder_layer1/BiasAdd:output:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:??????????f
dropout_1/dropout/ShapeShapeencoder_layer1/BiasAdd:output:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*

seed**
seed2e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense/MatMulMatMuldropout_1/dropout/Mul_1:z:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
clustering/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :?
clustering/ExpandDims
ExpandDimsdense/BiasAdd:output:0"clustering/ExpandDims/dim:output:0*
T0*+
_output_shapes
:??????????
clustering/sub/ReadVariableOpReadVariableOp&clustering_sub_readvariableop_resource*
_output_shapes

:*
dtype0?
clustering/subSubclustering/ExpandDims:output:0%clustering/sub/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????e
clustering/SquareSquareclustering/sub:z:0*
T0*+
_output_shapes
:?????????b
 clustering/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
clustering/SumSumclustering/Square:y:0)clustering/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????Y
clustering/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clustering/truedivRealDivclustering/Sum:output:0clustering/truediv/y:output:0*
T0*'
_output_shapes
:?????????U
clustering/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??|
clustering/addAddV2clustering/add/x:output:0clustering/truediv:z:0*
T0*'
_output_shapes
:?????????[
clustering/truediv_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
clustering/truediv_1RealDivclustering/truediv_1/x:output:0clustering/add:z:0*
T0*'
_output_shapes
:?????????U
clustering/pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??|
clustering/powPowclustering/truediv_1:z:0clustering/pow/y:output:0*
T0*'
_output_shapes
:?????????j
clustering/transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       ?
clustering/transpose	Transposeclustering/pow:z:0"clustering/transpose/perm:output:0*
T0*'
_output_shapes
:?????????d
"clustering/Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
clustering/Sum_1Sumclustering/pow:z:0+clustering/Sum_1/reduction_indices:output:0*
T0*#
_output_shapes
:??????????
clustering/truediv_2RealDivclustering/transpose:y:0clustering/Sum_1:output:0*
T0*'
_output_shapes
:?????????l
clustering/transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       ?
clustering/transpose_1	Transposeclustering/truediv_2:z:0$clustering/transpose_1/perm:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentityclustering/transpose_1:y:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^clustering/sub/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp&^encoder_layer0/BiasAdd/ReadVariableOp%^encoder_layer0/MatMul/ReadVariableOp&^encoder_layer1/BiasAdd/ReadVariableOp%^encoder_layer1/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????P: : : : : : : 2>
clustering/sub/ReadVariableOpclustering/sub/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2N
%encoder_layer0/BiasAdd/ReadVariableOp%encoder_layer0/BiasAdd/ReadVariableOp2L
$encoder_layer0/MatMul/ReadVariableOp$encoder_layer0/MatMul/ReadVariableOp2N
%encoder_layer1/BiasAdd/ReadVariableOp%encoder_layer1/BiasAdd/ReadVariableOp2L
$encoder_layer1/MatMul/ReadVariableOp$encoder_layer1/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?

e
F__inference_dropout_1_layer_call_and_return_conditional_losses_3029887

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
%__inference_signature_wrapper_3029649
input_encoder
unknown:P@
	unknown_0:@
	unknown_1:	@?
	unknown_2:	?
	unknown_3:	?
	unknown_4:
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_encoderunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__wrapped_model_3029257o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????P: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????P
'
_user_specified_nameinput_encoder
?
?
G__inference_clustering_layer_call_and_return_conditional_losses_3029947

inputs-
sub_readvariableop_resource:
identity??sub/ReadVariableOpP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????n
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes

:*
dtype0q
subSubExpandDims:output:0sub/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????O
SquareSquaresub:z:0*
T0*+
_output_shapes
:?????????W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :h
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??f
truedivRealDivSum:output:0truediv/y:output:0*
T0*'
_output_shapes
:?????????J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??[
addAddV2add/x:output:0truediv:z:0*
T0*'
_output_shapes
:?????????P
truediv_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
	truediv_1RealDivtruediv_1/x:output:0add:z:0*
T0*'
_output_shapes
:?????????J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??[
powPowtruediv_1:z:0pow/y:output:0*
T0*'
_output_shapes
:?????????_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       j
	transpose	Transposepow:z:0transpose/perm:output:0*
T0*'
_output_shapes
:?????????Y
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :e
Sum_1Sumpow:z:0 Sum_1/reduction_indices:output:0*
T0*#
_output_shapes
:?????????e
	truediv_2RealDivtranspose:y:0Sum_1:output:0*
T0*'
_output_shapes
:?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       t
transpose_1	Transposetruediv_2:z:0transpose_1/perm:output:0*
T0*'
_output_shapes
:?????????^
IdentityIdentitytranspose_1:y:0^NoOp*
T0*'
_output_shapes
:?????????[
NoOpNoOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2(
sub/ReadVariableOpsub/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
'__inference_model_layer_call_fn_3029574
input_encoder
unknown:P@
	unknown_0:@
	unknown_1:	@?
	unknown_2:	?
	unknown_3:	?
	unknown_4:
	unknown_5:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_encoderunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*)
_read_only_resource_inputs
	*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_3029538o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????P: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
'
_output_shapes
:?????????P
'
_user_specified_nameinput_encoder
??
?
 __inference__traced_save_3030081
file_prefix4
0savev2_encoder_layer0_kernel_read_readvariableop2
.savev2_encoder_layer0_bias_read_readvariableop4
0savev2_encoder_layer1_kernel_read_readvariableop2
.savev2_encoder_layer1_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop2
.savev2_clustering_clusters_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop;
7savev2_adam_encoder_layer0_kernel_m_read_readvariableop9
5savev2_adam_encoder_layer0_bias_m_read_readvariableop;
7savev2_adam_encoder_layer1_kernel_m_read_readvariableop9
5savev2_adam_encoder_layer1_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop9
5savev2_adam_clustering_clusters_m_read_readvariableop;
7savev2_adam_encoder_layer0_kernel_v_read_readvariableop9
5savev2_adam_encoder_layer0_bias_v_read_readvariableop;
7savev2_adam_encoder_layer1_kernel_v_read_readvariableop9
5savev2_adam_encoder_layer1_bias_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop9
5savev2_adam_clustering_clusters_v_read_readvariableop
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
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-3/clusters/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/clusters/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/clusters/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:00savev2_encoder_layer0_kernel_read_readvariableop.savev2_encoder_layer0_bias_read_readvariableop0savev2_encoder_layer1_kernel_read_readvariableop.savev2_encoder_layer1_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop.savev2_clustering_clusters_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop7savev2_adam_encoder_layer0_kernel_m_read_readvariableop5savev2_adam_encoder_layer0_bias_m_read_readvariableop7savev2_adam_encoder_layer1_kernel_m_read_readvariableop5savev2_adam_encoder_layer1_bias_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop5savev2_adam_clustering_clusters_m_read_readvariableop7savev2_adam_encoder_layer0_kernel_v_read_readvariableop5savev2_adam_encoder_layer0_bias_v_read_readvariableop7savev2_adam_encoder_layer1_kernel_v_read_readvariableop5savev2_adam_encoder_layer1_bias_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop5savev2_adam_clustering_clusters_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *+
dtypes!
2	?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :P@:@:	@?:?:	?::: : : : : : : :P@:@:	@?:?:	?:::P@:@:	@?:?:	?::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:P@: 

_output_shapes
:@:%!

_output_shapes
:	@?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::$ 

_output_shapes

::

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:P@: 

_output_shapes
:@:%!

_output_shapes
:	@?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

:P@: 

_output_shapes
:@:%!

_output_shapes
:	@?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::$ 

_output_shapes

::

_output_shapes
: 
?
?
B__inference_model_layer_call_and_return_conditional_losses_3029598
input_encoder(
encoder_layer0_3029577:P@$
encoder_layer0_3029579:@)
encoder_layer1_3029583:	@?%
encoder_layer1_3029585:	? 
dense_3029589:	?
dense_3029591:$
clustering_3029594:
identity??"clustering/StatefulPartitionedCall?dense/StatefulPartitionedCall?&encoder_layer0/StatefulPartitionedCall?&encoder_layer1/StatefulPartitionedCall?
&encoder_layer0/StatefulPartitionedCallStatefulPartitionedCallinput_encoderencoder_layer0_3029577encoder_layer0_3029579*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer0_layer_call_and_return_conditional_losses_3029274?
dropout/PartitionedCallPartitionedCall/encoder_layer0/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_3029285?
&encoder_layer1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0encoder_layer1_3029583encoder_layer1_3029585*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *T
fORM
K__inference_encoder_layer1_layer_call_and_return_conditional_losses_3029297?
dropout_1/PartitionedCallPartitionedCall/encoder_layer1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_3029308?
dense/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_3029589dense_3029591*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_3029320?
"clustering/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0clustering_3029594*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_clustering_layer_call_and_return_conditional_losses_3029353z
IdentityIdentity+clustering/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp#^clustering/StatefulPartitionedCall^dense/StatefulPartitionedCall'^encoder_layer0/StatefulPartitionedCall'^encoder_layer1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:?????????P: : : : : : : 2H
"clustering/StatefulPartitionedCall"clustering/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2P
&encoder_layer0/StatefulPartitionedCall&encoder_layer0/StatefulPartitionedCall2P
&encoder_layer1/StatefulPartitionedCall&encoder_layer1/StatefulPartitionedCall:V R
'
_output_shapes
:?????????P
'
_user_specified_nameinput_encoder
?
?
G__inference_clustering_layer_call_and_return_conditional_losses_3029974

inputs-
sub_readvariableop_resource:
identity??sub/ReadVariableOpP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:?????????n
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes

:*
dtype0q
subSubExpandDims:output:0sub/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????O
SquareSquaresub:z:0*
T0*+
_output_shapes
:?????????W
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :h
SumSum
Square:y:0Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????N
	truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??f
truedivRealDivSum:output:0truediv/y:output:0*
T0*'
_output_shapes
:?????????J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??[
addAddV2add/x:output:0truediv:z:0*
T0*'
_output_shapes
:?????????P
truediv_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
	truediv_1RealDivtruediv_1/x:output:0add:z:0*
T0*'
_output_shapes
:?????????J
pow/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ??[
powPowtruediv_1:z:0pow/y:output:0*
T0*'
_output_shapes
:?????????_
transpose/permConst*
_output_shapes
:*
dtype0*
valueB"       j
	transpose	Transposepow:z:0transpose/perm:output:0*
T0*'
_output_shapes
:?????????Y
Sum_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :e
Sum_1Sumpow:z:0 Sum_1/reduction_indices:output:0*
T0*#
_output_shapes
:?????????e
	truediv_2RealDivtranspose:y:0Sum_1:output:0*
T0*'
_output_shapes
:?????????a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       t
transpose_1	Transposetruediv_2:z:0transpose_1/perm:output:0*
T0*'
_output_shapes
:?????????^
IdentityIdentitytranspose_1:y:0^NoOp*
T0*'
_output_shapes
:?????????[
NoOpNoOp^sub/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2(
sub/ReadVariableOpsub/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_layer_call_and_return_conditional_losses_3029829

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
B__inference_dense_layer_call_and_return_conditional_losses_3029906

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
K__inference_encoder_layer1_layer_call_and_return_conditional_losses_3029297

inputs1
matmul_readvariableop_resource:	@?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@?*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

e
F__inference_dropout_1_layer_call_and_return_conditional_losses_3029447

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?r
?
#__inference__traced_restore_3030175
file_prefix8
&assignvariableop_encoder_layer0_kernel:P@4
&assignvariableop_1_encoder_layer0_bias:@;
(assignvariableop_2_encoder_layer1_kernel:	@?5
&assignvariableop_3_encoder_layer1_bias:	?2
assignvariableop_4_dense_kernel:	?+
assignvariableop_5_dense_bias:8
&assignvariableop_6_clustering_clusters:&
assignvariableop_7_adam_iter:	 (
assignvariableop_8_adam_beta_1: (
assignvariableop_9_adam_beta_2: (
assignvariableop_10_adam_decay: 0
&assignvariableop_11_adam_learning_rate: #
assignvariableop_12_total: #
assignvariableop_13_count: B
0assignvariableop_14_adam_encoder_layer0_kernel_m:P@<
.assignvariableop_15_adam_encoder_layer0_bias_m:@C
0assignvariableop_16_adam_encoder_layer1_kernel_m:	@?=
.assignvariableop_17_adam_encoder_layer1_bias_m:	?:
'assignvariableop_18_adam_dense_kernel_m:	?3
%assignvariableop_19_adam_dense_bias_m:@
.assignvariableop_20_adam_clustering_clusters_m:B
0assignvariableop_21_adam_encoder_layer0_kernel_v:P@<
.assignvariableop_22_adam_encoder_layer0_bias_v:@C
0assignvariableop_23_adam_encoder_layer1_kernel_v:	@?=
.assignvariableop_24_adam_encoder_layer1_bias_v:	?:
'assignvariableop_25_adam_dense_kernel_v:	?3
%assignvariableop_26_adam_dense_bias_v:@
.assignvariableop_27_adam_clustering_clusters_v:
identity_29??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-3/clusters/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/clusters/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBTlayer_with_weights-3/clusters/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp&assignvariableop_encoder_layer0_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp&assignvariableop_1_encoder_layer0_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp(assignvariableop_2_encoder_layer1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp&assignvariableop_3_encoder_layer1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_dense_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp&assignvariableop_6_clustering_clustersIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_iterIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_2Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_decayIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp&assignvariableop_11_adam_learning_rateIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp0assignvariableop_14_adam_encoder_layer0_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp.assignvariableop_15_adam_encoder_layer0_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp0assignvariableop_16_adam_encoder_layer1_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp.assignvariableop_17_adam_encoder_layer1_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp'assignvariableop_18_adam_dense_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp%assignvariableop_19_adam_dense_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp.assignvariableop_20_adam_clustering_clusters_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp0assignvariableop_21_adam_encoder_layer0_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp.assignvariableop_22_adam_encoder_layer0_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp0assignvariableop_23_adam_encoder_layer1_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp.assignvariableop_24_adam_encoder_layer1_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_dense_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp%assignvariableop_26_adam_dense_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp.assignvariableop_27_adam_clustering_clusters_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_29Identity_29:output:0*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?	
c
D__inference_dropout_layer_call_and_return_conditional_losses_3029480

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:?????????@C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:?????????@*
dtype0*

seed*[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??L>?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:?????????@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:?????????@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:?????????@Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
b
D__inference_dropout_layer_call_and_return_conditional_losses_3029285

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:?????????@[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:?????????@"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?	
?
K__inference_encoder_layer0_layer_call_and_return_conditional_losses_3029814

inputs0
matmul_readvariableop_resource:P@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????P
 
_user_specified_nameinputs
?
E
)__inference_dropout_layer_call_fn_3029819

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
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_3029285`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:?????????@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:?????????@:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
G
input_encoder6
serving_default_input_encoder:0?????????P>

clustering0
StatefulPartitionedCall:0?????????tensorflow/serving/predict:?~
?
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
	optimizer
		variables

trainable_variables
regularization_losses
	keras_api

signatures
h__call__
*i&call_and_return_all_conditional_losses
j_default_save_signature"
_tf_keras_network
"
_tf_keras_input_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
regularization_losses
	keras_api
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	variables
trainable_variables
 regularization_losses
!	keras_api
q__call__
*r&call_and_return_all_conditional_losses"
_tf_keras_layer
?

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
s__call__
*t&call_and_return_all_conditional_losses"
_tf_keras_layer
?
(clusters
)	variables
*trainable_variables
+regularization_losses
,	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
?
-iter

.beta_1

/beta_2
	0decay
1learning_ratemZm[m\m]"m^#m_(m`vavbvcvd"ve#vf(vg"
	optimizer
Q
0
1
2
3
"4
#5
(6"
trackable_list_wrapper
Q
0
1
2
3
"4
#5
(6"
trackable_list_wrapper
 "
trackable_list_wrapper
?
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
		variables

trainable_variables
regularization_losses
h__call__
j_default_save_signature
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
,
wserving_default"
signature_map
':%P@2encoder_layer0/kernel
!:@2encoder_layer0/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
7non_trainable_variables

8layers
9metrics
:layer_regularization_losses
;layer_metrics
	variables
trainable_variables
regularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
(:&	@?2encoder_layer1/kernel
": ?2encoder_layer1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
	variables
trainable_variables
regularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
	variables
trainable_variables
 regularization_losses
q__call__
*r&call_and_return_all_conditional_losses
&r"call_and_return_conditional_losses"
_generic_user_object
:	?2dense/kernel
:2
dense/bias
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Knon_trainable_variables

Llayers
Mmetrics
Nlayer_regularization_losses
Olayer_metrics
$	variables
%trainable_variables
&regularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
%:#2clustering/clusters
'
(0"
trackable_list_wrapper
'
(0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Pnon_trainable_variables

Qlayers
Rmetrics
Slayer_regularization_losses
Tlayer_metrics
)	variables
*trainable_variables
+regularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
'
U0"
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
N
	Vtotal
	Wcount
X	variables
Y	keras_api"
_tf_keras_metric
:  (2total
:  (2count
.
V0
W1"
trackable_list_wrapper
-
X	variables"
_generic_user_object
,:*P@2Adam/encoder_layer0/kernel/m
&:$@2Adam/encoder_layer0/bias/m
-:+	@?2Adam/encoder_layer1/kernel/m
':%?2Adam/encoder_layer1/bias/m
$:"	?2Adam/dense/kernel/m
:2Adam/dense/bias/m
*:(2Adam/clustering/clusters/m
,:*P@2Adam/encoder_layer0/kernel/v
&:$@2Adam/encoder_layer0/bias/v
-:+	@?2Adam/encoder_layer1/kernel/v
':%?2Adam/encoder_layer1/bias/v
$:"	?2Adam/dense/kernel/v
:2Adam/dense/bias/v
*:(2Adam/clustering/clusters/v
?2?
'__inference_model_layer_call_fn_3029375
'__inference_model_layer_call_fn_3029668
'__inference_model_layer_call_fn_3029687
'__inference_model_layer_call_fn_3029574?
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
?2?
B__inference_model_layer_call_and_return_conditional_losses_3029734
B__inference_model_layer_call_and_return_conditional_losses_3029795
B__inference_model_layer_call_and_return_conditional_losses_3029598
B__inference_model_layer_call_and_return_conditional_losses_3029622?
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
"__inference__wrapped_model_3029257input_encoder"?
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
0__inference_encoder_layer0_layer_call_fn_3029804?
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
K__inference_encoder_layer0_layer_call_and_return_conditional_losses_3029814?
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
?2?
)__inference_dropout_layer_call_fn_3029819
)__inference_dropout_layer_call_fn_3029824?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_dropout_layer_call_and_return_conditional_losses_3029829
D__inference_dropout_layer_call_and_return_conditional_losses_3029841?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
0__inference_encoder_layer1_layer_call_fn_3029850?
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
K__inference_encoder_layer1_layer_call_and_return_conditional_losses_3029860?
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
?2?
+__inference_dropout_1_layer_call_fn_3029865
+__inference_dropout_1_layer_call_fn_3029870?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
F__inference_dropout_1_layer_call_and_return_conditional_losses_3029875
F__inference_dropout_1_layer_call_and_return_conditional_losses_3029887?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
'__inference_dense_layer_call_fn_3029896?
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
B__inference_dense_layer_call_and_return_conditional_losses_3029906?
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
?2?
,__inference_clustering_layer_call_fn_3029913
,__inference_clustering_layer_call_fn_3029920?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?2?
G__inference_clustering_layer_call_and_return_conditional_losses_3029947
G__inference_clustering_layer_call_and_return_conditional_losses_3029974?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkwjkwargs
defaults? 

kwonlyargs?

jtraining%
kwonlydefaults?

trainingp 
annotations? *
 
?B?
%__inference_signature_wrapper_3029649input_encoder"?
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
"__inference__wrapped_model_3029257z"#(6?3
,?)
'?$
input_encoder?????????P
? "7?4
2

clustering$?!

clustering??????????
G__inference_clustering_layer_call_and_return_conditional_losses_3029947k(??<
%?"
 ?
inputs?????????
?

trainingp "%?"
?
0?????????
? ?
G__inference_clustering_layer_call_and_return_conditional_losses_3029974k(??<
%?"
 ?
inputs?????????
?

trainingp"%?"
?
0?????????
? ?
,__inference_clustering_layer_call_fn_3029913^(??<
%?"
 ?
inputs?????????
?

trainingp "???????????
,__inference_clustering_layer_call_fn_3029920^(??<
%?"
 ?
inputs?????????
?

trainingp"???????????
B__inference_dense_layer_call_and_return_conditional_losses_3029906]"#0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? {
'__inference_dense_layer_call_fn_3029896P"#0?-
&?#
!?
inputs??????????
? "???????????
F__inference_dropout_1_layer_call_and_return_conditional_losses_3029875^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
F__inference_dropout_1_layer_call_and_return_conditional_losses_3029887^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
+__inference_dropout_1_layer_call_fn_3029865Q4?1
*?'
!?
inputs??????????
p 
? "????????????
+__inference_dropout_1_layer_call_fn_3029870Q4?1
*?'
!?
inputs??????????
p
? "????????????
D__inference_dropout_layer_call_and_return_conditional_losses_3029829\3?0
)?&
 ?
inputs?????????@
p 
? "%?"
?
0?????????@
? ?
D__inference_dropout_layer_call_and_return_conditional_losses_3029841\3?0
)?&
 ?
inputs?????????@
p
? "%?"
?
0?????????@
? |
)__inference_dropout_layer_call_fn_3029819O3?0
)?&
 ?
inputs?????????@
p 
? "??????????@|
)__inference_dropout_layer_call_fn_3029824O3?0
)?&
 ?
inputs?????????@
p
? "??????????@?
K__inference_encoder_layer0_layer_call_and_return_conditional_losses_3029814\/?,
%?"
 ?
inputs?????????P
? "%?"
?
0?????????@
? ?
0__inference_encoder_layer0_layer_call_fn_3029804O/?,
%?"
 ?
inputs?????????P
? "??????????@?
K__inference_encoder_layer1_layer_call_and_return_conditional_losses_3029860]/?,
%?"
 ?
inputs?????????@
? "&?#
?
0??????????
? ?
0__inference_encoder_layer1_layer_call_fn_3029850P/?,
%?"
 ?
inputs?????????@
? "????????????
B__inference_model_layer_call_and_return_conditional_losses_3029598p"#(>?;
4?1
'?$
input_encoder?????????P
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_layer_call_and_return_conditional_losses_3029622p"#(>?;
4?1
'?$
input_encoder?????????P
p

 
? "%?"
?
0?????????
? ?
B__inference_model_layer_call_and_return_conditional_losses_3029734i"#(7?4
-?*
 ?
inputs?????????P
p 

 
? "%?"
?
0?????????
? ?
B__inference_model_layer_call_and_return_conditional_losses_3029795i"#(7?4
-?*
 ?
inputs?????????P
p

 
? "%?"
?
0?????????
? ?
'__inference_model_layer_call_fn_3029375c"#(>?;
4?1
'?$
input_encoder?????????P
p 

 
? "???????????
'__inference_model_layer_call_fn_3029574c"#(>?;
4?1
'?$
input_encoder?????????P
p

 
? "???????????
'__inference_model_layer_call_fn_3029668\"#(7?4
-?*
 ?
inputs?????????P
p 

 
? "???????????
'__inference_model_layer_call_fn_3029687\"#(7?4
-?*
 ?
inputs?????????P
p

 
? "???????????
%__inference_signature_wrapper_3029649?"#(G?D
? 
=?:
8
input_encoder'?$
input_encoder?????????P"7?4
2

clustering$?!

clustering?????????