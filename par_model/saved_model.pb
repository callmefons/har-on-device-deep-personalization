ө
��
B
AssignVariableOp
resource
value"dtype"
dtypetype�
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
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
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
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
executor_typestring �
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.4.02v2.4.0-rc4-71-g582c8d236cb8��
~
conv1d_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 * 
shared_nameconv1d_6/kernel
w
#conv1d_6/kernel/Read/ReadVariableOpReadVariableOpconv1d_6/kernel*"
_output_shapes
:	 *
dtype0
r
conv1d_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv1d_6/bias
k
!conv1d_6/bias/Read/ReadVariableOpReadVariableOpconv1d_6/bias*
_output_shapes
: *
dtype0
~
conv1d_7/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @* 
shared_nameconv1d_7/kernel
w
#conv1d_7/kernel/Read/ReadVariableOpReadVariableOpconv1d_7/kernel*"
_output_shapes
: @*
dtype0
r
conv1d_7/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_nameconv1d_7/bias
k
!conv1d_7/bias/Read/ReadVariableOpReadVariableOpconv1d_7/bias*
_output_shapes
:@*
dtype0
~
conv1d_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@`* 
shared_nameconv1d_8/kernel
w
#conv1d_8/kernel/Read/ReadVariableOpReadVariableOpconv1d_8/kernel*"
_output_shapes
:@`*
dtype0
r
conv1d_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*
shared_nameconv1d_8/bias
k
!conv1d_8/bias/Read/ReadVariableOpReadVariableOpconv1d_8/bias*
_output_shapes
:`*
dtype0
}
encoder/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:`�*
shared_nameencoder/kernel
v
"encoder/kernel/Read/ReadVariableOpReadVariableOpencoder/kernel*#
_output_shapes
:`�*
dtype0
q
encoder/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameencoder/bias
j
 encoder/bias/Read/ReadVariableOpReadVariableOpencoder/bias*
_output_shapes	
:�*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	�*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
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
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
�
Adam/conv1d_6/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *'
shared_nameAdam/conv1d_6/kernel/m
�
*Adam/conv1d_6/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_6/kernel/m*"
_output_shapes
:	 *
dtype0
�
Adam/conv1d_6/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv1d_6/bias/m
y
(Adam/conv1d_6/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_6/bias/m*
_output_shapes
: *
dtype0
�
Adam/conv1d_7/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv1d_7/kernel/m
�
*Adam/conv1d_7/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_7/kernel/m*"
_output_shapes
: @*
dtype0
�
Adam/conv1d_7/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv1d_7/bias/m
y
(Adam/conv1d_7/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_7/bias/m*
_output_shapes
:@*
dtype0
�
Adam/conv1d_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@`*'
shared_nameAdam/conv1d_8/kernel/m
�
*Adam/conv1d_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/kernel/m*"
_output_shapes
:@`*
dtype0
�
Adam/conv1d_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*%
shared_nameAdam/conv1d_8/bias/m
y
(Adam/conv1d_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/bias/m*
_output_shapes
:`*
dtype0
�
Adam/encoder/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:`�*&
shared_nameAdam/encoder/kernel/m
�
)Adam/encoder/kernel/m/Read/ReadVariableOpReadVariableOpAdam/encoder/kernel/m*#
_output_shapes
:`�*
dtype0

Adam/encoder/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/encoder/bias/m
x
'Adam/encoder/bias/m/Read/ReadVariableOpReadVariableOpAdam/encoder/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_nameAdam/dense_2/kernel/m
�
)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	�*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0
�
Adam/conv1d_6/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	 *'
shared_nameAdam/conv1d_6/kernel/v
�
*Adam/conv1d_6/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_6/kernel/v*"
_output_shapes
:	 *
dtype0
�
Adam/conv1d_6/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdam/conv1d_6/bias/v
y
(Adam/conv1d_6/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_6/bias/v*
_output_shapes
: *
dtype0
�
Adam/conv1d_7/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*'
shared_nameAdam/conv1d_7/kernel/v
�
*Adam/conv1d_7/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_7/kernel/v*"
_output_shapes
: @*
dtype0
�
Adam/conv1d_7/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*%
shared_nameAdam/conv1d_7/bias/v
y
(Adam/conv1d_7/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_7/bias/v*
_output_shapes
:@*
dtype0
�
Adam/conv1d_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@`*'
shared_nameAdam/conv1d_8/kernel/v
�
*Adam/conv1d_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/kernel/v*"
_output_shapes
:@`*
dtype0
�
Adam/conv1d_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`*%
shared_nameAdam/conv1d_8/bias/v
y
(Adam/conv1d_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv1d_8/bias/v*
_output_shapes
:`*
dtype0
�
Adam/encoder/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:`�*&
shared_nameAdam/encoder/kernel/v
�
)Adam/encoder/kernel/v/Read/ReadVariableOpReadVariableOpAdam/encoder/kernel/v*#
_output_shapes
:`�*
dtype0

Adam/encoder/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/encoder/bias/v
x
'Adam/encoder/bias/v/Read/ReadVariableOpReadVariableOpAdam/encoder/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*&
shared_nameAdam/dense_2/kernel/v
�
)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	�*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
�@
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�?
value�?B�? B�?
�
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
 
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
 	keras_api
R
!trainable_variables
"regularization_losses
#	variables
$	keras_api
h

%kernel
&bias
'trainable_variables
(regularization_losses
)	variables
*	keras_api
R
+trainable_variables
,regularization_losses
-	variables
.	keras_api
h

/kernel
0bias
1trainable_variables
2regularization_losses
3	variables
4	keras_api
R
5trainable_variables
6regularization_losses
7	variables
8	keras_api
h

9kernel
:bias
;trainable_variables
<regularization_losses
=	variables
>	keras_api
�
?iter

@beta_1

Abeta_2
	Bdecay
Clearning_ratem�m�m�m�%m�&m�/m�0m�9m�:m�v�v�v�v�%v�&v�/v�0v�9v�:v�
F
0
1
2
3
%4
&5
/6
07
98
:9
 
F
0
1
2
3
%4
&5
/6
07
98
:9
�
trainable_variables
Dmetrics
Elayer_metrics
Fnon_trainable_variables
Glayer_regularization_losses

Hlayers
regularization_losses
	variables
 
[Y
VARIABLE_VALUEconv1d_6/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_6/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
trainable_variables
Imetrics
Jlayer_metrics
Knon_trainable_variables
Llayer_regularization_losses

Mlayers
regularization_losses
	variables
 
 
 
�
trainable_variables
Nmetrics
Olayer_metrics
Pnon_trainable_variables
Qlayer_regularization_losses

Rlayers
regularization_losses
	variables
[Y
VARIABLE_VALUEconv1d_7/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_7/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
�
trainable_variables
Smetrics
Tlayer_metrics
Unon_trainable_variables
Vlayer_regularization_losses

Wlayers
regularization_losses
	variables
 
 
 
�
!trainable_variables
Xmetrics
Ylayer_metrics
Znon_trainable_variables
[layer_regularization_losses

\layers
"regularization_losses
#	variables
[Y
VARIABLE_VALUEconv1d_8/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv1d_8/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

%0
&1
 

%0
&1
�
'trainable_variables
]metrics
^layer_metrics
_non_trainable_variables
`layer_regularization_losses

alayers
(regularization_losses
)	variables
 
 
 
�
+trainable_variables
bmetrics
clayer_metrics
dnon_trainable_variables
elayer_regularization_losses

flayers
,regularization_losses
-	variables
ZX
VARIABLE_VALUEencoder/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEencoder/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

/0
01
 

/0
01
�
1trainable_variables
gmetrics
hlayer_metrics
inon_trainable_variables
jlayer_regularization_losses

klayers
2regularization_losses
3	variables
 
 
 
�
5trainable_variables
lmetrics
mlayer_metrics
nnon_trainable_variables
olayer_regularization_losses

players
6regularization_losses
7	variables
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

90
:1
 

90
:1
�
;trainable_variables
qmetrics
rlayer_metrics
snon_trainable_variables
tlayer_regularization_losses

ulayers
<regularization_losses
=	variables
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

v0
w1
 
 
 
F
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
4
	xtotal
	ycount
z	variables
{	keras_api
E
	|total
	}count
~
_fn_kwargs
	variables
�	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

x0
y1

z	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

|0
}1

	variables
~|
VARIABLE_VALUEAdam/conv1d_6/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_6/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_7/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_7/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_8/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_8/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/encoder/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/encoder/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_6/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_6/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_7/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_7/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv1d_8/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv1d_8/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/encoder/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/encoder/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
�
serving_default_input_3Placeholder*,
_output_shapes
:����������	*
dtype0*!
shape:����������	
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_3conv1d_6/kernelconv1d_6/biasconv1d_7/kernelconv1d_7/biasconv1d_8/kernelconv1d_8/biasencoder/kernelencoder/biasdense_2/kerneldense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_37617
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv1d_6/kernel/Read/ReadVariableOp!conv1d_6/bias/Read/ReadVariableOp#conv1d_7/kernel/Read/ReadVariableOp!conv1d_7/bias/Read/ReadVariableOp#conv1d_8/kernel/Read/ReadVariableOp!conv1d_8/bias/Read/ReadVariableOp"encoder/kernel/Read/ReadVariableOp encoder/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/conv1d_6/kernel/m/Read/ReadVariableOp(Adam/conv1d_6/bias/m/Read/ReadVariableOp*Adam/conv1d_7/kernel/m/Read/ReadVariableOp(Adam/conv1d_7/bias/m/Read/ReadVariableOp*Adam/conv1d_8/kernel/m/Read/ReadVariableOp(Adam/conv1d_8/bias/m/Read/ReadVariableOp)Adam/encoder/kernel/m/Read/ReadVariableOp'Adam/encoder/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp*Adam/conv1d_6/kernel/v/Read/ReadVariableOp(Adam/conv1d_6/bias/v/Read/ReadVariableOp*Adam/conv1d_7/kernel/v/Read/ReadVariableOp(Adam/conv1d_7/bias/v/Read/ReadVariableOp*Adam/conv1d_8/kernel/v/Read/ReadVariableOp(Adam/conv1d_8/bias/v/Read/ReadVariableOp)Adam/encoder/kernel/v/Read/ReadVariableOp'Adam/encoder/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_38297
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_6/kernelconv1d_6/biasconv1d_7/kernelconv1d_7/biasconv1d_8/kernelconv1d_8/biasencoder/kernelencoder/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv1d_6/kernel/mAdam/conv1d_6/bias/mAdam/conv1d_7/kernel/mAdam/conv1d_7/bias/mAdam/conv1d_8/kernel/mAdam/conv1d_8/bias/mAdam/encoder/kernel/mAdam/encoder/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/conv1d_6/kernel/vAdam/conv1d_6/bias/vAdam/conv1d_7/kernel/vAdam/conv1d_7/bias/vAdam/conv1d_8/kernel/vAdam/conv1d_8/bias/vAdam/encoder/kernel/vAdam/encoder/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/v*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_38424ٱ
�
E
)__inference_dropout_6_layer_call_fn_37928

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_371042
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������i 2

Identity"
identityIdentity:output:0**
_input_shapes
:���������i :S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs
�
}
(__inference_conv1d_6_layer_call_fn_37901

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_6_layer_call_and_return_conditional_losses_370712
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������i 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :����������	::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������	
 
_user_specified_nameinputs
�
}
(__inference_conv1d_7_layer_call_fn_37965

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������Z@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_7_layer_call_and_return_conditional_losses_371392
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������Z@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:���������i ::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs
�
m
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_37039

inputs
identityp
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Max/reduction_indicest
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:������������������2
Maxi
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:������������������2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
}
(__inference_conv1d_8_layer_call_fn_38029

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������S`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_8_layer_call_and_return_conditional_losses_372072
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������S`2

Identity"
identityIdentity:output:0*2
_input_shapes!
:���������Z@::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������Z@
 
_user_specified_nameinputs
��
�
!__inference__traced_restore_38424
file_prefix$
 assignvariableop_conv1d_6_kernel$
 assignvariableop_1_conv1d_6_bias&
"assignvariableop_2_conv1d_7_kernel$
 assignvariableop_3_conv1d_7_bias&
"assignvariableop_4_conv1d_8_kernel$
 assignvariableop_5_conv1d_8_bias%
!assignvariableop_6_encoder_kernel#
assignvariableop_7_encoder_bias%
!assignvariableop_8_dense_2_kernel#
assignvariableop_9_dense_2_bias!
assignvariableop_10_adam_iter#
assignvariableop_11_adam_beta_1#
assignvariableop_12_adam_beta_2"
assignvariableop_13_adam_decay*
&assignvariableop_14_adam_learning_rate
assignvariableop_15_total
assignvariableop_16_count
assignvariableop_17_total_1
assignvariableop_18_count_1.
*assignvariableop_19_adam_conv1d_6_kernel_m,
(assignvariableop_20_adam_conv1d_6_bias_m.
*assignvariableop_21_adam_conv1d_7_kernel_m,
(assignvariableop_22_adam_conv1d_7_bias_m.
*assignvariableop_23_adam_conv1d_8_kernel_m,
(assignvariableop_24_adam_conv1d_8_bias_m-
)assignvariableop_25_adam_encoder_kernel_m+
'assignvariableop_26_adam_encoder_bias_m-
)assignvariableop_27_adam_dense_2_kernel_m+
'assignvariableop_28_adam_dense_2_bias_m.
*assignvariableop_29_adam_conv1d_6_kernel_v,
(assignvariableop_30_adam_conv1d_6_bias_v.
*assignvariableop_31_adam_conv1d_7_kernel_v,
(assignvariableop_32_adam_conv1d_7_bias_v.
*assignvariableop_33_adam_conv1d_8_kernel_v,
(assignvariableop_34_adam_conv1d_8_bias_v-
)assignvariableop_35_adam_encoder_kernel_v+
'assignvariableop_36_adam_encoder_bias_v-
)assignvariableop_37_adam_dense_2_kernel_v+
'assignvariableop_38_adam_dense_2_bias_v
identity_40��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*�
value�B�(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices�
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity�
AssignVariableOpAssignVariableOp assignvariableop_conv1d_6_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1�
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_6_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv1d_7_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3�
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv1d_7_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv1d_8_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5�
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv1d_8_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6�
AssignVariableOp_6AssignVariableOp!assignvariableop_6_encoder_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7�
AssignVariableOp_7AssignVariableOpassignvariableop_7_encoder_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8�
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9�
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_10�
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11�
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12�
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13�
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14�
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15�
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16�
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17�
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18�
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19�
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_conv1d_6_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20�
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_conv1d_6_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21�
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_conv1d_7_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22�
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_conv1d_7_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_conv1d_8_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_conv1d_8_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25�
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_encoder_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26�
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_encoder_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27�
AssignVariableOp_27AssignVariableOp)assignvariableop_27_adam_dense_2_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28�
AssignVariableOp_28AssignVariableOp'assignvariableop_28_adam_dense_2_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29�
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_conv1d_6_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30�
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_conv1d_6_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31�
AssignVariableOp_31AssignVariableOp*assignvariableop_31_adam_conv1d_7_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32�
AssignVariableOp_32AssignVariableOp(assignvariableop_32_adam_conv1d_7_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33�
AssignVariableOp_33AssignVariableOp*assignvariableop_33_adam_conv1d_8_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34�
AssignVariableOp_34AssignVariableOp(assignvariableop_34_adam_conv1d_8_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35�
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_encoder_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36�
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_encoder_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37�
AssignVariableOp_37AssignVariableOp)assignvariableop_37_adam_dense_2_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38�
AssignVariableOp_38AssignVariableOp'assignvariableop_38_adam_dense_2_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_389
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp�
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_39�
Identity_40IdentityIdentity_39:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_40"#
identity_40Identity_40:output:0*�
_input_shapes�
�: :::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
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
�
b
D__inference_dropout_7_layer_call_and_return_conditional_losses_37982

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:���������Z@2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������Z@2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:���������Z@:S O
+
_output_shapes
:���������Z@
 
_user_specified_nameinputs
�
�
'__inference_model_2_layer_call_fn_37566
input_3
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_375432
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������	::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:����������	
!
_user_specified_name	input_3
�
�
C__inference_conv1d_7_layer_call_and_return_conditional_losses_37956

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOp�1conv1d_7/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������i 2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������Z@*
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:���������Z@*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������Z@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������Z@2
Relu�
1conv1d_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype023
1conv1d_7/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_7/kernel/Regularizer/SquareSquare9conv1d_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: @2$
"conv1d_7/kernel/Regularizer/Square�
!conv1d_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_7/kernel/Regularizer/Const�
conv1d_7/kernel/Regularizer/SumSum&conv1d_7/kernel/Regularizer/Square:y:0*conv1d_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_7/kernel/Regularizer/Sum�
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_7/kernel/Regularizer/mul/x�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0(conv1d_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_7/kernel/Regularizer/mul�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp2^conv1d_7/kernel/Regularizer/Square/ReadVariableOp*
T0*+
_output_shapes
:���������Z@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:���������i ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_7/kernel/Regularizer/Square/ReadVariableOp1conv1d_7/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs
�
b
)__inference_dropout_8_layer_call_fn_38051

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������S`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_372352
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������S`2

Identity"
identityIdentity:output:0**
_input_shapes
:���������S`22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������S`
 
_user_specified_nameinputs
��
�	
B__inference_model_2_layer_call_and_return_conditional_losses_37726

inputs8
4conv1d_6_conv1d_expanddims_1_readvariableop_resource,
(conv1d_6_biasadd_readvariableop_resource8
4conv1d_7_conv1d_expanddims_1_readvariableop_resource,
(conv1d_7_biasadd_readvariableop_resource8
4conv1d_8_conv1d_expanddims_1_readvariableop_resource,
(conv1d_8_biasadd_readvariableop_resource7
3encoder_conv1d_expanddims_1_readvariableop_resource+
'encoder_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identity��conv1d_6/BiasAdd/ReadVariableOp�+conv1d_6/conv1d/ExpandDims_1/ReadVariableOp�1conv1d_6/kernel/Regularizer/Square/ReadVariableOp�conv1d_7/BiasAdd/ReadVariableOp�+conv1d_7/conv1d/ExpandDims_1/ReadVariableOp�1conv1d_7/kernel/Regularizer/Square/ReadVariableOp�conv1d_8/BiasAdd/ReadVariableOp�+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp�1conv1d_8/kernel/Regularizer/Square/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�encoder/BiasAdd/ReadVariableOp�*encoder/conv1d/ExpandDims_1/ReadVariableOp�0encoder/kernel/Regularizer/Square/ReadVariableOp�
conv1d_6/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
conv1d_6/conv1d/ExpandDims/dim�
conv1d_6/conv1d/ExpandDims
ExpandDimsinputs'conv1d_6/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������	2
conv1d_6/conv1d/ExpandDims�
+conv1d_6/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	 *
dtype02-
+conv1d_6/conv1d/ExpandDims_1/ReadVariableOp�
 conv1d_6/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_6/conv1d/ExpandDims_1/dim�
conv1d_6/conv1d/ExpandDims_1
ExpandDims3conv1d_6/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_6/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	 2
conv1d_6/conv1d/ExpandDims_1�
conv1d_6/conv1dConv2D#conv1d_6/conv1d/ExpandDims:output:0%conv1d_6/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������i *
paddingVALID*
strides
2
conv1d_6/conv1d�
conv1d_6/conv1d/SqueezeSqueezeconv1d_6/conv1d:output:0*
T0*+
_output_shapes
:���������i *
squeeze_dims

���������2
conv1d_6/conv1d/Squeeze�
conv1d_6/BiasAdd/ReadVariableOpReadVariableOp(conv1d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_6/BiasAdd/ReadVariableOp�
conv1d_6/BiasAddBiasAdd conv1d_6/conv1d/Squeeze:output:0'conv1d_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������i 2
conv1d_6/BiasAddw
conv1d_6/ReluReluconv1d_6/BiasAdd:output:0*
T0*+
_output_shapes
:���������i 2
conv1d_6/Reluw
dropout_6/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout_6/dropout/Const�
dropout_6/dropout/MulMulconv1d_6/Relu:activations:0 dropout_6/dropout/Const:output:0*
T0*+
_output_shapes
:���������i 2
dropout_6/dropout/Mul}
dropout_6/dropout/ShapeShapeconv1d_6/Relu:activations:0*
T0*
_output_shapes
:2
dropout_6/dropout/Shape�
.dropout_6/dropout/random_uniform/RandomUniformRandomUniform dropout_6/dropout/Shape:output:0*
T0*+
_output_shapes
:���������i *
dtype020
.dropout_6/dropout/random_uniform/RandomUniform�
 dropout_6/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2"
 dropout_6/dropout/GreaterEqual/y�
dropout_6/dropout/GreaterEqualGreaterEqual7dropout_6/dropout/random_uniform/RandomUniform:output:0)dropout_6/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������i 2 
dropout_6/dropout/GreaterEqual�
dropout_6/dropout/CastCast"dropout_6/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������i 2
dropout_6/dropout/Cast�
dropout_6/dropout/Mul_1Muldropout_6/dropout/Mul:z:0dropout_6/dropout/Cast:y:0*
T0*+
_output_shapes
:���������i 2
dropout_6/dropout/Mul_1�
conv1d_7/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
conv1d_7/conv1d/ExpandDims/dim�
conv1d_7/conv1d/ExpandDims
ExpandDimsdropout_6/dropout/Mul_1:z:0'conv1d_7/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������i 2
conv1d_7/conv1d/ExpandDims�
+conv1d_7/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02-
+conv1d_7/conv1d/ExpandDims_1/ReadVariableOp�
 conv1d_7/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_7/conv1d/ExpandDims_1/dim�
conv1d_7/conv1d/ExpandDims_1
ExpandDims3conv1d_7/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_7/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d_7/conv1d/ExpandDims_1�
conv1d_7/conv1dConv2D#conv1d_7/conv1d/ExpandDims:output:0%conv1d_7/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������Z@*
paddingVALID*
strides
2
conv1d_7/conv1d�
conv1d_7/conv1d/SqueezeSqueezeconv1d_7/conv1d:output:0*
T0*+
_output_shapes
:���������Z@*
squeeze_dims

���������2
conv1d_7/conv1d/Squeeze�
conv1d_7/BiasAdd/ReadVariableOpReadVariableOp(conv1d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv1d_7/BiasAdd/ReadVariableOp�
conv1d_7/BiasAddBiasAdd conv1d_7/conv1d/Squeeze:output:0'conv1d_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������Z@2
conv1d_7/BiasAddw
conv1d_7/ReluReluconv1d_7/BiasAdd:output:0*
T0*+
_output_shapes
:���������Z@2
conv1d_7/Reluw
dropout_7/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout_7/dropout/Const�
dropout_7/dropout/MulMulconv1d_7/Relu:activations:0 dropout_7/dropout/Const:output:0*
T0*+
_output_shapes
:���������Z@2
dropout_7/dropout/Mul}
dropout_7/dropout/ShapeShapeconv1d_7/Relu:activations:0*
T0*
_output_shapes
:2
dropout_7/dropout/Shape�
.dropout_7/dropout/random_uniform/RandomUniformRandomUniform dropout_7/dropout/Shape:output:0*
T0*+
_output_shapes
:���������Z@*
dtype020
.dropout_7/dropout/random_uniform/RandomUniform�
 dropout_7/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2"
 dropout_7/dropout/GreaterEqual/y�
dropout_7/dropout/GreaterEqualGreaterEqual7dropout_7/dropout/random_uniform/RandomUniform:output:0)dropout_7/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������Z@2 
dropout_7/dropout/GreaterEqual�
dropout_7/dropout/CastCast"dropout_7/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������Z@2
dropout_7/dropout/Cast�
dropout_7/dropout/Mul_1Muldropout_7/dropout/Mul:z:0dropout_7/dropout/Cast:y:0*
T0*+
_output_shapes
:���������Z@2
dropout_7/dropout/Mul_1�
conv1d_8/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
conv1d_8/conv1d/ExpandDims/dim�
conv1d_8/conv1d/ExpandDims
ExpandDimsdropout_7/dropout/Mul_1:z:0'conv1d_8/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������Z@2
conv1d_8/conv1d/ExpandDims�
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_8_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@`*
dtype02-
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp�
 conv1d_8/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_8/conv1d/ExpandDims_1/dim�
conv1d_8/conv1d/ExpandDims_1
ExpandDims3conv1d_8/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_8/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@`2
conv1d_8/conv1d/ExpandDims_1�
conv1d_8/conv1dConv2D#conv1d_8/conv1d/ExpandDims:output:0%conv1d_8/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������S`*
paddingVALID*
strides
2
conv1d_8/conv1d�
conv1d_8/conv1d/SqueezeSqueezeconv1d_8/conv1d:output:0*
T0*+
_output_shapes
:���������S`*
squeeze_dims

���������2
conv1d_8/conv1d/Squeeze�
conv1d_8/BiasAdd/ReadVariableOpReadVariableOp(conv1d_8_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02!
conv1d_8/BiasAdd/ReadVariableOp�
conv1d_8/BiasAddBiasAdd conv1d_8/conv1d/Squeeze:output:0'conv1d_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������S`2
conv1d_8/BiasAddw
conv1d_8/ReluReluconv1d_8/BiasAdd:output:0*
T0*+
_output_shapes
:���������S`2
conv1d_8/Reluw
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout_8/dropout/Const�
dropout_8/dropout/MulMulconv1d_8/Relu:activations:0 dropout_8/dropout/Const:output:0*
T0*+
_output_shapes
:���������S`2
dropout_8/dropout/Mul}
dropout_8/dropout/ShapeShapeconv1d_8/Relu:activations:0*
T0*
_output_shapes
:2
dropout_8/dropout/Shape�
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*+
_output_shapes
:���������S`*
dtype020
.dropout_8/dropout/random_uniform/RandomUniform�
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2"
 dropout_8/dropout/GreaterEqual/y�
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������S`2 
dropout_8/dropout/GreaterEqual�
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������S`2
dropout_8/dropout/Cast�
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*+
_output_shapes
:���������S`2
dropout_8/dropout/Mul_1�
encoder/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
encoder/conv1d/ExpandDims/dim�
encoder/conv1d/ExpandDims
ExpandDimsdropout_8/dropout/Mul_1:z:0&encoder/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������S`2
encoder/conv1d/ExpandDims�
*encoder/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp3encoder_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`�*
dtype02,
*encoder/conv1d/ExpandDims_1/ReadVariableOp�
encoder/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
encoder/conv1d/ExpandDims_1/dim�
encoder/conv1d/ExpandDims_1
ExpandDims2encoder/conv1d/ExpandDims_1/ReadVariableOp:value:0(encoder/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:`�2
encoder/conv1d/ExpandDims_1�
encoder/conv1dConv2D"encoder/conv1d/ExpandDims:output:0$encoder/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������P�*
paddingVALID*
strides
2
encoder/conv1d�
encoder/conv1d/SqueezeSqueezeencoder/conv1d:output:0*
T0*,
_output_shapes
:���������P�*
squeeze_dims

���������2
encoder/conv1d/Squeeze�
encoder/BiasAdd/ReadVariableOpReadVariableOp'encoder_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
encoder/BiasAdd/ReadVariableOp�
encoder/BiasAddBiasAddencoder/conv1d/Squeeze:output:0&encoder/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������P�2
encoder/BiasAddu
encoder/ReluReluencoder/BiasAdd:output:0*
T0*,
_output_shapes
:���������P�2
encoder/Relu�
,global_max_pooling1d_2/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,global_max_pooling1d_2/Max/reduction_indices�
global_max_pooling1d_2/MaxMaxencoder/Relu:activations:05global_max_pooling1d_2/Max/reduction_indices:output:0*
T0*(
_output_shapes
:����������2
global_max_pooling1d_2/Max�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMul#global_max_pooling1d_2/Max:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_2/Softmax�
1conv1d_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	 *
dtype023
1conv1d_6/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_6/kernel/Regularizer/SquareSquare9conv1d_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	 2$
"conv1d_6/kernel/Regularizer/Square�
!conv1d_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_6/kernel/Regularizer/Const�
conv1d_6/kernel/Regularizer/SumSum&conv1d_6/kernel/Regularizer/Square:y:0*conv1d_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_6/kernel/Regularizer/Sum�
!conv1d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_6/kernel/Regularizer/mul/x�
conv1d_6/kernel/Regularizer/mulMul*conv1d_6/kernel/Regularizer/mul/x:output:0(conv1d_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_6/kernel/Regularizer/mul�
1conv1d_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype023
1conv1d_7/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_7/kernel/Regularizer/SquareSquare9conv1d_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: @2$
"conv1d_7/kernel/Regularizer/Square�
!conv1d_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_7/kernel/Regularizer/Const�
conv1d_7/kernel/Regularizer/SumSum&conv1d_7/kernel/Regularizer/Square:y:0*conv1d_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_7/kernel/Regularizer/Sum�
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_7/kernel/Regularizer/mul/x�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0(conv1d_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_7/kernel/Regularizer/mul�
1conv1d_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_8_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@`*
dtype023
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_8/kernel/Regularizer/SquareSquare9conv1d_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@`2$
"conv1d_8/kernel/Regularizer/Square�
!conv1d_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_8/kernel/Regularizer/Const�
conv1d_8/kernel/Regularizer/SumSum&conv1d_8/kernel/Regularizer/Square:y:0*conv1d_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/Sum�
!conv1d_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_8/kernel/Regularizer/mul/x�
conv1d_8/kernel/Regularizer/mulMul*conv1d_8/kernel/Regularizer/mul/x:output:0(conv1d_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/mul�
0encoder/kernel/Regularizer/Square/ReadVariableOpReadVariableOp3encoder_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`�*
dtype022
0encoder/kernel/Regularizer/Square/ReadVariableOp�
!encoder/kernel/Regularizer/SquareSquare8encoder/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:`�2#
!encoder/kernel/Regularizer/Square�
 encoder/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 encoder/kernel/Regularizer/Const�
encoder/kernel/Regularizer/SumSum%encoder/kernel/Regularizer/Square:y:0)encoder/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
encoder/kernel/Regularizer/Sum�
 encoder/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82"
 encoder/kernel/Regularizer/mul/x�
encoder/kernel/Regularizer/mulMul)encoder/kernel/Regularizer/mul/x:output:0'encoder/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
encoder/kernel/Regularizer/mul�
IdentityIdentitydense_2/Softmax:softmax:0 ^conv1d_6/BiasAdd/ReadVariableOp,^conv1d_6/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_6/kernel/Regularizer/Square/ReadVariableOp ^conv1d_7/BiasAdd/ReadVariableOp,^conv1d_7/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_7/kernel/Regularizer/Square/ReadVariableOp ^conv1d_8/BiasAdd/ReadVariableOp,^conv1d_8/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_8/kernel/Regularizer/Square/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^encoder/BiasAdd/ReadVariableOp+^encoder/conv1d/ExpandDims_1/ReadVariableOp1^encoder/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������	::::::::::2B
conv1d_6/BiasAdd/ReadVariableOpconv1d_6/BiasAdd/ReadVariableOp2Z
+conv1d_6/conv1d/ExpandDims_1/ReadVariableOp+conv1d_6/conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_6/kernel/Regularizer/Square/ReadVariableOp1conv1d_6/kernel/Regularizer/Square/ReadVariableOp2B
conv1d_7/BiasAdd/ReadVariableOpconv1d_7/BiasAdd/ReadVariableOp2Z
+conv1d_7/conv1d/ExpandDims_1/ReadVariableOp+conv1d_7/conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_7/kernel/Regularizer/Square/ReadVariableOp1conv1d_7/kernel/Regularizer/Square/ReadVariableOp2B
conv1d_8/BiasAdd/ReadVariableOpconv1d_8/BiasAdd/ReadVariableOp2Z
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp1conv1d_8/kernel/Regularizer/Square/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
encoder/BiasAdd/ReadVariableOpencoder/BiasAdd/ReadVariableOp2X
*encoder/conv1d/ExpandDims_1/ReadVariableOp*encoder/conv1d/ExpandDims_1/ReadVariableOp2d
0encoder/kernel/Regularizer/Square/ReadVariableOp0encoder/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:����������	
 
_user_specified_nameinputs
�R
�
__inference__traced_save_38297
file_prefix.
*savev2_conv1d_6_kernel_read_readvariableop,
(savev2_conv1d_6_bias_read_readvariableop.
*savev2_conv1d_7_kernel_read_readvariableop,
(savev2_conv1d_7_bias_read_readvariableop.
*savev2_conv1d_8_kernel_read_readvariableop,
(savev2_conv1d_8_bias_read_readvariableop-
)savev2_encoder_kernel_read_readvariableop+
'savev2_encoder_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_conv1d_6_kernel_m_read_readvariableop3
/savev2_adam_conv1d_6_bias_m_read_readvariableop5
1savev2_adam_conv1d_7_kernel_m_read_readvariableop3
/savev2_adam_conv1d_7_bias_m_read_readvariableop5
1savev2_adam_conv1d_8_kernel_m_read_readvariableop3
/savev2_adam_conv1d_8_bias_m_read_readvariableop4
0savev2_adam_encoder_kernel_m_read_readvariableop2
.savev2_adam_encoder_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop5
1savev2_adam_conv1d_6_kernel_v_read_readvariableop3
/savev2_adam_conv1d_6_bias_v_read_readvariableop5
1savev2_adam_conv1d_7_kernel_v_read_readvariableop3
/savev2_adam_conv1d_7_bias_v_read_readvariableop5
1savev2_adam_conv1d_8_kernel_v_read_readvariableop3
/savev2_adam_conv1d_8_bias_v_read_readvariableop4
0savev2_adam_encoder_kernel_v_read_readvariableop2
.savev2_adam_encoder_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpoints�
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard�
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename�
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*�
value�B�(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices�
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv1d_6_kernel_read_readvariableop(savev2_conv1d_6_bias_read_readvariableop*savev2_conv1d_7_kernel_read_readvariableop(savev2_conv1d_7_bias_read_readvariableop*savev2_conv1d_8_kernel_read_readvariableop(savev2_conv1d_8_bias_read_readvariableop)savev2_encoder_kernel_read_readvariableop'savev2_encoder_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_conv1d_6_kernel_m_read_readvariableop/savev2_adam_conv1d_6_bias_m_read_readvariableop1savev2_adam_conv1d_7_kernel_m_read_readvariableop/savev2_adam_conv1d_7_bias_m_read_readvariableop1savev2_adam_conv1d_8_kernel_m_read_readvariableop/savev2_adam_conv1d_8_bias_m_read_readvariableop0savev2_adam_encoder_kernel_m_read_readvariableop.savev2_adam_encoder_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop1savev2_adam_conv1d_6_kernel_v_read_readvariableop/savev2_adam_conv1d_6_bias_v_read_readvariableop1savev2_adam_conv1d_7_kernel_v_read_readvariableop/savev2_adam_conv1d_7_bias_v_read_readvariableop1savev2_adam_conv1d_8_kernel_v_read_readvariableop/savev2_adam_conv1d_8_bias_v_read_readvariableop0savev2_adam_encoder_kernel_v_read_readvariableop.savev2_adam_encoder_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	2
SaveV2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*�
_input_shapes�
�: :	 : : @:@:@`:`:`�:�:	�:: : : : : : : : : :	 : : @:@:@`:`:`�:�:	�::	 : : @:@:@`:`:`�:�:	�:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:($
"
_output_shapes
:	 : 

_output_shapes
: :($
"
_output_shapes
: @: 

_output_shapes
:@:($
"
_output_shapes
:@`: 

_output_shapes
:`:)%
#
_output_shapes
:`�:!

_output_shapes	
:�:%	!

_output_shapes
:	�: 


_output_shapes
::
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :($
"
_output_shapes
:	 : 

_output_shapes
: :($
"
_output_shapes
: @: 

_output_shapes
:@:($
"
_output_shapes
:@`: 

_output_shapes
:`:)%
#
_output_shapes
:`�:!

_output_shapes	
:�:%!

_output_shapes
:	�: 

_output_shapes
::($
"
_output_shapes
:	 : 

_output_shapes
: :( $
"
_output_shapes
: @: !

_output_shapes
:@:("$
"
_output_shapes
:@`: #

_output_shapes
:`:)$%
#
_output_shapes
:`�:!%

_output_shapes	
:�:%&!

_output_shapes
:	�: '

_output_shapes
::(

_output_shapes
: 
�
c
D__inference_dropout_8_layer_call_and_return_conditional_losses_37235

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������S`2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������S`*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������S`2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������S`2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������S`2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������S`2

Identity"
identityIdentity:output:0**
_input_shapes
:���������S`:S O
+
_output_shapes
:���������S`
 
_user_specified_nameinputs
�
�	
B__inference_model_2_layer_call_and_return_conditional_losses_37814

inputs8
4conv1d_6_conv1d_expanddims_1_readvariableop_resource,
(conv1d_6_biasadd_readvariableop_resource8
4conv1d_7_conv1d_expanddims_1_readvariableop_resource,
(conv1d_7_biasadd_readvariableop_resource8
4conv1d_8_conv1d_expanddims_1_readvariableop_resource,
(conv1d_8_biasadd_readvariableop_resource7
3encoder_conv1d_expanddims_1_readvariableop_resource+
'encoder_biasadd_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identity��conv1d_6/BiasAdd/ReadVariableOp�+conv1d_6/conv1d/ExpandDims_1/ReadVariableOp�1conv1d_6/kernel/Regularizer/Square/ReadVariableOp�conv1d_7/BiasAdd/ReadVariableOp�+conv1d_7/conv1d/ExpandDims_1/ReadVariableOp�1conv1d_7/kernel/Regularizer/Square/ReadVariableOp�conv1d_8/BiasAdd/ReadVariableOp�+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp�1conv1d_8/kernel/Regularizer/Square/ReadVariableOp�dense_2/BiasAdd/ReadVariableOp�dense_2/MatMul/ReadVariableOp�encoder/BiasAdd/ReadVariableOp�*encoder/conv1d/ExpandDims_1/ReadVariableOp�0encoder/kernel/Regularizer/Square/ReadVariableOp�
conv1d_6/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
conv1d_6/conv1d/ExpandDims/dim�
conv1d_6/conv1d/ExpandDims
ExpandDimsinputs'conv1d_6/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������	2
conv1d_6/conv1d/ExpandDims�
+conv1d_6/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	 *
dtype02-
+conv1d_6/conv1d/ExpandDims_1/ReadVariableOp�
 conv1d_6/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_6/conv1d/ExpandDims_1/dim�
conv1d_6/conv1d/ExpandDims_1
ExpandDims3conv1d_6/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_6/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	 2
conv1d_6/conv1d/ExpandDims_1�
conv1d_6/conv1dConv2D#conv1d_6/conv1d/ExpandDims:output:0%conv1d_6/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������i *
paddingVALID*
strides
2
conv1d_6/conv1d�
conv1d_6/conv1d/SqueezeSqueezeconv1d_6/conv1d:output:0*
T0*+
_output_shapes
:���������i *
squeeze_dims

���������2
conv1d_6/conv1d/Squeeze�
conv1d_6/BiasAdd/ReadVariableOpReadVariableOp(conv1d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02!
conv1d_6/BiasAdd/ReadVariableOp�
conv1d_6/BiasAddBiasAdd conv1d_6/conv1d/Squeeze:output:0'conv1d_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������i 2
conv1d_6/BiasAddw
conv1d_6/ReluReluconv1d_6/BiasAdd:output:0*
T0*+
_output_shapes
:���������i 2
conv1d_6/Relu�
dropout_6/IdentityIdentityconv1d_6/Relu:activations:0*
T0*+
_output_shapes
:���������i 2
dropout_6/Identity�
conv1d_7/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
conv1d_7/conv1d/ExpandDims/dim�
conv1d_7/conv1d/ExpandDims
ExpandDimsdropout_6/Identity:output:0'conv1d_7/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������i 2
conv1d_7/conv1d/ExpandDims�
+conv1d_7/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02-
+conv1d_7/conv1d/ExpandDims_1/ReadVariableOp�
 conv1d_7/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_7/conv1d/ExpandDims_1/dim�
conv1d_7/conv1d/ExpandDims_1
ExpandDims3conv1d_7/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_7/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d_7/conv1d/ExpandDims_1�
conv1d_7/conv1dConv2D#conv1d_7/conv1d/ExpandDims:output:0%conv1d_7/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������Z@*
paddingVALID*
strides
2
conv1d_7/conv1d�
conv1d_7/conv1d/SqueezeSqueezeconv1d_7/conv1d:output:0*
T0*+
_output_shapes
:���������Z@*
squeeze_dims

���������2
conv1d_7/conv1d/Squeeze�
conv1d_7/BiasAdd/ReadVariableOpReadVariableOp(conv1d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02!
conv1d_7/BiasAdd/ReadVariableOp�
conv1d_7/BiasAddBiasAdd conv1d_7/conv1d/Squeeze:output:0'conv1d_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������Z@2
conv1d_7/BiasAddw
conv1d_7/ReluReluconv1d_7/BiasAdd:output:0*
T0*+
_output_shapes
:���������Z@2
conv1d_7/Relu�
dropout_7/IdentityIdentityconv1d_7/Relu:activations:0*
T0*+
_output_shapes
:���������Z@2
dropout_7/Identity�
conv1d_8/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2 
conv1d_8/conv1d/ExpandDims/dim�
conv1d_8/conv1d/ExpandDims
ExpandDimsdropout_7/Identity:output:0'conv1d_8/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������Z@2
conv1d_8/conv1d/ExpandDims�
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp4conv1d_8_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@`*
dtype02-
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp�
 conv1d_8/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2"
 conv1d_8/conv1d/ExpandDims_1/dim�
conv1d_8/conv1d/ExpandDims_1
ExpandDims3conv1d_8/conv1d/ExpandDims_1/ReadVariableOp:value:0)conv1d_8/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@`2
conv1d_8/conv1d/ExpandDims_1�
conv1d_8/conv1dConv2D#conv1d_8/conv1d/ExpandDims:output:0%conv1d_8/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������S`*
paddingVALID*
strides
2
conv1d_8/conv1d�
conv1d_8/conv1d/SqueezeSqueezeconv1d_8/conv1d:output:0*
T0*+
_output_shapes
:���������S`*
squeeze_dims

���������2
conv1d_8/conv1d/Squeeze�
conv1d_8/BiasAdd/ReadVariableOpReadVariableOp(conv1d_8_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02!
conv1d_8/BiasAdd/ReadVariableOp�
conv1d_8/BiasAddBiasAdd conv1d_8/conv1d/Squeeze:output:0'conv1d_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������S`2
conv1d_8/BiasAddw
conv1d_8/ReluReluconv1d_8/BiasAdd:output:0*
T0*+
_output_shapes
:���������S`2
conv1d_8/Relu�
dropout_8/IdentityIdentityconv1d_8/Relu:activations:0*
T0*+
_output_shapes
:���������S`2
dropout_8/Identity�
encoder/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
encoder/conv1d/ExpandDims/dim�
encoder/conv1d/ExpandDims
ExpandDimsdropout_8/Identity:output:0&encoder/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������S`2
encoder/conv1d/ExpandDims�
*encoder/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp3encoder_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`�*
dtype02,
*encoder/conv1d/ExpandDims_1/ReadVariableOp�
encoder/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2!
encoder/conv1d/ExpandDims_1/dim�
encoder/conv1d/ExpandDims_1
ExpandDims2encoder/conv1d/ExpandDims_1/ReadVariableOp:value:0(encoder/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:`�2
encoder/conv1d/ExpandDims_1�
encoder/conv1dConv2D"encoder/conv1d/ExpandDims:output:0$encoder/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������P�*
paddingVALID*
strides
2
encoder/conv1d�
encoder/conv1d/SqueezeSqueezeencoder/conv1d:output:0*
T0*,
_output_shapes
:���������P�*
squeeze_dims

���������2
encoder/conv1d/Squeeze�
encoder/BiasAdd/ReadVariableOpReadVariableOp'encoder_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02 
encoder/BiasAdd/ReadVariableOp�
encoder/BiasAddBiasAddencoder/conv1d/Squeeze:output:0&encoder/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������P�2
encoder/BiasAddu
encoder/ReluReluencoder/BiasAdd:output:0*
T0*,
_output_shapes
:���������P�2
encoder/Relu�
,global_max_pooling1d_2/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2.
,global_max_pooling1d_2/Max/reduction_indices�
global_max_pooling1d_2/MaxMaxencoder/Relu:activations:05global_max_pooling1d_2/Max/reduction_indices:output:0*
T0*(
_output_shapes
:����������2
global_max_pooling1d_2/Max�
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
dense_2/MatMul/ReadVariableOp�
dense_2/MatMulMatMul#global_max_pooling1d_2/Max:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/MatMul�
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp�
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
dense_2/Softmax�
1conv1d_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	 *
dtype023
1conv1d_6/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_6/kernel/Regularizer/SquareSquare9conv1d_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	 2$
"conv1d_6/kernel/Regularizer/Square�
!conv1d_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_6/kernel/Regularizer/Const�
conv1d_6/kernel/Regularizer/SumSum&conv1d_6/kernel/Regularizer/Square:y:0*conv1d_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_6/kernel/Regularizer/Sum�
!conv1d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_6/kernel/Regularizer/mul/x�
conv1d_6/kernel/Regularizer/mulMul*conv1d_6/kernel/Regularizer/mul/x:output:0(conv1d_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_6/kernel/Regularizer/mul�
1conv1d_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype023
1conv1d_7/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_7/kernel/Regularizer/SquareSquare9conv1d_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: @2$
"conv1d_7/kernel/Regularizer/Square�
!conv1d_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_7/kernel/Regularizer/Const�
conv1d_7/kernel/Regularizer/SumSum&conv1d_7/kernel/Regularizer/Square:y:0*conv1d_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_7/kernel/Regularizer/Sum�
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_7/kernel/Regularizer/mul/x�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0(conv1d_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_7/kernel/Regularizer/mul�
1conv1d_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp4conv1d_8_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@`*
dtype023
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_8/kernel/Regularizer/SquareSquare9conv1d_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@`2$
"conv1d_8/kernel/Regularizer/Square�
!conv1d_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_8/kernel/Regularizer/Const�
conv1d_8/kernel/Regularizer/SumSum&conv1d_8/kernel/Regularizer/Square:y:0*conv1d_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/Sum�
!conv1d_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_8/kernel/Regularizer/mul/x�
conv1d_8/kernel/Regularizer/mulMul*conv1d_8/kernel/Regularizer/mul/x:output:0(conv1d_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/mul�
0encoder/kernel/Regularizer/Square/ReadVariableOpReadVariableOp3encoder_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`�*
dtype022
0encoder/kernel/Regularizer/Square/ReadVariableOp�
!encoder/kernel/Regularizer/SquareSquare8encoder/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:`�2#
!encoder/kernel/Regularizer/Square�
 encoder/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 encoder/kernel/Regularizer/Const�
encoder/kernel/Regularizer/SumSum%encoder/kernel/Regularizer/Square:y:0)encoder/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
encoder/kernel/Regularizer/Sum�
 encoder/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82"
 encoder/kernel/Regularizer/mul/x�
encoder/kernel/Regularizer/mulMul)encoder/kernel/Regularizer/mul/x:output:0'encoder/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
encoder/kernel/Regularizer/mul�
IdentityIdentitydense_2/Softmax:softmax:0 ^conv1d_6/BiasAdd/ReadVariableOp,^conv1d_6/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_6/kernel/Regularizer/Square/ReadVariableOp ^conv1d_7/BiasAdd/ReadVariableOp,^conv1d_7/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_7/kernel/Regularizer/Square/ReadVariableOp ^conv1d_8/BiasAdd/ReadVariableOp,^conv1d_8/conv1d/ExpandDims_1/ReadVariableOp2^conv1d_8/kernel/Regularizer/Square/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^encoder/BiasAdd/ReadVariableOp+^encoder/conv1d/ExpandDims_1/ReadVariableOp1^encoder/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������	::::::::::2B
conv1d_6/BiasAdd/ReadVariableOpconv1d_6/BiasAdd/ReadVariableOp2Z
+conv1d_6/conv1d/ExpandDims_1/ReadVariableOp+conv1d_6/conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_6/kernel/Regularizer/Square/ReadVariableOp1conv1d_6/kernel/Regularizer/Square/ReadVariableOp2B
conv1d_7/BiasAdd/ReadVariableOpconv1d_7/BiasAdd/ReadVariableOp2Z
+conv1d_7/conv1d/ExpandDims_1/ReadVariableOp+conv1d_7/conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_7/kernel/Regularizer/Square/ReadVariableOp1conv1d_7/kernel/Regularizer/Square/ReadVariableOp2B
conv1d_8/BiasAdd/ReadVariableOpconv1d_8/BiasAdd/ReadVariableOp2Z
+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp+conv1d_8/conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp1conv1d_8/kernel/Regularizer/Square/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
encoder/BiasAdd/ReadVariableOpencoder/BiasAdd/ReadVariableOp2X
*encoder/conv1d/ExpandDims_1/ReadVariableOp*encoder/conv1d/ExpandDims_1/ReadVariableOp2d
0encoder/kernel/Regularizer/Square/ReadVariableOp0encoder/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:����������	
 
_user_specified_nameinputs
�
�
'__inference_model_2_layer_call_fn_37484
input_3
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_374612
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������	::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:����������	
!
_user_specified_name	input_3
�
E
)__inference_dropout_7_layer_call_fn_37992

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������Z@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_371722
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������Z@2

Identity"
identityIdentity:output:0**
_input_shapes
:���������Z@:S O
+
_output_shapes
:���������Z@
 
_user_specified_nameinputs
�
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_37104

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:���������i 2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������i 2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:���������i :S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs
�
�
C__inference_conv1d_8_layer_call_and_return_conditional_losses_38020

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOp�1conv1d_8/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������Z@2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@`*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@`2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������S`*
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:���������S`*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������S`2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������S`2
Relu�
1conv1d_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@`*
dtype023
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_8/kernel/Regularizer/SquareSquare9conv1d_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@`2$
"conv1d_8/kernel/Regularizer/Square�
!conv1d_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_8/kernel/Regularizer/Const�
conv1d_8/kernel/Regularizer/SumSum&conv1d_8/kernel/Regularizer/Square:y:0*conv1d_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/Sum�
!conv1d_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_8/kernel/Regularizer/mul/x�
conv1d_8/kernel/Regularizer/mulMul*conv1d_8/kernel/Regularizer/mul/x:output:0(conv1d_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/mul�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp2^conv1d_8/kernel/Regularizer/Square/ReadVariableOp*
T0*+
_output_shapes
:���������S`2

Identity"
identityIdentity:output:0*2
_input_shapes!
:���������Z@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp1conv1d_8/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:���������Z@
 
_user_specified_nameinputs
�
c
D__inference_dropout_8_layer_call_and_return_conditional_losses_38041

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������S`2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������S`*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������S`2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������S`2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������S`2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������S`2

Identity"
identityIdentity:output:0**
_input_shapes
:���������S`:S O
+
_output_shapes
:���������S`
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_38124>
:conv1d_6_kernel_regularizer_square_readvariableop_resource
identity��1conv1d_6/kernel/Regularizer/Square/ReadVariableOp�
1conv1d_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv1d_6_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
:	 *
dtype023
1conv1d_6/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_6/kernel/Regularizer/SquareSquare9conv1d_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	 2$
"conv1d_6/kernel/Regularizer/Square�
!conv1d_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_6/kernel/Regularizer/Const�
conv1d_6/kernel/Regularizer/SumSum&conv1d_6/kernel/Regularizer/Square:y:0*conv1d_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_6/kernel/Regularizer/Sum�
!conv1d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_6/kernel/Regularizer/mul/x�
conv1d_6/kernel/Regularizer/mulMul*conv1d_6/kernel/Regularizer/mul/x:output:0(conv1d_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_6/kernel/Regularizer/mul�
IdentityIdentity#conv1d_6/kernel/Regularizer/mul:z:02^conv1d_6/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2f
1conv1d_6/kernel/Regularizer/Square/ReadVariableOp1conv1d_6/kernel/Regularizer/Square/ReadVariableOp
�
�
__inference_loss_fn_2_38146>
:conv1d_8_kernel_regularizer_square_readvariableop_resource
identity��1conv1d_8/kernel/Regularizer/Square/ReadVariableOp�
1conv1d_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv1d_8_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
:@`*
dtype023
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_8/kernel/Regularizer/SquareSquare9conv1d_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@`2$
"conv1d_8/kernel/Regularizer/Square�
!conv1d_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_8/kernel/Regularizer/Const�
conv1d_8/kernel/Regularizer/SumSum&conv1d_8/kernel/Regularizer/Square:y:0*conv1d_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/Sum�
!conv1d_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_8/kernel/Regularizer/mul/x�
conv1d_8/kernel/Regularizer/mulMul*conv1d_8/kernel/Regularizer/mul/x:output:0(conv1d_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/mul�
IdentityIdentity#conv1d_8/kernel/Regularizer/mul:z:02^conv1d_8/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2f
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp1conv1d_8/kernel/Regularizer/Square/ReadVariableOp
�S
�
B__inference_model_2_layer_call_and_return_conditional_losses_37344
input_3
conv1d_6_37082
conv1d_6_37084
conv1d_7_37150
conv1d_7_37152
conv1d_8_37218
conv1d_8_37220
encoder_37286
encoder_37288
dense_2_37314
dense_2_37316
identity�� conv1d_6/StatefulPartitionedCall�1conv1d_6/kernel/Regularizer/Square/ReadVariableOp� conv1d_7/StatefulPartitionedCall�1conv1d_7/kernel/Regularizer/Square/ReadVariableOp� conv1d_8/StatefulPartitionedCall�1conv1d_8/kernel/Regularizer/Square/ReadVariableOp�dense_2/StatefulPartitionedCall�!dropout_6/StatefulPartitionedCall�!dropout_7/StatefulPartitionedCall�!dropout_8/StatefulPartitionedCall�encoder/StatefulPartitionedCall�0encoder/kernel/Regularizer/Square/ReadVariableOp�
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCallinput_3conv1d_6_37082conv1d_6_37084*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_6_layer_call_and_return_conditional_losses_370712"
 conv1d_6/StatefulPartitionedCall�
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_370992#
!dropout_6/StatefulPartitionedCall�
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0conv1d_7_37150conv1d_7_37152*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������Z@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_7_layer_call_and_return_conditional_losses_371392"
 conv1d_7/StatefulPartitionedCall�
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall)conv1d_7/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������Z@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_371672#
!dropout_7/StatefulPartitionedCall�
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0conv1d_8_37218conv1d_8_37220*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������S`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_8_layer_call_and_return_conditional_losses_372072"
 conv1d_8/StatefulPartitionedCall�
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������S`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_372352#
!dropout_8/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0encoder_37286encoder_37288*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������P�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_372752!
encoder/StatefulPartitionedCall�
&global_max_pooling1d_2/PartitionedCallPartitionedCall(encoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_370392(
&global_max_pooling1d_2/PartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling1d_2/PartitionedCall:output:0dense_2_37314dense_2_37316*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_373032!
dense_2/StatefulPartitionedCall�
1conv1d_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_6_37082*"
_output_shapes
:	 *
dtype023
1conv1d_6/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_6/kernel/Regularizer/SquareSquare9conv1d_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	 2$
"conv1d_6/kernel/Regularizer/Square�
!conv1d_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_6/kernel/Regularizer/Const�
conv1d_6/kernel/Regularizer/SumSum&conv1d_6/kernel/Regularizer/Square:y:0*conv1d_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_6/kernel/Regularizer/Sum�
!conv1d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_6/kernel/Regularizer/mul/x�
conv1d_6/kernel/Regularizer/mulMul*conv1d_6/kernel/Regularizer/mul/x:output:0(conv1d_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_6/kernel/Regularizer/mul�
1conv1d_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_7_37150*"
_output_shapes
: @*
dtype023
1conv1d_7/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_7/kernel/Regularizer/SquareSquare9conv1d_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: @2$
"conv1d_7/kernel/Regularizer/Square�
!conv1d_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_7/kernel/Regularizer/Const�
conv1d_7/kernel/Regularizer/SumSum&conv1d_7/kernel/Regularizer/Square:y:0*conv1d_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_7/kernel/Regularizer/Sum�
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_7/kernel/Regularizer/mul/x�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0(conv1d_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_7/kernel/Regularizer/mul�
1conv1d_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_8_37218*"
_output_shapes
:@`*
dtype023
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_8/kernel/Regularizer/SquareSquare9conv1d_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@`2$
"conv1d_8/kernel/Regularizer/Square�
!conv1d_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_8/kernel/Regularizer/Const�
conv1d_8/kernel/Regularizer/SumSum&conv1d_8/kernel/Regularizer/Square:y:0*conv1d_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/Sum�
!conv1d_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_8/kernel/Regularizer/mul/x�
conv1d_8/kernel/Regularizer/mulMul*conv1d_8/kernel/Regularizer/mul/x:output:0(conv1d_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/mul�
0encoder/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_37286*#
_output_shapes
:`�*
dtype022
0encoder/kernel/Regularizer/Square/ReadVariableOp�
!encoder/kernel/Regularizer/SquareSquare8encoder/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:`�2#
!encoder/kernel/Regularizer/Square�
 encoder/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 encoder/kernel/Regularizer/Const�
encoder/kernel/Regularizer/SumSum%encoder/kernel/Regularizer/Square:y:0)encoder/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
encoder/kernel/Regularizer/Sum�
 encoder/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82"
 encoder/kernel/Regularizer/mul/x�
encoder/kernel/Regularizer/mulMul)encoder/kernel/Regularizer/mul/x:output:0'encoder/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
encoder/kernel/Regularizer/mul�
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0!^conv1d_6/StatefulPartitionedCall2^conv1d_6/kernel/Regularizer/Square/ReadVariableOp!^conv1d_7/StatefulPartitionedCall2^conv1d_7/kernel/Regularizer/Square/ReadVariableOp!^conv1d_8/StatefulPartitionedCall2^conv1d_8/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall ^encoder/StatefulPartitionedCall1^encoder/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������	::::::::::2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2f
1conv1d_6/kernel/Regularizer/Square/ReadVariableOp1conv1d_6/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2f
1conv1d_7/kernel/Regularizer/Square/ReadVariableOp1conv1d_7/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2f
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp1conv1d_8/kernel/Regularizer/Square/ReadVariableOp2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2d
0encoder/kernel/Regularizer/Square/ReadVariableOp0encoder/kernel/Regularizer/Square/ReadVariableOp:U Q
,
_output_shapes
:����������	
!
_user_specified_name	input_3
�
b
D__inference_dropout_7_layer_call_and_return_conditional_losses_37172

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:���������Z@2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������Z@2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:���������Z@:S O
+
_output_shapes
:���������Z@
 
_user_specified_nameinputs
�
�
C__inference_conv1d_6_layer_call_and_return_conditional_losses_37892

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOp�1conv1d_6/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������	2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	 *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	 2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������i *
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:���������i *
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������i 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������i 2
Relu�
1conv1d_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	 *
dtype023
1conv1d_6/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_6/kernel/Regularizer/SquareSquare9conv1d_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	 2$
"conv1d_6/kernel/Regularizer/Square�
!conv1d_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_6/kernel/Regularizer/Const�
conv1d_6/kernel/Regularizer/SumSum&conv1d_6/kernel/Regularizer/Square:y:0*conv1d_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_6/kernel/Regularizer/Sum�
!conv1d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_6/kernel/Regularizer/mul/x�
conv1d_6/kernel/Regularizer/mulMul*conv1d_6/kernel/Regularizer/mul/x:output:0(conv1d_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_6/kernel/Regularizer/mul�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp2^conv1d_6/kernel/Regularizer/Square/ReadVariableOp*
T0*+
_output_shapes
:���������i 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :����������	::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_6/kernel/Regularizer/Square/ReadVariableOp1conv1d_6/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:����������	
 
_user_specified_nameinputs
�
�
C__inference_conv1d_7_layer_call_and_return_conditional_losses_37139

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOp�1conv1d_7/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������i 2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������Z@*
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:���������Z@*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������Z@2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������Z@2
Relu�
1conv1d_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype023
1conv1d_7/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_7/kernel/Regularizer/SquareSquare9conv1d_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: @2$
"conv1d_7/kernel/Regularizer/Square�
!conv1d_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_7/kernel/Regularizer/Const�
conv1d_7/kernel/Regularizer/SumSum&conv1d_7/kernel/Regularizer/Square:y:0*conv1d_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_7/kernel/Regularizer/Sum�
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_7/kernel/Regularizer/mul/x�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0(conv1d_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_7/kernel/Regularizer/mul�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp2^conv1d_7/kernel/Regularizer/Square/ReadVariableOp*
T0*+
_output_shapes
:���������Z@2

Identity"
identityIdentity:output:0*2
_input_shapes!
:���������i ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_7/kernel/Regularizer/Square/ReadVariableOp1conv1d_7/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs
�
c
D__inference_dropout_6_layer_call_and_return_conditional_losses_37099

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������i 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������i *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������i 2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������i 2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������i 2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������i 2

Identity"
identityIdentity:output:0**
_input_shapes
:���������i :S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs
�
�
'__inference_model_2_layer_call_fn_37839

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_374612
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������	::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������	
 
_user_specified_nameinputs
�
�
B__inference_encoder_layer_call_and_return_conditional_losses_37275

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOp�0encoder/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������S`2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`�*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:`�2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������P�*
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:���������P�*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������P�2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:���������P�2
Relu�
0encoder/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`�*
dtype022
0encoder/kernel/Regularizer/Square/ReadVariableOp�
!encoder/kernel/Regularizer/SquareSquare8encoder/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:`�2#
!encoder/kernel/Regularizer/Square�
 encoder/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 encoder/kernel/Regularizer/Const�
encoder/kernel/Regularizer/SumSum%encoder/kernel/Regularizer/Square:y:0)encoder/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
encoder/kernel/Regularizer/Sum�
 encoder/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82"
 encoder/kernel/Regularizer/mul/x�
encoder/kernel/Regularizer/mulMul)encoder/kernel/Regularizer/mul/x:output:0'encoder/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
encoder/kernel/Regularizer/mul�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp1^encoder/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:���������P�2

Identity"
identityIdentity:output:0*2
_input_shapes!
:���������S`::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2d
0encoder/kernel/Regularizer/Square/ReadVariableOp0encoder/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:���������S`
 
_user_specified_nameinputs
�
b
)__inference_dropout_6_layer_call_fn_37923

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_370992
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������i 2

Identity"
identityIdentity:output:0**
_input_shapes
:���������i 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs
�
|
'__inference_dense_2_layer_call_fn_38113

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_373032
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
#__inference_signature_wrapper_37617
input_3
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_370322
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������	::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:����������	
!
_user_specified_name	input_3
�
b
D__inference_dropout_8_layer_call_and_return_conditional_losses_37240

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:���������S`2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������S`2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:���������S`:S O
+
_output_shapes
:���������S`
 
_user_specified_nameinputs
�
�
C__inference_conv1d_8_layer_call_and_return_conditional_losses_37207

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOp�1conv1d_8/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������Z@2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@`*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@`2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������S`*
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:���������S`*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:`*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������S`2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������S`2
Relu�
1conv1d_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@`*
dtype023
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_8/kernel/Regularizer/SquareSquare9conv1d_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@`2$
"conv1d_8/kernel/Regularizer/Square�
!conv1d_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_8/kernel/Regularizer/Const�
conv1d_8/kernel/Regularizer/SumSum&conv1d_8/kernel/Regularizer/Square:y:0*conv1d_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/Sum�
!conv1d_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_8/kernel/Regularizer/mul/x�
conv1d_8/kernel/Regularizer/mulMul*conv1d_8/kernel/Regularizer/mul/x:output:0(conv1d_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/mul�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp2^conv1d_8/kernel/Regularizer/Square/ReadVariableOp*
T0*+
_output_shapes
:���������S`2

Identity"
identityIdentity:output:0*2
_input_shapes!
:���������Z@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp1conv1d_8/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:���������Z@
 
_user_specified_nameinputs
�
b
D__inference_dropout_6_layer_call_and_return_conditional_losses_37918

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:���������i 2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������i 2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:���������i :S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs
�
c
D__inference_dropout_7_layer_call_and_return_conditional_losses_37977

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������Z@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������Z@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������Z@2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������Z@2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������Z@2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������Z@2

Identity"
identityIdentity:output:0**
_input_shapes
:���������Z@:S O
+
_output_shapes
:���������Z@
 
_user_specified_nameinputs
�
E
)__inference_dropout_8_layer_call_fn_38056

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������S`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_372402
PartitionedCallp
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������S`2

Identity"
identityIdentity:output:0**
_input_shapes
:���������S`:S O
+
_output_shapes
:���������S`
 
_user_specified_nameinputs
�
b
D__inference_dropout_8_layer_call_and_return_conditional_losses_38046

inputs

identity_1^
IdentityIdentityinputs*
T0*+
_output_shapes
:���������S`2

Identitym

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������S`2

Identity_1"!

identity_1Identity_1:output:0**
_input_shapes
:���������S`:S O
+
_output_shapes
:���������S`
 
_user_specified_nameinputs
�c
�
 __inference__wrapped_model_37032
input_3@
<model_2_conv1d_6_conv1d_expanddims_1_readvariableop_resource4
0model_2_conv1d_6_biasadd_readvariableop_resource@
<model_2_conv1d_7_conv1d_expanddims_1_readvariableop_resource4
0model_2_conv1d_7_biasadd_readvariableop_resource@
<model_2_conv1d_8_conv1d_expanddims_1_readvariableop_resource4
0model_2_conv1d_8_biasadd_readvariableop_resource?
;model_2_encoder_conv1d_expanddims_1_readvariableop_resource3
/model_2_encoder_biasadd_readvariableop_resource2
.model_2_dense_2_matmul_readvariableop_resource3
/model_2_dense_2_biasadd_readvariableop_resource
identity��'model_2/conv1d_6/BiasAdd/ReadVariableOp�3model_2/conv1d_6/conv1d/ExpandDims_1/ReadVariableOp�'model_2/conv1d_7/BiasAdd/ReadVariableOp�3model_2/conv1d_7/conv1d/ExpandDims_1/ReadVariableOp�'model_2/conv1d_8/BiasAdd/ReadVariableOp�3model_2/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp�&model_2/dense_2/BiasAdd/ReadVariableOp�%model_2/dense_2/MatMul/ReadVariableOp�&model_2/encoder/BiasAdd/ReadVariableOp�2model_2/encoder/conv1d/ExpandDims_1/ReadVariableOp�
&model_2/conv1d_6/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&model_2/conv1d_6/conv1d/ExpandDims/dim�
"model_2/conv1d_6/conv1d/ExpandDims
ExpandDimsinput_3/model_2/conv1d_6/conv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������	2$
"model_2/conv1d_6/conv1d/ExpandDims�
3model_2/conv1d_6/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp<model_2_conv1d_6_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	 *
dtype025
3model_2/conv1d_6/conv1d/ExpandDims_1/ReadVariableOp�
(model_2/conv1d_6/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(model_2/conv1d_6/conv1d/ExpandDims_1/dim�
$model_2/conv1d_6/conv1d/ExpandDims_1
ExpandDims;model_2/conv1d_6/conv1d/ExpandDims_1/ReadVariableOp:value:01model_2/conv1d_6/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	 2&
$model_2/conv1d_6/conv1d/ExpandDims_1�
model_2/conv1d_6/conv1dConv2D+model_2/conv1d_6/conv1d/ExpandDims:output:0-model_2/conv1d_6/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������i *
paddingVALID*
strides
2
model_2/conv1d_6/conv1d�
model_2/conv1d_6/conv1d/SqueezeSqueeze model_2/conv1d_6/conv1d:output:0*
T0*+
_output_shapes
:���������i *
squeeze_dims

���������2!
model_2/conv1d_6/conv1d/Squeeze�
'model_2/conv1d_6/BiasAdd/ReadVariableOpReadVariableOp0model_2_conv1d_6_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02)
'model_2/conv1d_6/BiasAdd/ReadVariableOp�
model_2/conv1d_6/BiasAddBiasAdd(model_2/conv1d_6/conv1d/Squeeze:output:0/model_2/conv1d_6/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������i 2
model_2/conv1d_6/BiasAdd�
model_2/conv1d_6/ReluRelu!model_2/conv1d_6/BiasAdd:output:0*
T0*+
_output_shapes
:���������i 2
model_2/conv1d_6/Relu�
model_2/dropout_6/IdentityIdentity#model_2/conv1d_6/Relu:activations:0*
T0*+
_output_shapes
:���������i 2
model_2/dropout_6/Identity�
&model_2/conv1d_7/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&model_2/conv1d_7/conv1d/ExpandDims/dim�
"model_2/conv1d_7/conv1d/ExpandDims
ExpandDims#model_2/dropout_6/Identity:output:0/model_2/conv1d_7/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������i 2$
"model_2/conv1d_7/conv1d/ExpandDims�
3model_2/conv1d_7/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp<model_2_conv1d_7_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: @*
dtype025
3model_2/conv1d_7/conv1d/ExpandDims_1/ReadVariableOp�
(model_2/conv1d_7/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(model_2/conv1d_7/conv1d/ExpandDims_1/dim�
$model_2/conv1d_7/conv1d/ExpandDims_1
ExpandDims;model_2/conv1d_7/conv1d/ExpandDims_1/ReadVariableOp:value:01model_2/conv1d_7/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: @2&
$model_2/conv1d_7/conv1d/ExpandDims_1�
model_2/conv1d_7/conv1dConv2D+model_2/conv1d_7/conv1d/ExpandDims:output:0-model_2/conv1d_7/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������Z@*
paddingVALID*
strides
2
model_2/conv1d_7/conv1d�
model_2/conv1d_7/conv1d/SqueezeSqueeze model_2/conv1d_7/conv1d:output:0*
T0*+
_output_shapes
:���������Z@*
squeeze_dims

���������2!
model_2/conv1d_7/conv1d/Squeeze�
'model_2/conv1d_7/BiasAdd/ReadVariableOpReadVariableOp0model_2_conv1d_7_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02)
'model_2/conv1d_7/BiasAdd/ReadVariableOp�
model_2/conv1d_7/BiasAddBiasAdd(model_2/conv1d_7/conv1d/Squeeze:output:0/model_2/conv1d_7/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������Z@2
model_2/conv1d_7/BiasAdd�
model_2/conv1d_7/ReluRelu!model_2/conv1d_7/BiasAdd:output:0*
T0*+
_output_shapes
:���������Z@2
model_2/conv1d_7/Relu�
model_2/dropout_7/IdentityIdentity#model_2/conv1d_7/Relu:activations:0*
T0*+
_output_shapes
:���������Z@2
model_2/dropout_7/Identity�
&model_2/conv1d_8/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2(
&model_2/conv1d_8/conv1d/ExpandDims/dim�
"model_2/conv1d_8/conv1d/ExpandDims
ExpandDims#model_2/dropout_7/Identity:output:0/model_2/conv1d_8/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������Z@2$
"model_2/conv1d_8/conv1d/ExpandDims�
3model_2/conv1d_8/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp<model_2_conv1d_8_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:@`*
dtype025
3model_2/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp�
(model_2/conv1d_8/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2*
(model_2/conv1d_8/conv1d/ExpandDims_1/dim�
$model_2/conv1d_8/conv1d/ExpandDims_1
ExpandDims;model_2/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp:value:01model_2/conv1d_8/conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:@`2&
$model_2/conv1d_8/conv1d/ExpandDims_1�
model_2/conv1d_8/conv1dConv2D+model_2/conv1d_8/conv1d/ExpandDims:output:0-model_2/conv1d_8/conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������S`*
paddingVALID*
strides
2
model_2/conv1d_8/conv1d�
model_2/conv1d_8/conv1d/SqueezeSqueeze model_2/conv1d_8/conv1d:output:0*
T0*+
_output_shapes
:���������S`*
squeeze_dims

���������2!
model_2/conv1d_8/conv1d/Squeeze�
'model_2/conv1d_8/BiasAdd/ReadVariableOpReadVariableOp0model_2_conv1d_8_biasadd_readvariableop_resource*
_output_shapes
:`*
dtype02)
'model_2/conv1d_8/BiasAdd/ReadVariableOp�
model_2/conv1d_8/BiasAddBiasAdd(model_2/conv1d_8/conv1d/Squeeze:output:0/model_2/conv1d_8/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������S`2
model_2/conv1d_8/BiasAdd�
model_2/conv1d_8/ReluRelu!model_2/conv1d_8/BiasAdd:output:0*
T0*+
_output_shapes
:���������S`2
model_2/conv1d_8/Relu�
model_2/dropout_8/IdentityIdentity#model_2/conv1d_8/Relu:activations:0*
T0*+
_output_shapes
:���������S`2
model_2/dropout_8/Identity�
%model_2/encoder/conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2'
%model_2/encoder/conv1d/ExpandDims/dim�
!model_2/encoder/conv1d/ExpandDims
ExpandDims#model_2/dropout_8/Identity:output:0.model_2/encoder/conv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������S`2#
!model_2/encoder/conv1d/ExpandDims�
2model_2/encoder/conv1d/ExpandDims_1/ReadVariableOpReadVariableOp;model_2_encoder_conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`�*
dtype024
2model_2/encoder/conv1d/ExpandDims_1/ReadVariableOp�
'model_2/encoder/conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2)
'model_2/encoder/conv1d/ExpandDims_1/dim�
#model_2/encoder/conv1d/ExpandDims_1
ExpandDims:model_2/encoder/conv1d/ExpandDims_1/ReadVariableOp:value:00model_2/encoder/conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:`�2%
#model_2/encoder/conv1d/ExpandDims_1�
model_2/encoder/conv1dConv2D*model_2/encoder/conv1d/ExpandDims:output:0,model_2/encoder/conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������P�*
paddingVALID*
strides
2
model_2/encoder/conv1d�
model_2/encoder/conv1d/SqueezeSqueezemodel_2/encoder/conv1d:output:0*
T0*,
_output_shapes
:���������P�*
squeeze_dims

���������2 
model_2/encoder/conv1d/Squeeze�
&model_2/encoder/BiasAdd/ReadVariableOpReadVariableOp/model_2_encoder_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02(
&model_2/encoder/BiasAdd/ReadVariableOp�
model_2/encoder/BiasAddBiasAdd'model_2/encoder/conv1d/Squeeze:output:0.model_2/encoder/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������P�2
model_2/encoder/BiasAdd�
model_2/encoder/ReluRelu model_2/encoder/BiasAdd:output:0*
T0*,
_output_shapes
:���������P�2
model_2/encoder/Relu�
4model_2/global_max_pooling1d_2/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :26
4model_2/global_max_pooling1d_2/Max/reduction_indices�
"model_2/global_max_pooling1d_2/MaxMax"model_2/encoder/Relu:activations:0=model_2/global_max_pooling1d_2/Max/reduction_indices:output:0*
T0*(
_output_shapes
:����������2$
"model_2/global_max_pooling1d_2/Max�
%model_2/dense_2/MatMul/ReadVariableOpReadVariableOp.model_2_dense_2_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype02'
%model_2/dense_2/MatMul/ReadVariableOp�
model_2/dense_2/MatMulMatMul+model_2/global_max_pooling1d_2/Max:output:0-model_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model_2/dense_2/MatMul�
&model_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp/model_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02(
&model_2/dense_2/BiasAdd/ReadVariableOp�
model_2/dense_2/BiasAddBiasAdd model_2/dense_2/MatMul:product:0.model_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
model_2/dense_2/BiasAdd�
model_2/dense_2/SoftmaxSoftmax model_2/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:���������2
model_2/dense_2/Softmax�
IdentityIdentity!model_2/dense_2/Softmax:softmax:0(^model_2/conv1d_6/BiasAdd/ReadVariableOp4^model_2/conv1d_6/conv1d/ExpandDims_1/ReadVariableOp(^model_2/conv1d_7/BiasAdd/ReadVariableOp4^model_2/conv1d_7/conv1d/ExpandDims_1/ReadVariableOp(^model_2/conv1d_8/BiasAdd/ReadVariableOp4^model_2/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp'^model_2/dense_2/BiasAdd/ReadVariableOp&^model_2/dense_2/MatMul/ReadVariableOp'^model_2/encoder/BiasAdd/ReadVariableOp3^model_2/encoder/conv1d/ExpandDims_1/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������	::::::::::2R
'model_2/conv1d_6/BiasAdd/ReadVariableOp'model_2/conv1d_6/BiasAdd/ReadVariableOp2j
3model_2/conv1d_6/conv1d/ExpandDims_1/ReadVariableOp3model_2/conv1d_6/conv1d/ExpandDims_1/ReadVariableOp2R
'model_2/conv1d_7/BiasAdd/ReadVariableOp'model_2/conv1d_7/BiasAdd/ReadVariableOp2j
3model_2/conv1d_7/conv1d/ExpandDims_1/ReadVariableOp3model_2/conv1d_7/conv1d/ExpandDims_1/ReadVariableOp2R
'model_2/conv1d_8/BiasAdd/ReadVariableOp'model_2/conv1d_8/BiasAdd/ReadVariableOp2j
3model_2/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp3model_2/conv1d_8/conv1d/ExpandDims_1/ReadVariableOp2P
&model_2/dense_2/BiasAdd/ReadVariableOp&model_2/dense_2/BiasAdd/ReadVariableOp2N
%model_2/dense_2/MatMul/ReadVariableOp%model_2/dense_2/MatMul/ReadVariableOp2P
&model_2/encoder/BiasAdd/ReadVariableOp&model_2/encoder/BiasAdd/ReadVariableOp2h
2model_2/encoder/conv1d/ExpandDims_1/ReadVariableOp2model_2/encoder/conv1d/ExpandDims_1/ReadVariableOp:U Q
,
_output_shapes
:����������	
!
_user_specified_name	input_3
�
|
'__inference_encoder_layer_call_fn_38093

inputs
unknown
	unknown_0
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������P�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_372752
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:���������P�2

Identity"
identityIdentity:output:0*2
_input_shapes!
:���������S`::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������S`
 
_user_specified_nameinputs
�
�
C__inference_conv1d_6_layer_call_and_return_conditional_losses_37071

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOp�1conv1d_6/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������	2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	 *
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
:	 2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*/
_output_shapes
:���������i *
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*+
_output_shapes
:���������i *
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������i 2	
BiasAdd\
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������i 2
Relu�
1conv1d_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
:	 *
dtype023
1conv1d_6/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_6/kernel/Regularizer/SquareSquare9conv1d_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	 2$
"conv1d_6/kernel/Regularizer/Square�
!conv1d_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_6/kernel/Regularizer/Const�
conv1d_6/kernel/Regularizer/SumSum&conv1d_6/kernel/Regularizer/Square:y:0*conv1d_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_6/kernel/Regularizer/Sum�
!conv1d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_6/kernel/Regularizer/mul/x�
conv1d_6/kernel/Regularizer/mulMul*conv1d_6/kernel/Regularizer/mul/x:output:0(conv1d_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_6/kernel/Regularizer/mul�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp2^conv1d_6/kernel/Regularizer/Square/ReadVariableOp*
T0*+
_output_shapes
:���������i 2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :����������	::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2f
1conv1d_6/kernel/Regularizer/Square/ReadVariableOp1conv1d_6/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:����������	
 
_user_specified_nameinputs
�
c
D__inference_dropout_7_layer_call_and_return_conditional_losses_37167

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������Z@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������Z@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������Z@2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������Z@2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������Z@2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������Z@2

Identity"
identityIdentity:output:0**
_input_shapes
:���������Z@:S O
+
_output_shapes
:���������Z@
 
_user_specified_nameinputs
�
�
__inference_loss_fn_3_38157=
9encoder_kernel_regularizer_square_readvariableop_resource
identity��0encoder/kernel/Regularizer/Square/ReadVariableOp�
0encoder/kernel/Regularizer/Square/ReadVariableOpReadVariableOp9encoder_kernel_regularizer_square_readvariableop_resource*#
_output_shapes
:`�*
dtype022
0encoder/kernel/Regularizer/Square/ReadVariableOp�
!encoder/kernel/Regularizer/SquareSquare8encoder/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:`�2#
!encoder/kernel/Regularizer/Square�
 encoder/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 encoder/kernel/Regularizer/Const�
encoder/kernel/Regularizer/SumSum%encoder/kernel/Regularizer/Square:y:0)encoder/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
encoder/kernel/Regularizer/Sum�
 encoder/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82"
 encoder/kernel/Regularizer/mul/x�
encoder/kernel/Regularizer/mulMul)encoder/kernel/Regularizer/mul/x:output:0'encoder/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
encoder/kernel/Regularizer/mul�
IdentityIdentity"encoder/kernel/Regularizer/mul:z:01^encoder/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2d
0encoder/kernel/Regularizer/Square/ReadVariableOp0encoder/kernel/Regularizer/Square/ReadVariableOp
�
�
__inference_loss_fn_1_38135>
:conv1d_7_kernel_regularizer_square_readvariableop_resource
identity��1conv1d_7/kernel/Regularizer/Square/ReadVariableOp�
1conv1d_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv1d_7_kernel_regularizer_square_readvariableop_resource*"
_output_shapes
: @*
dtype023
1conv1d_7/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_7/kernel/Regularizer/SquareSquare9conv1d_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: @2$
"conv1d_7/kernel/Regularizer/Square�
!conv1d_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_7/kernel/Regularizer/Const�
conv1d_7/kernel/Regularizer/SumSum&conv1d_7/kernel/Regularizer/Square:y:0*conv1d_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_7/kernel/Regularizer/Sum�
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_7/kernel/Regularizer/mul/x�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0(conv1d_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_7/kernel/Regularizer/mul�
IdentityIdentity#conv1d_7/kernel/Regularizer/mul:z:02^conv1d_7/kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2f
1conv1d_7/kernel/Regularizer/Square/ReadVariableOp1conv1d_7/kernel/Regularizer/Square/ReadVariableOp
�
c
D__inference_dropout_6_layer_call_and_return_conditional_losses_37913

inputs
identity�c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?2
dropout/Constw
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������i 2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������i *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=2
dropout/GreaterEqual/y�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������i 2
dropout/GreaterEqual�
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������i 2
dropout/Cast~
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������i 2
dropout/Mul_1i
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������i 2

Identity"
identityIdentity:output:0**
_input_shapes
:���������i :S O
+
_output_shapes
:���������i 
 
_user_specified_nameinputs
�O
�
B__inference_model_2_layer_call_and_return_conditional_losses_37401
input_3
conv1d_6_37347
conv1d_6_37349
conv1d_7_37353
conv1d_7_37355
conv1d_8_37359
conv1d_8_37361
encoder_37365
encoder_37367
dense_2_37371
dense_2_37373
identity�� conv1d_6/StatefulPartitionedCall�1conv1d_6/kernel/Regularizer/Square/ReadVariableOp� conv1d_7/StatefulPartitionedCall�1conv1d_7/kernel/Regularizer/Square/ReadVariableOp� conv1d_8/StatefulPartitionedCall�1conv1d_8/kernel/Regularizer/Square/ReadVariableOp�dense_2/StatefulPartitionedCall�encoder/StatefulPartitionedCall�0encoder/kernel/Regularizer/Square/ReadVariableOp�
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCallinput_3conv1d_6_37347conv1d_6_37349*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_6_layer_call_and_return_conditional_losses_370712"
 conv1d_6/StatefulPartitionedCall�
dropout_6/PartitionedCallPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_371042
dropout_6/PartitionedCall�
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0conv1d_7_37353conv1d_7_37355*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������Z@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_7_layer_call_and_return_conditional_losses_371392"
 conv1d_7/StatefulPartitionedCall�
dropout_7/PartitionedCallPartitionedCall)conv1d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������Z@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_371722
dropout_7/PartitionedCall�
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0conv1d_8_37359conv1d_8_37361*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������S`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_8_layer_call_and_return_conditional_losses_372072"
 conv1d_8/StatefulPartitionedCall�
dropout_8/PartitionedCallPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������S`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_372402
dropout_8/PartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0encoder_37365encoder_37367*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������P�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_372752!
encoder/StatefulPartitionedCall�
&global_max_pooling1d_2/PartitionedCallPartitionedCall(encoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_370392(
&global_max_pooling1d_2/PartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling1d_2/PartitionedCall:output:0dense_2_37371dense_2_37373*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_373032!
dense_2/StatefulPartitionedCall�
1conv1d_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_6_37347*"
_output_shapes
:	 *
dtype023
1conv1d_6/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_6/kernel/Regularizer/SquareSquare9conv1d_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	 2$
"conv1d_6/kernel/Regularizer/Square�
!conv1d_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_6/kernel/Regularizer/Const�
conv1d_6/kernel/Regularizer/SumSum&conv1d_6/kernel/Regularizer/Square:y:0*conv1d_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_6/kernel/Regularizer/Sum�
!conv1d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_6/kernel/Regularizer/mul/x�
conv1d_6/kernel/Regularizer/mulMul*conv1d_6/kernel/Regularizer/mul/x:output:0(conv1d_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_6/kernel/Regularizer/mul�
1conv1d_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_7_37353*"
_output_shapes
: @*
dtype023
1conv1d_7/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_7/kernel/Regularizer/SquareSquare9conv1d_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: @2$
"conv1d_7/kernel/Regularizer/Square�
!conv1d_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_7/kernel/Regularizer/Const�
conv1d_7/kernel/Regularizer/SumSum&conv1d_7/kernel/Regularizer/Square:y:0*conv1d_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_7/kernel/Regularizer/Sum�
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_7/kernel/Regularizer/mul/x�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0(conv1d_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_7/kernel/Regularizer/mul�
1conv1d_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_8_37359*"
_output_shapes
:@`*
dtype023
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_8/kernel/Regularizer/SquareSquare9conv1d_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@`2$
"conv1d_8/kernel/Regularizer/Square�
!conv1d_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_8/kernel/Regularizer/Const�
conv1d_8/kernel/Regularizer/SumSum&conv1d_8/kernel/Regularizer/Square:y:0*conv1d_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/Sum�
!conv1d_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_8/kernel/Regularizer/mul/x�
conv1d_8/kernel/Regularizer/mulMul*conv1d_8/kernel/Regularizer/mul/x:output:0(conv1d_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/mul�
0encoder/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_37365*#
_output_shapes
:`�*
dtype022
0encoder/kernel/Regularizer/Square/ReadVariableOp�
!encoder/kernel/Regularizer/SquareSquare8encoder/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:`�2#
!encoder/kernel/Regularizer/Square�
 encoder/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 encoder/kernel/Regularizer/Const�
encoder/kernel/Regularizer/SumSum%encoder/kernel/Regularizer/Square:y:0)encoder/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
encoder/kernel/Regularizer/Sum�
 encoder/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82"
 encoder/kernel/Regularizer/mul/x�
encoder/kernel/Regularizer/mulMul)encoder/kernel/Regularizer/mul/x:output:0'encoder/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
encoder/kernel/Regularizer/mul�
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0!^conv1d_6/StatefulPartitionedCall2^conv1d_6/kernel/Regularizer/Square/ReadVariableOp!^conv1d_7/StatefulPartitionedCall2^conv1d_7/kernel/Regularizer/Square/ReadVariableOp!^conv1d_8/StatefulPartitionedCall2^conv1d_8/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall ^encoder/StatefulPartitionedCall1^encoder/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������	::::::::::2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2f
1conv1d_6/kernel/Regularizer/Square/ReadVariableOp1conv1d_6/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2f
1conv1d_7/kernel/Regularizer/Square/ReadVariableOp1conv1d_7/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2f
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp1conv1d_8/kernel/Regularizer/Square/ReadVariableOp2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2d
0encoder/kernel/Regularizer/Square/ReadVariableOp0encoder/kernel/Regularizer/Square/ReadVariableOp:U Q
,
_output_shapes
:����������	
!
_user_specified_name	input_3
�	
�
B__inference_dense_2_layer_call_and_return_conditional_losses_38104

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Softmax�
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
R
6__inference_global_max_pooling1d_2_layer_call_fn_37045

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_370392
PartitionedCallu
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�O
�
B__inference_model_2_layer_call_and_return_conditional_losses_37543

inputs
conv1d_6_37489
conv1d_6_37491
conv1d_7_37495
conv1d_7_37497
conv1d_8_37501
conv1d_8_37503
encoder_37507
encoder_37509
dense_2_37513
dense_2_37515
identity�� conv1d_6/StatefulPartitionedCall�1conv1d_6/kernel/Regularizer/Square/ReadVariableOp� conv1d_7/StatefulPartitionedCall�1conv1d_7/kernel/Regularizer/Square/ReadVariableOp� conv1d_8/StatefulPartitionedCall�1conv1d_8/kernel/Regularizer/Square/ReadVariableOp�dense_2/StatefulPartitionedCall�encoder/StatefulPartitionedCall�0encoder/kernel/Regularizer/Square/ReadVariableOp�
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_6_37489conv1d_6_37491*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_6_layer_call_and_return_conditional_losses_370712"
 conv1d_6/StatefulPartitionedCall�
dropout_6/PartitionedCallPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_371042
dropout_6/PartitionedCall�
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall"dropout_6/PartitionedCall:output:0conv1d_7_37495conv1d_7_37497*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������Z@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_7_layer_call_and_return_conditional_losses_371392"
 conv1d_7/StatefulPartitionedCall�
dropout_7/PartitionedCallPartitionedCall)conv1d_7/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������Z@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_371722
dropout_7/PartitionedCall�
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCall"dropout_7/PartitionedCall:output:0conv1d_8_37501conv1d_8_37503*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������S`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_8_layer_call_and_return_conditional_losses_372072"
 conv1d_8/StatefulPartitionedCall�
dropout_8/PartitionedCallPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������S`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_372402
dropout_8/PartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0encoder_37507encoder_37509*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������P�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_372752!
encoder/StatefulPartitionedCall�
&global_max_pooling1d_2/PartitionedCallPartitionedCall(encoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_370392(
&global_max_pooling1d_2/PartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling1d_2/PartitionedCall:output:0dense_2_37513dense_2_37515*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_373032!
dense_2/StatefulPartitionedCall�
1conv1d_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_6_37489*"
_output_shapes
:	 *
dtype023
1conv1d_6/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_6/kernel/Regularizer/SquareSquare9conv1d_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	 2$
"conv1d_6/kernel/Regularizer/Square�
!conv1d_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_6/kernel/Regularizer/Const�
conv1d_6/kernel/Regularizer/SumSum&conv1d_6/kernel/Regularizer/Square:y:0*conv1d_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_6/kernel/Regularizer/Sum�
!conv1d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_6/kernel/Regularizer/mul/x�
conv1d_6/kernel/Regularizer/mulMul*conv1d_6/kernel/Regularizer/mul/x:output:0(conv1d_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_6/kernel/Regularizer/mul�
1conv1d_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_7_37495*"
_output_shapes
: @*
dtype023
1conv1d_7/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_7/kernel/Regularizer/SquareSquare9conv1d_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: @2$
"conv1d_7/kernel/Regularizer/Square�
!conv1d_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_7/kernel/Regularizer/Const�
conv1d_7/kernel/Regularizer/SumSum&conv1d_7/kernel/Regularizer/Square:y:0*conv1d_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_7/kernel/Regularizer/Sum�
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_7/kernel/Regularizer/mul/x�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0(conv1d_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_7/kernel/Regularizer/mul�
1conv1d_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_8_37501*"
_output_shapes
:@`*
dtype023
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_8/kernel/Regularizer/SquareSquare9conv1d_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@`2$
"conv1d_8/kernel/Regularizer/Square�
!conv1d_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_8/kernel/Regularizer/Const�
conv1d_8/kernel/Regularizer/SumSum&conv1d_8/kernel/Regularizer/Square:y:0*conv1d_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/Sum�
!conv1d_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_8/kernel/Regularizer/mul/x�
conv1d_8/kernel/Regularizer/mulMul*conv1d_8/kernel/Regularizer/mul/x:output:0(conv1d_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/mul�
0encoder/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_37507*#
_output_shapes
:`�*
dtype022
0encoder/kernel/Regularizer/Square/ReadVariableOp�
!encoder/kernel/Regularizer/SquareSquare8encoder/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:`�2#
!encoder/kernel/Regularizer/Square�
 encoder/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 encoder/kernel/Regularizer/Const�
encoder/kernel/Regularizer/SumSum%encoder/kernel/Regularizer/Square:y:0)encoder/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
encoder/kernel/Regularizer/Sum�
 encoder/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82"
 encoder/kernel/Regularizer/mul/x�
encoder/kernel/Regularizer/mulMul)encoder/kernel/Regularizer/mul/x:output:0'encoder/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
encoder/kernel/Regularizer/mul�
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0!^conv1d_6/StatefulPartitionedCall2^conv1d_6/kernel/Regularizer/Square/ReadVariableOp!^conv1d_7/StatefulPartitionedCall2^conv1d_7/kernel/Regularizer/Square/ReadVariableOp!^conv1d_8/StatefulPartitionedCall2^conv1d_8/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall ^encoder/StatefulPartitionedCall1^encoder/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������	::::::::::2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2f
1conv1d_6/kernel/Regularizer/Square/ReadVariableOp1conv1d_6/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2f
1conv1d_7/kernel/Regularizer/Square/ReadVariableOp1conv1d_7/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2f
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp1conv1d_8/kernel/Regularizer/Square/ReadVariableOp2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2d
0encoder/kernel/Regularizer/Square/ReadVariableOp0encoder/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:����������	
 
_user_specified_nameinputs
�
�
B__inference_encoder_layer_call_and_return_conditional_losses_38084

inputs/
+conv1d_expanddims_1_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�"conv1d/ExpandDims_1/ReadVariableOp�0encoder/kernel/Regularizer/Square/ReadVariableOpy
conv1d/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������2
conv1d/ExpandDims/dim�
conv1d/ExpandDims
ExpandDimsinputsconv1d/ExpandDims/dim:output:0*
T0*/
_output_shapes
:���������S`2
conv1d/ExpandDims�
"conv1d/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`�*
dtype02$
"conv1d/ExpandDims_1/ReadVariableOpt
conv1d/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
conv1d/ExpandDims_1/dim�
conv1d/ExpandDims_1
ExpandDims*conv1d/ExpandDims_1/ReadVariableOp:value:0 conv1d/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:`�2
conv1d/ExpandDims_1�
conv1dConv2Dconv1d/ExpandDims:output:0conv1d/ExpandDims_1:output:0*
T0*0
_output_shapes
:���������P�*
paddingVALID*
strides
2
conv1d�
conv1d/SqueezeSqueezeconv1d:output:0*
T0*,
_output_shapes
:���������P�*
squeeze_dims

���������2
conv1d/Squeeze�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddconv1d/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:���������P�2	
BiasAdd]
ReluReluBiasAdd:output:0*
T0*,
_output_shapes
:���������P�2
Relu�
0encoder/kernel/Regularizer/Square/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*#
_output_shapes
:`�*
dtype022
0encoder/kernel/Regularizer/Square/ReadVariableOp�
!encoder/kernel/Regularizer/SquareSquare8encoder/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:`�2#
!encoder/kernel/Regularizer/Square�
 encoder/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 encoder/kernel/Regularizer/Const�
encoder/kernel/Regularizer/SumSum%encoder/kernel/Regularizer/Square:y:0)encoder/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
encoder/kernel/Regularizer/Sum�
 encoder/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82"
 encoder/kernel/Regularizer/mul/x�
encoder/kernel/Regularizer/mulMul)encoder/kernel/Regularizer/mul/x:output:0'encoder/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
encoder/kernel/Regularizer/mul�
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp#^conv1d/ExpandDims_1/ReadVariableOp1^encoder/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:���������P�2

Identity"
identityIdentity:output:0*2
_input_shapes!
:���������S`::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"conv1d/ExpandDims_1/ReadVariableOp"conv1d/ExpandDims_1/ReadVariableOp2d
0encoder/kernel/Regularizer/Square/ReadVariableOp0encoder/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:���������S`
 
_user_specified_nameinputs
�S
�
B__inference_model_2_layer_call_and_return_conditional_losses_37461

inputs
conv1d_6_37407
conv1d_6_37409
conv1d_7_37413
conv1d_7_37415
conv1d_8_37419
conv1d_8_37421
encoder_37425
encoder_37427
dense_2_37431
dense_2_37433
identity�� conv1d_6/StatefulPartitionedCall�1conv1d_6/kernel/Regularizer/Square/ReadVariableOp� conv1d_7/StatefulPartitionedCall�1conv1d_7/kernel/Regularizer/Square/ReadVariableOp� conv1d_8/StatefulPartitionedCall�1conv1d_8/kernel/Regularizer/Square/ReadVariableOp�dense_2/StatefulPartitionedCall�!dropout_6/StatefulPartitionedCall�!dropout_7/StatefulPartitionedCall�!dropout_8/StatefulPartitionedCall�encoder/StatefulPartitionedCall�0encoder/kernel/Regularizer/Square/ReadVariableOp�
 conv1d_6/StatefulPartitionedCallStatefulPartitionedCallinputsconv1d_6_37407conv1d_6_37409*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_6_layer_call_and_return_conditional_losses_370712"
 conv1d_6/StatefulPartitionedCall�
!dropout_6/StatefulPartitionedCallStatefulPartitionedCall)conv1d_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������i * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_6_layer_call_and_return_conditional_losses_370992#
!dropout_6/StatefulPartitionedCall�
 conv1d_7/StatefulPartitionedCallStatefulPartitionedCall*dropout_6/StatefulPartitionedCall:output:0conv1d_7_37413conv1d_7_37415*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������Z@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_7_layer_call_and_return_conditional_losses_371392"
 conv1d_7/StatefulPartitionedCall�
!dropout_7/StatefulPartitionedCallStatefulPartitionedCall)conv1d_7/StatefulPartitionedCall:output:0"^dropout_6/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������Z@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_371672#
!dropout_7/StatefulPartitionedCall�
 conv1d_8/StatefulPartitionedCallStatefulPartitionedCall*dropout_7/StatefulPartitionedCall:output:0conv1d_8_37419conv1d_8_37421*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������S`*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_conv1d_8_layer_call_and_return_conditional_losses_372072"
 conv1d_8/StatefulPartitionedCall�
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall)conv1d_8/StatefulPartitionedCall:output:0"^dropout_7/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������S`* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_8_layer_call_and_return_conditional_losses_372352#
!dropout_8/StatefulPartitionedCall�
encoder/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0encoder_37425encoder_37427*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:���������P�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_encoder_layer_call_and_return_conditional_losses_372752!
encoder/StatefulPartitionedCall�
&global_max_pooling1d_2/PartitionedCallPartitionedCall(encoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_370392(
&global_max_pooling1d_2/PartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling1d_2/PartitionedCall:output:0dense_2_37431dense_2_37433*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_373032!
dense_2/StatefulPartitionedCall�
1conv1d_6/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_6_37407*"
_output_shapes
:	 *
dtype023
1conv1d_6/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_6/kernel/Regularizer/SquareSquare9conv1d_6/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:	 2$
"conv1d_6/kernel/Regularizer/Square�
!conv1d_6/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_6/kernel/Regularizer/Const�
conv1d_6/kernel/Regularizer/SumSum&conv1d_6/kernel/Regularizer/Square:y:0*conv1d_6/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_6/kernel/Regularizer/Sum�
!conv1d_6/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_6/kernel/Regularizer/mul/x�
conv1d_6/kernel/Regularizer/mulMul*conv1d_6/kernel/Regularizer/mul/x:output:0(conv1d_6/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_6/kernel/Regularizer/mul�
1conv1d_7/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_7_37413*"
_output_shapes
: @*
dtype023
1conv1d_7/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_7/kernel/Regularizer/SquareSquare9conv1d_7/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
: @2$
"conv1d_7/kernel/Regularizer/Square�
!conv1d_7/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_7/kernel/Regularizer/Const�
conv1d_7/kernel/Regularizer/SumSum&conv1d_7/kernel/Regularizer/Square:y:0*conv1d_7/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_7/kernel/Regularizer/Sum�
!conv1d_7/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_7/kernel/Regularizer/mul/x�
conv1d_7/kernel/Regularizer/mulMul*conv1d_7/kernel/Regularizer/mul/x:output:0(conv1d_7/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_7/kernel/Regularizer/mul�
1conv1d_8/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv1d_8_37419*"
_output_shapes
:@`*
dtype023
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp�
"conv1d_8/kernel/Regularizer/SquareSquare9conv1d_8/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*"
_output_shapes
:@`2$
"conv1d_8/kernel/Regularizer/Square�
!conv1d_8/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2#
!conv1d_8/kernel/Regularizer/Const�
conv1d_8/kernel/Regularizer/SumSum&conv1d_8/kernel/Regularizer/Square:y:0*conv1d_8/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/Sum�
!conv1d_8/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82#
!conv1d_8/kernel/Regularizer/mul/x�
conv1d_8/kernel/Regularizer/mulMul*conv1d_8/kernel/Regularizer/mul/x:output:0(conv1d_8/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2!
conv1d_8/kernel/Regularizer/mul�
0encoder/kernel/Regularizer/Square/ReadVariableOpReadVariableOpencoder_37425*#
_output_shapes
:`�*
dtype022
0encoder/kernel/Regularizer/Square/ReadVariableOp�
!encoder/kernel/Regularizer/SquareSquare8encoder/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*#
_output_shapes
:`�2#
!encoder/kernel/Regularizer/Square�
 encoder/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*!
valueB"          2"
 encoder/kernel/Regularizer/Const�
encoder/kernel/Regularizer/SumSum%encoder/kernel/Regularizer/Square:y:0)encoder/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2 
encoder/kernel/Regularizer/Sum�
 encoder/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��82"
 encoder/kernel/Regularizer/mul/x�
encoder/kernel/Regularizer/mulMul)encoder/kernel/Regularizer/mul/x:output:0'encoder/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2 
encoder/kernel/Regularizer/mul�
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0!^conv1d_6/StatefulPartitionedCall2^conv1d_6/kernel/Regularizer/Square/ReadVariableOp!^conv1d_7/StatefulPartitionedCall2^conv1d_7/kernel/Regularizer/Square/ReadVariableOp!^conv1d_8/StatefulPartitionedCall2^conv1d_8/kernel/Regularizer/Square/ReadVariableOp ^dense_2/StatefulPartitionedCall"^dropout_6/StatefulPartitionedCall"^dropout_7/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall ^encoder/StatefulPartitionedCall1^encoder/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������	::::::::::2D
 conv1d_6/StatefulPartitionedCall conv1d_6/StatefulPartitionedCall2f
1conv1d_6/kernel/Regularizer/Square/ReadVariableOp1conv1d_6/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_7/StatefulPartitionedCall conv1d_7/StatefulPartitionedCall2f
1conv1d_7/kernel/Regularizer/Square/ReadVariableOp1conv1d_7/kernel/Regularizer/Square/ReadVariableOp2D
 conv1d_8/StatefulPartitionedCall conv1d_8/StatefulPartitionedCall2f
1conv1d_8/kernel/Regularizer/Square/ReadVariableOp1conv1d_8/kernel/Regularizer/Square/ReadVariableOp2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2F
!dropout_6/StatefulPartitionedCall!dropout_6/StatefulPartitionedCall2F
!dropout_7/StatefulPartitionedCall!dropout_7/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2B
encoder/StatefulPartitionedCallencoder/StatefulPartitionedCall2d
0encoder/kernel/Regularizer/Square/ReadVariableOp0encoder/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:����������	
 
_user_specified_nameinputs
�
�
'__inference_model_2_layer_call_fn_37864

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_model_2_layer_call_and_return_conditional_losses_375432
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*S
_input_shapesB
@:����������	::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������	
 
_user_specified_nameinputs
�
b
)__inference_dropout_7_layer_call_fn_37987

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������Z@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dropout_7_layer_call_and_return_conditional_losses_371672
StatefulPartitionedCall�
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*+
_output_shapes
:���������Z@2

Identity"
identityIdentity:output:0**
_input_shapes
:���������Z@22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������Z@
 
_user_specified_nameinputs
�	
�
B__inference_dense_2_layer_call_and_return_conditional_losses_37303

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2
MatMul�
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp�
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������2	
Softmax�
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:���������2

Identity"
identityIdentity:output:0*/
_input_shapes
:����������::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
@
input_35
serving_default_input_3:0����������	;
dense_20
StatefulPartitionedCall:0���������tensorflow/serving/predict:ȼ
�T
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
layer-6
layer_with_weights-3
layer-7
	layer-8

layer_with_weights-4

layer-9
	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
�__call__
+�&call_and_return_all_conditional_losses
�_default_save_signature"�P
_tf_keras_network�P{"class_name": "Functional", "name": "model_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": []}, {"class_name": "Conv1D", "config": {"name": "conv1d_6", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [24]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_6", "inbound_nodes": [[["input_3", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_6", "inbound_nodes": [[["conv1d_6", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_7", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [16]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_7", "inbound_nodes": [[["dropout_6", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_7", "inbound_nodes": [[["conv1d_7", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_8", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [8]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_8", "inbound_nodes": [[["dropout_7", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_8", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_8", "inbound_nodes": [[["conv1d_8", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "encoder", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder", "inbound_nodes": [[["dropout_8", 0, 0, {}]]]}, {"class_name": "GlobalMaxPooling1D", "config": {"name": "global_max_pooling1d_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_max_pooling1d_2", "inbound_nodes": [[["encoder", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["global_max_pooling1d_2", 0, 0, {}]]]}], "input_layers": [["input_3", 0, 0]], "output_layers": [["dense_2", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 128, 9]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 9]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model_2", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}, "name": "input_3", "inbound_nodes": []}, {"class_name": "Conv1D", "config": {"name": "conv1d_6", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [24]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_6", "inbound_nodes": [[["input_3", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_6", "inbound_nodes": [[["conv1d_6", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_7", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [16]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_7", "inbound_nodes": [[["dropout_6", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_7", "inbound_nodes": [[["conv1d_7", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "conv1d_8", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [8]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv1d_8", "inbound_nodes": [[["dropout_7", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_8", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_8", "inbound_nodes": [[["conv1d_8", 0, 0, {}]]]}, {"class_name": "Conv1D", "config": {"name": "encoder", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "encoder", "inbound_nodes": [[["dropout_8", 0, 0, {}]]]}, {"class_name": "GlobalMaxPooling1D", "config": {"name": "global_max_pooling1d_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "global_max_pooling1d_2", "inbound_nodes": [[["encoder", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_2", "inbound_nodes": [[["global_max_pooling1d_2", 0, 0, {}]]]}], "input_layers": [["input_3", 0, 0]], "output_layers": [["dense_2", 0, 0]]}}}
�"�
_tf_keras_input_layer�{"class_name": "InputLayer", "name": "input_3", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 9]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 128, 9]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_3"}}
�


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Conv1D", "name": "conv1d_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_6", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [24]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 9}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128, 9]}}
�
trainable_variables
regularization_losses
	variables
	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dropout", "name": "dropout_6", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_6", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
�


kernel
bias
trainable_variables
regularization_losses
	variables
 	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Conv1D", "name": "conv1d_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_7", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [16]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 105, 32]}}
�
!trainable_variables
"regularization_losses
#	variables
$	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dropout", "name": "dropout_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_7", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
�


%kernel
&bias
'trainable_variables
(regularization_losses
)	variables
*	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Conv1D", "name": "conv1d_8", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv1d_8", "trainable": true, "dtype": "float32", "filters": 96, "kernel_size": {"class_name": "__tuple__", "items": [8]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 90, 64]}}
�
+trainable_variables
,regularization_losses
-	variables
.	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dropout", "name": "dropout_8", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_8", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
�


/kernel
0bias
1trainable_variables
2regularization_losses
3	variables
4	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Conv1D", "name": "encoder", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "encoder", "trainable": true, "dtype": "float32", "filters": 128, "kernel_size": {"class_name": "__tuple__", "items": [4]}, "strides": {"class_name": "__tuple__", "items": [1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 3, "axes": {"-1": 96}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 83, 96]}}
�
5trainable_variables
6regularization_losses
7	variables
8	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "GlobalMaxPooling1D", "name": "global_max_pooling1d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "global_max_pooling1d_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
�

9kernel
:bias
;trainable_variables
<regularization_losses
=	variables
>	keras_api
�__call__
+�&call_and_return_all_conditional_losses"�
_tf_keras_layer�{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 6, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
�
?iter

@beta_1

Abeta_2
	Bdecay
Clearning_ratem�m�m�m�%m�&m�/m�0m�9m�:m�v�v�v�v�%v�&v�/v�0v�9v�:v�"
	optimizer
f
0
1
2
3
%4
&5
/6
07
98
:9"
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
f
0
1
2
3
%4
&5
/6
07
98
:9"
trackable_list_wrapper
�
trainable_variables
Dmetrics
Elayer_metrics
Fnon_trainable_variables
Glayer_regularization_losses

Hlayers
regularization_losses
	variables
�__call__
�_default_save_signature
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
-
�serving_default"
signature_map
%:#	 2conv1d_6/kernel
: 2conv1d_6/bias
.
0
1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
trainable_variables
Imetrics
Jlayer_metrics
Knon_trainable_variables
Llayer_regularization_losses

Mlayers
regularization_losses
	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
trainable_variables
Nmetrics
Olayer_metrics
Pnon_trainable_variables
Qlayer_regularization_losses

Rlayers
regularization_losses
	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
%:# @2conv1d_7/kernel
:@2conv1d_7/bias
.
0
1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
�
trainable_variables
Smetrics
Tlayer_metrics
Unon_trainable_variables
Vlayer_regularization_losses

Wlayers
regularization_losses
	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
!trainable_variables
Xmetrics
Ylayer_metrics
Znon_trainable_variables
[layer_regularization_losses

\layers
"regularization_losses
#	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
%:#@`2conv1d_8/kernel
:`2conv1d_8/bias
.
%0
&1"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
�
'trainable_variables
]metrics
^layer_metrics
_non_trainable_variables
`layer_regularization_losses

alayers
(regularization_losses
)	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
+trainable_variables
bmetrics
clayer_metrics
dnon_trainable_variables
elayer_regularization_losses

flayers
,regularization_losses
-	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
%:#`�2encoder/kernel
:�2encoder/bias
.
/0
01"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
.
/0
01"
trackable_list_wrapper
�
1trainable_variables
gmetrics
hlayer_metrics
inon_trainable_variables
jlayer_regularization_losses

klayers
2regularization_losses
3	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
5trainable_variables
lmetrics
mlayer_metrics
nnon_trainable_variables
olayer_regularization_losses

players
6regularization_losses
7	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
!:	�2dense_2/kernel
:2dense_2/bias
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
�
;trainable_variables
qmetrics
rlayer_metrics
snon_trainable_variables
tlayer_regularization_losses

ulayers
<regularization_losses
=	variables
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
.
v0
w1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
f
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
9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
�0"
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
(
�0"
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
(
�0"
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
(
�0"
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
�
	xtotal
	ycount
z	variables
{	keras_api"�
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
�
	|total
	}count
~
_fn_kwargs
	variables
�	keras_api"�
_tf_keras_metric�{"class_name": "MeanMetricWrapper", "name": "categorical_accuracy", "dtype": "float32", "config": {"name": "categorical_accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
:  (2total
:  (2count
.
x0
y1"
trackable_list_wrapper
-
z	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
|0
}1"
trackable_list_wrapper
-
	variables"
_generic_user_object
*:(	 2Adam/conv1d_6/kernel/m
 : 2Adam/conv1d_6/bias/m
*:( @2Adam/conv1d_7/kernel/m
 :@2Adam/conv1d_7/bias/m
*:(@`2Adam/conv1d_8/kernel/m
 :`2Adam/conv1d_8/bias/m
*:(`�2Adam/encoder/kernel/m
 :�2Adam/encoder/bias/m
&:$	�2Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
*:(	 2Adam/conv1d_6/kernel/v
 : 2Adam/conv1d_6/bias/v
*:( @2Adam/conv1d_7/kernel/v
 :@2Adam/conv1d_7/bias/v
*:(@`2Adam/conv1d_8/kernel/v
 :`2Adam/conv1d_8/bias/v
*:(`�2Adam/encoder/kernel/v
 :�2Adam/encoder/bias/v
&:$	�2Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v
�2�
'__inference_model_2_layer_call_fn_37864
'__inference_model_2_layer_call_fn_37566
'__inference_model_2_layer_call_fn_37484
'__inference_model_2_layer_call_fn_37839�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
B__inference_model_2_layer_call_and_return_conditional_losses_37344
B__inference_model_2_layer_call_and_return_conditional_losses_37726
B__inference_model_2_layer_call_and_return_conditional_losses_37401
B__inference_model_2_layer_call_and_return_conditional_losses_37814�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
 __inference__wrapped_model_37032�
���
FullArgSpec
args� 
varargsjargs
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *+�(
&�#
input_3����������	
�2�
(__inference_conv1d_6_layer_call_fn_37901�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_conv1d_6_layer_call_and_return_conditional_losses_37892�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dropout_6_layer_call_fn_37923
)__inference_dropout_6_layer_call_fn_37928�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_dropout_6_layer_call_and_return_conditional_losses_37918
D__inference_dropout_6_layer_call_and_return_conditional_losses_37913�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_conv1d_7_layer_call_fn_37965�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_conv1d_7_layer_call_and_return_conditional_losses_37956�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dropout_7_layer_call_fn_37987
)__inference_dropout_7_layer_call_fn_37992�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_dropout_7_layer_call_and_return_conditional_losses_37977
D__inference_dropout_7_layer_call_and_return_conditional_losses_37982�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
(__inference_conv1d_8_layer_call_fn_38029�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
C__inference_conv1d_8_layer_call_and_return_conditional_losses_38020�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
)__inference_dropout_8_layer_call_fn_38056
)__inference_dropout_8_layer_call_fn_38051�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
D__inference_dropout_8_layer_call_and_return_conditional_losses_38041
D__inference_dropout_8_layer_call_and_return_conditional_losses_38046�
���
FullArgSpec)
args!�
jself
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�2�
'__inference_encoder_layer_call_fn_38093�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_encoder_layer_call_and_return_conditional_losses_38084�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
6__inference_global_max_pooling1d_2_layer_call_fn_37045�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *3�0
.�+'���������������������������
�2�
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_37039�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *3�0
.�+'���������������������������
�2�
'__inference_dense_2_layer_call_fn_38113�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
B__inference_dense_2_layer_call_and_return_conditional_losses_38104�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2�
__inference_loss_fn_0_38124�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_1_38135�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_2_38146�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�2�
__inference_loss_fn_3_38157�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
#__inference_signature_wrapper_37617input_3"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
 __inference__wrapped_model_37032v
%&/09:5�2
+�(
&�#
input_3����������	
� "1�.
,
dense_2!�
dense_2����������
C__inference_conv1d_6_layer_call_and_return_conditional_losses_37892e4�1
*�'
%�"
inputs����������	
� ")�&
�
0���������i 
� �
(__inference_conv1d_6_layer_call_fn_37901X4�1
*�'
%�"
inputs����������	
� "����������i �
C__inference_conv1d_7_layer_call_and_return_conditional_losses_37956d3�0
)�&
$�!
inputs���������i 
� ")�&
�
0���������Z@
� �
(__inference_conv1d_7_layer_call_fn_37965W3�0
)�&
$�!
inputs���������i 
� "����������Z@�
C__inference_conv1d_8_layer_call_and_return_conditional_losses_38020d%&3�0
)�&
$�!
inputs���������Z@
� ")�&
�
0���������S`
� �
(__inference_conv1d_8_layer_call_fn_38029W%&3�0
)�&
$�!
inputs���������Z@
� "����������S`�
B__inference_dense_2_layer_call_and_return_conditional_losses_38104]9:0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� {
'__inference_dense_2_layer_call_fn_38113P9:0�-
&�#
!�
inputs����������
� "�����������
D__inference_dropout_6_layer_call_and_return_conditional_losses_37913d7�4
-�*
$�!
inputs���������i 
p
� ")�&
�
0���������i 
� �
D__inference_dropout_6_layer_call_and_return_conditional_losses_37918d7�4
-�*
$�!
inputs���������i 
p 
� ")�&
�
0���������i 
� �
)__inference_dropout_6_layer_call_fn_37923W7�4
-�*
$�!
inputs���������i 
p
� "����������i �
)__inference_dropout_6_layer_call_fn_37928W7�4
-�*
$�!
inputs���������i 
p 
� "����������i �
D__inference_dropout_7_layer_call_and_return_conditional_losses_37977d7�4
-�*
$�!
inputs���������Z@
p
� ")�&
�
0���������Z@
� �
D__inference_dropout_7_layer_call_and_return_conditional_losses_37982d7�4
-�*
$�!
inputs���������Z@
p 
� ")�&
�
0���������Z@
� �
)__inference_dropout_7_layer_call_fn_37987W7�4
-�*
$�!
inputs���������Z@
p
� "����������Z@�
)__inference_dropout_7_layer_call_fn_37992W7�4
-�*
$�!
inputs���������Z@
p 
� "����������Z@�
D__inference_dropout_8_layer_call_and_return_conditional_losses_38041d7�4
-�*
$�!
inputs���������S`
p
� ")�&
�
0���������S`
� �
D__inference_dropout_8_layer_call_and_return_conditional_losses_38046d7�4
-�*
$�!
inputs���������S`
p 
� ")�&
�
0���������S`
� �
)__inference_dropout_8_layer_call_fn_38051W7�4
-�*
$�!
inputs���������S`
p
� "����������S`�
)__inference_dropout_8_layer_call_fn_38056W7�4
-�*
$�!
inputs���������S`
p 
� "����������S`�
B__inference_encoder_layer_call_and_return_conditional_losses_38084e/03�0
)�&
$�!
inputs���������S`
� "*�'
 �
0���������P�
� �
'__inference_encoder_layer_call_fn_38093X/03�0
)�&
$�!
inputs���������S`
� "����������P��
Q__inference_global_max_pooling1d_2_layer_call_and_return_conditional_losses_37039wE�B
;�8
6�3
inputs'���������������������������
� ".�+
$�!
0������������������
� �
6__inference_global_max_pooling1d_2_layer_call_fn_37045jE�B
;�8
6�3
inputs'���������������������������
� "!�������������������:
__inference_loss_fn_0_38124�

� 
� "� :
__inference_loss_fn_1_38135�

� 
� "� :
__inference_loss_fn_2_38146%�

� 
� "� :
__inference_loss_fn_3_38157/�

� 
� "� �
B__inference_model_2_layer_call_and_return_conditional_losses_37344r
%&/09:=�:
3�0
&�#
input_3����������	
p

 
� "%�"
�
0���������
� �
B__inference_model_2_layer_call_and_return_conditional_losses_37401r
%&/09:=�:
3�0
&�#
input_3����������	
p 

 
� "%�"
�
0���������
� �
B__inference_model_2_layer_call_and_return_conditional_losses_37726q
%&/09:<�9
2�/
%�"
inputs����������	
p

 
� "%�"
�
0���������
� �
B__inference_model_2_layer_call_and_return_conditional_losses_37814q
%&/09:<�9
2�/
%�"
inputs����������	
p 

 
� "%�"
�
0���������
� �
'__inference_model_2_layer_call_fn_37484e
%&/09:=�:
3�0
&�#
input_3����������	
p

 
� "�����������
'__inference_model_2_layer_call_fn_37566e
%&/09:=�:
3�0
&�#
input_3����������	
p 

 
� "�����������
'__inference_model_2_layer_call_fn_37839d
%&/09:<�9
2�/
%�"
inputs����������	
p

 
� "�����������
'__inference_model_2_layer_call_fn_37864d
%&/09:<�9
2�/
%�"
inputs����������	
p 

 
� "�����������
#__inference_signature_wrapper_37617�
%&/09:@�=
� 
6�3
1
input_3&�#
input_3����������	"1�.
,
dense_2!�
dense_2���������