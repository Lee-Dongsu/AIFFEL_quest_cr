��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
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
$
DisableCopyOnRead
resource�
.
Identity

input"T
output"T"	
Ttype
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�
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
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
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
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�"serve*2.18.02v2.18.0-rc2-4-g6550e4bd8028��
�
2sequential_1/batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *C

debug_name53sequential_1/batch_normalization_3/moving_variance/*
dtype0*
shape:@*C
shared_name42sequential_1/batch_normalization_3/moving_variance
�
Fsequential_1/batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp2sequential_1/batch_normalization_3/moving_variance*
_output_shapes
:@*
dtype0
�
.sequential_1/batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *?

debug_name1/sequential_1/batch_normalization_3/moving_mean/*
dtype0*
shape:@*?
shared_name0.sequential_1/batch_normalization_3/moving_mean
�
Bsequential_1/batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp.sequential_1/batch_normalization_3/moving_mean*
_output_shapes
:@*
dtype0
�
2sequential_1/batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *C

debug_name53sequential_1/batch_normalization_2/moving_variance/*
dtype0*
shape: *C
shared_name42sequential_1/batch_normalization_2/moving_variance
�
Fsequential_1/batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp2sequential_1/batch_normalization_2/moving_variance*
_output_shapes
: *
dtype0
�
.sequential_1/batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *?

debug_name1/sequential_1/batch_normalization_2/moving_mean/*
dtype0*
shape: *?
shared_name0.sequential_1/batch_normalization_2/moving_mean
�
Bsequential_1/batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp.sequential_1/batch_normalization_2/moving_mean*
_output_shapes
: *
dtype0
�
sequential_1/dense_3/biasVarHandleOp*
_output_shapes
: **

debug_namesequential_1/dense_3/bias/*
dtype0*
shape:
**
shared_namesequential_1/dense_3/bias
�
-sequential_1/dense_3/bias/Read/ReadVariableOpReadVariableOpsequential_1/dense_3/bias*
_output_shapes
:
*
dtype0
�
sequential_1/dense_2/kernelVarHandleOp*
_output_shapes
: *,

debug_namesequential_1/dense_2/kernel/*
dtype0*
shape:
��*,
shared_namesequential_1/dense_2/kernel
�
/sequential_1/dense_2/kernel/Read/ReadVariableOpReadVariableOpsequential_1/dense_2/kernel* 
_output_shapes
:
��*
dtype0
�
'sequential_1/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *8

debug_name*(sequential_1/batch_normalization_3/beta/*
dtype0*
shape:@*8
shared_name)'sequential_1/batch_normalization_3/beta
�
;sequential_1/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp'sequential_1/batch_normalization_3/beta*
_output_shapes
:@*
dtype0
�
(sequential_1/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *9

debug_name+)sequential_1/batch_normalization_3/gamma/*
dtype0*
shape:@*9
shared_name*(sequential_1/batch_normalization_3/gamma
�
<sequential_1/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp(sequential_1/batch_normalization_3/gamma*
_output_shapes
:@*
dtype0
�
sequential_1/conv2d_3/kernelVarHandleOp*
_output_shapes
: *-

debug_namesequential_1/conv2d_3/kernel/*
dtype0*
shape: @*-
shared_namesequential_1/conv2d_3/kernel
�
0sequential_1/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpsequential_1/conv2d_3/kernel*&
_output_shapes
: @*
dtype0
�
'sequential_1/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *8

debug_name*(sequential_1/batch_normalization_2/beta/*
dtype0*
shape: *8
shared_name)'sequential_1/batch_normalization_2/beta
�
;sequential_1/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp'sequential_1/batch_normalization_2/beta*
_output_shapes
: *
dtype0
�
sequential_1/conv2d_2/biasVarHandleOp*
_output_shapes
: *+

debug_namesequential_1/conv2d_2/bias/*
dtype0*
shape: *+
shared_namesequential_1/conv2d_2/bias
�
.sequential_1/conv2d_2/bias/Read/ReadVariableOpReadVariableOpsequential_1/conv2d_2/bias*
_output_shapes
: *
dtype0
�
sequential_1/dense_3/kernelVarHandleOp*
_output_shapes
: *,

debug_namesequential_1/dense_3/kernel/*
dtype0*
shape:	�
*,
shared_namesequential_1/dense_3/kernel
�
/sequential_1/dense_3/kernel/Read/ReadVariableOpReadVariableOpsequential_1/dense_3/kernel*
_output_shapes
:	�
*
dtype0
�
sequential_1/dense_2/biasVarHandleOp*
_output_shapes
: **

debug_namesequential_1/dense_2/bias/*
dtype0*
shape:�**
shared_namesequential_1/dense_2/bias
�
-sequential_1/dense_2/bias/Read/ReadVariableOpReadVariableOpsequential_1/dense_2/bias*
_output_shapes	
:�*
dtype0
�
sequential_1/conv2d_3/biasVarHandleOp*
_output_shapes
: *+

debug_namesequential_1/conv2d_3/bias/*
dtype0*
shape:@*+
shared_namesequential_1/conv2d_3/bias
�
.sequential_1/conv2d_3/bias/Read/ReadVariableOpReadVariableOpsequential_1/conv2d_3/bias*
_output_shapes
:@*
dtype0
�
(sequential_1/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *9

debug_name+)sequential_1/batch_normalization_2/gamma/*
dtype0*
shape: *9
shared_name*(sequential_1/batch_normalization_2/gamma
�
<sequential_1/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp(sequential_1/batch_normalization_2/gamma*
_output_shapes
: *
dtype0
�
sequential_1/conv2d_2/kernelVarHandleOp*
_output_shapes
: *-

debug_namesequential_1/conv2d_2/kernel/*
dtype0*
shape: *-
shared_namesequential_1/conv2d_2/kernel
�
0sequential_1/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpsequential_1/conv2d_2/kernel*&
_output_shapes
: *
dtype0
�
sequential_1/dense_3/bias_1VarHandleOp*
_output_shapes
: *,

debug_namesequential_1/dense_3/bias_1/*
dtype0*
shape:
*,
shared_namesequential_1/dense_3/bias_1
�
/sequential_1/dense_3/bias_1/Read/ReadVariableOpReadVariableOpsequential_1/dense_3/bias_1*
_output_shapes
:
*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpsequential_1/dense_3/bias_1*
_class
loc:@Variable*
_output_shapes
:
*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:
*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:
*
dtype0
�
sequential_1/dense_3/kernel_1VarHandleOp*
_output_shapes
: *.

debug_name sequential_1/dense_3/kernel_1/*
dtype0*
shape:	�
*.
shared_namesequential_1/dense_3/kernel_1
�
1sequential_1/dense_3/kernel_1/Read/ReadVariableOpReadVariableOpsequential_1/dense_3/kernel_1*
_output_shapes
:	�
*
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpsequential_1/dense_3/kernel_1*
_class
loc:@Variable_1*
_output_shapes
:	�
*
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape:	�
*
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
j
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
:	�
*
dtype0
�
#seed_generator/seed_generator_stateVarHandleOp*
_output_shapes
: *4

debug_name&$seed_generator/seed_generator_state/*
dtype0	*
shape:*4
shared_name%#seed_generator/seed_generator_state
�
7seed_generator/seed_generator_state/Read/ReadVariableOpReadVariableOp#seed_generator/seed_generator_state*
_output_shapes
:*
dtype0	
�
%Variable_2/Initializer/ReadVariableOpReadVariableOp#seed_generator/seed_generator_state*
_class
loc:@Variable_2*
_output_shapes
:*
dtype0	
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0	*
shape:*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0	
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:*
dtype0	
�
sequential_1/dense_2/bias_1VarHandleOp*
_output_shapes
: *,

debug_namesequential_1/dense_2/bias_1/*
dtype0*
shape:�*,
shared_namesequential_1/dense_2/bias_1
�
/sequential_1/dense_2/bias_1/Read/ReadVariableOpReadVariableOpsequential_1/dense_2/bias_1*
_output_shapes	
:�*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOpsequential_1/dense_2/bias_1*
_class
loc:@Variable_3*
_output_shapes	
:�*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:�*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
f
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes	
:�*
dtype0
�
sequential_1/dense_2/kernel_1VarHandleOp*
_output_shapes
: *.

debug_name sequential_1/dense_2/kernel_1/*
dtype0*
shape:
��*.
shared_namesequential_1/dense_2/kernel_1
�
1sequential_1/dense_2/kernel_1/Read/ReadVariableOpReadVariableOpsequential_1/dense_2/kernel_1* 
_output_shapes
:
��*
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOpsequential_1/dense_2/kernel_1*
_class
loc:@Variable_4* 
_output_shapes
:
��*
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape:
��*
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
k
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4* 
_output_shapes
:
��*
dtype0
�
4sequential_1/batch_normalization_3/moving_variance_1VarHandleOp*
_output_shapes
: *E

debug_name75sequential_1/batch_normalization_3/moving_variance_1/*
dtype0*
shape:@*E
shared_name64sequential_1/batch_normalization_3/moving_variance_1
�
Hsequential_1/batch_normalization_3/moving_variance_1/Read/ReadVariableOpReadVariableOp4sequential_1/batch_normalization_3/moving_variance_1*
_output_shapes
:@*
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOp4sequential_1/batch_normalization_3/moving_variance_1*
_class
loc:@Variable_5*
_output_shapes
:@*
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape:@*
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
e
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes
:@*
dtype0
�
0sequential_1/batch_normalization_3/moving_mean_1VarHandleOp*
_output_shapes
: *A

debug_name31sequential_1/batch_normalization_3/moving_mean_1/*
dtype0*
shape:@*A
shared_name20sequential_1/batch_normalization_3/moving_mean_1
�
Dsequential_1/batch_normalization_3/moving_mean_1/Read/ReadVariableOpReadVariableOp0sequential_1/batch_normalization_3/moving_mean_1*
_output_shapes
:@*
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOp0sequential_1/batch_normalization_3/moving_mean_1*
_class
loc:@Variable_6*
_output_shapes
:@*
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape:@*
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
e
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes
:@*
dtype0
�
)sequential_1/batch_normalization_3/beta_1VarHandleOp*
_output_shapes
: *:

debug_name,*sequential_1/batch_normalization_3/beta_1/*
dtype0*
shape:@*:
shared_name+)sequential_1/batch_normalization_3/beta_1
�
=sequential_1/batch_normalization_3/beta_1/Read/ReadVariableOpReadVariableOp)sequential_1/batch_normalization_3/beta_1*
_output_shapes
:@*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOp)sequential_1/batch_normalization_3/beta_1*
_class
loc:@Variable_7*
_output_shapes
:@*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape:@*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
e
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes
:@*
dtype0
�
*sequential_1/batch_normalization_3/gamma_1VarHandleOp*
_output_shapes
: *;

debug_name-+sequential_1/batch_normalization_3/gamma_1/*
dtype0*
shape:@*;
shared_name,*sequential_1/batch_normalization_3/gamma_1
�
>sequential_1/batch_normalization_3/gamma_1/Read/ReadVariableOpReadVariableOp*sequential_1/batch_normalization_3/gamma_1*
_output_shapes
:@*
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOp*sequential_1/batch_normalization_3/gamma_1*
_class
loc:@Variable_8*
_output_shapes
:@*
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:@*
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
e
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes
:@*
dtype0
�
sequential_1/conv2d_3/bias_1VarHandleOp*
_output_shapes
: *-

debug_namesequential_1/conv2d_3/bias_1/*
dtype0*
shape:@*-
shared_namesequential_1/conv2d_3/bias_1
�
0sequential_1/conv2d_3/bias_1/Read/ReadVariableOpReadVariableOpsequential_1/conv2d_3/bias_1*
_output_shapes
:@*
dtype0
�
%Variable_9/Initializer/ReadVariableOpReadVariableOpsequential_1/conv2d_3/bias_1*
_class
loc:@Variable_9*
_output_shapes
:@*
dtype0
�

Variable_9VarHandleOp*
_class
loc:@Variable_9*
_output_shapes
: *

debug_nameVariable_9/*
dtype0*
shape:@*
shared_name
Variable_9
e
+Variable_9/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_9*
_output_shapes
: 
e
Variable_9/AssignAssignVariableOp
Variable_9%Variable_9/Initializer/ReadVariableOp*
dtype0
e
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*
_output_shapes
:@*
dtype0
�
sequential_1/conv2d_3/kernel_1VarHandleOp*
_output_shapes
: */

debug_name!sequential_1/conv2d_3/kernel_1/*
dtype0*
shape: @*/
shared_name sequential_1/conv2d_3/kernel_1
�
2sequential_1/conv2d_3/kernel_1/Read/ReadVariableOpReadVariableOpsequential_1/conv2d_3/kernel_1*&
_output_shapes
: @*
dtype0
�
&Variable_10/Initializer/ReadVariableOpReadVariableOpsequential_1/conv2d_3/kernel_1*
_class
loc:@Variable_10*&
_output_shapes
: @*
dtype0
�
Variable_10VarHandleOp*
_class
loc:@Variable_10*
_output_shapes
: *

debug_nameVariable_10/*
dtype0*
shape: @*
shared_nameVariable_10
g
,Variable_10/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_10*
_output_shapes
: 
h
Variable_10/AssignAssignVariableOpVariable_10&Variable_10/Initializer/ReadVariableOp*
dtype0
s
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*&
_output_shapes
: @*
dtype0
�
4sequential_1/batch_normalization_2/moving_variance_1VarHandleOp*
_output_shapes
: *E

debug_name75sequential_1/batch_normalization_2/moving_variance_1/*
dtype0*
shape: *E
shared_name64sequential_1/batch_normalization_2/moving_variance_1
�
Hsequential_1/batch_normalization_2/moving_variance_1/Read/ReadVariableOpReadVariableOp4sequential_1/batch_normalization_2/moving_variance_1*
_output_shapes
: *
dtype0
�
&Variable_11/Initializer/ReadVariableOpReadVariableOp4sequential_1/batch_normalization_2/moving_variance_1*
_class
loc:@Variable_11*
_output_shapes
: *
dtype0
�
Variable_11VarHandleOp*
_class
loc:@Variable_11*
_output_shapes
: *

debug_nameVariable_11/*
dtype0*
shape: *
shared_nameVariable_11
g
,Variable_11/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_11*
_output_shapes
: 
h
Variable_11/AssignAssignVariableOpVariable_11&Variable_11/Initializer/ReadVariableOp*
dtype0
g
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11*
_output_shapes
: *
dtype0
�
0sequential_1/batch_normalization_2/moving_mean_1VarHandleOp*
_output_shapes
: *A

debug_name31sequential_1/batch_normalization_2/moving_mean_1/*
dtype0*
shape: *A
shared_name20sequential_1/batch_normalization_2/moving_mean_1
�
Dsequential_1/batch_normalization_2/moving_mean_1/Read/ReadVariableOpReadVariableOp0sequential_1/batch_normalization_2/moving_mean_1*
_output_shapes
: *
dtype0
�
&Variable_12/Initializer/ReadVariableOpReadVariableOp0sequential_1/batch_normalization_2/moving_mean_1*
_class
loc:@Variable_12*
_output_shapes
: *
dtype0
�
Variable_12VarHandleOp*
_class
loc:@Variable_12*
_output_shapes
: *

debug_nameVariable_12/*
dtype0*
shape: *
shared_nameVariable_12
g
,Variable_12/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_12*
_output_shapes
: 
h
Variable_12/AssignAssignVariableOpVariable_12&Variable_12/Initializer/ReadVariableOp*
dtype0
g
Variable_12/Read/ReadVariableOpReadVariableOpVariable_12*
_output_shapes
: *
dtype0
�
)sequential_1/batch_normalization_2/beta_1VarHandleOp*
_output_shapes
: *:

debug_name,*sequential_1/batch_normalization_2/beta_1/*
dtype0*
shape: *:
shared_name+)sequential_1/batch_normalization_2/beta_1
�
=sequential_1/batch_normalization_2/beta_1/Read/ReadVariableOpReadVariableOp)sequential_1/batch_normalization_2/beta_1*
_output_shapes
: *
dtype0
�
&Variable_13/Initializer/ReadVariableOpReadVariableOp)sequential_1/batch_normalization_2/beta_1*
_class
loc:@Variable_13*
_output_shapes
: *
dtype0
�
Variable_13VarHandleOp*
_class
loc:@Variable_13*
_output_shapes
: *

debug_nameVariable_13/*
dtype0*
shape: *
shared_nameVariable_13
g
,Variable_13/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_13*
_output_shapes
: 
h
Variable_13/AssignAssignVariableOpVariable_13&Variable_13/Initializer/ReadVariableOp*
dtype0
g
Variable_13/Read/ReadVariableOpReadVariableOpVariable_13*
_output_shapes
: *
dtype0
�
*sequential_1/batch_normalization_2/gamma_1VarHandleOp*
_output_shapes
: *;

debug_name-+sequential_1/batch_normalization_2/gamma_1/*
dtype0*
shape: *;
shared_name,*sequential_1/batch_normalization_2/gamma_1
�
>sequential_1/batch_normalization_2/gamma_1/Read/ReadVariableOpReadVariableOp*sequential_1/batch_normalization_2/gamma_1*
_output_shapes
: *
dtype0
�
&Variable_14/Initializer/ReadVariableOpReadVariableOp*sequential_1/batch_normalization_2/gamma_1*
_class
loc:@Variable_14*
_output_shapes
: *
dtype0
�
Variable_14VarHandleOp*
_class
loc:@Variable_14*
_output_shapes
: *

debug_nameVariable_14/*
dtype0*
shape: *
shared_nameVariable_14
g
,Variable_14/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_14*
_output_shapes
: 
h
Variable_14/AssignAssignVariableOpVariable_14&Variable_14/Initializer/ReadVariableOp*
dtype0
g
Variable_14/Read/ReadVariableOpReadVariableOpVariable_14*
_output_shapes
: *
dtype0
�
sequential_1/conv2d_2/bias_1VarHandleOp*
_output_shapes
: *-

debug_namesequential_1/conv2d_2/bias_1/*
dtype0*
shape: *-
shared_namesequential_1/conv2d_2/bias_1
�
0sequential_1/conv2d_2/bias_1/Read/ReadVariableOpReadVariableOpsequential_1/conv2d_2/bias_1*
_output_shapes
: *
dtype0
�
&Variable_15/Initializer/ReadVariableOpReadVariableOpsequential_1/conv2d_2/bias_1*
_class
loc:@Variable_15*
_output_shapes
: *
dtype0
�
Variable_15VarHandleOp*
_class
loc:@Variable_15*
_output_shapes
: *

debug_nameVariable_15/*
dtype0*
shape: *
shared_nameVariable_15
g
,Variable_15/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_15*
_output_shapes
: 
h
Variable_15/AssignAssignVariableOpVariable_15&Variable_15/Initializer/ReadVariableOp*
dtype0
g
Variable_15/Read/ReadVariableOpReadVariableOpVariable_15*
_output_shapes
: *
dtype0
�
sequential_1/conv2d_2/kernel_1VarHandleOp*
_output_shapes
: */

debug_name!sequential_1/conv2d_2/kernel_1/*
dtype0*
shape: */
shared_name sequential_1/conv2d_2/kernel_1
�
2sequential_1/conv2d_2/kernel_1/Read/ReadVariableOpReadVariableOpsequential_1/conv2d_2/kernel_1*&
_output_shapes
: *
dtype0
�
&Variable_16/Initializer/ReadVariableOpReadVariableOpsequential_1/conv2d_2/kernel_1*
_class
loc:@Variable_16*&
_output_shapes
: *
dtype0
�
Variable_16VarHandleOp*
_class
loc:@Variable_16*
_output_shapes
: *

debug_nameVariable_16/*
dtype0*
shape: *
shared_nameVariable_16
g
,Variable_16/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable_16*
_output_shapes
: 
h
Variable_16/AssignAssignVariableOpVariable_16&Variable_16/Initializer/ReadVariableOp*
dtype0
s
Variable_16/Read/ReadVariableOpReadVariableOpVariable_16*&
_output_shapes
: *
dtype0
�
serve_input_layer_1Placeholder*/
_output_shapes
:���������  *
dtype0*$
shape:���������  
�
StatefulPartitionedCallStatefulPartitionedCallserve_input_layer_1sequential_1/conv2d_2/kernel_1sequential_1/conv2d_2/bias_10sequential_1/batch_normalization_2/moving_mean_14sequential_1/batch_normalization_2/moving_variance_1*sequential_1/batch_normalization_2/gamma_1)sequential_1/batch_normalization_2/beta_1sequential_1/conv2d_3/kernel_1sequential_1/conv2d_3/bias_10sequential_1/batch_normalization_3/moving_mean_14sequential_1/batch_normalization_3/moving_variance_1*sequential_1/batch_normalization_3/gamma_1)sequential_1/batch_normalization_3/beta_1sequential_1/dense_2/kernel_1sequential_1/dense_2/bias_1sequential_1/dense_3/kernel_1sequential_1/dense_3/bias_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU 2J 8� �J *3
f.R,
*__inference_signature_wrapper___call___343
�
serving_default_input_layer_1Placeholder*/
_output_shapes
:���������  *
dtype0*$
shape:���������  
�
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_input_layer_1sequential_1/conv2d_2/kernel_1sequential_1/conv2d_2/bias_10sequential_1/batch_normalization_2/moving_mean_14sequential_1/batch_normalization_2/moving_variance_1*sequential_1/batch_normalization_2/gamma_1)sequential_1/batch_normalization_2/beta_1sequential_1/conv2d_3/kernel_1sequential_1/conv2d_3/bias_10sequential_1/batch_normalization_3/moving_mean_14sequential_1/batch_normalization_3/moving_variance_1*sequential_1/batch_normalization_3/gamma_1)sequential_1/batch_normalization_3/beta_1sequential_1/dense_2/kernel_1sequential_1/dense_2/bias_1sequential_1/dense_3/kernel_1sequential_1/dense_3/bias_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU 2J 8� �J *3
f.R,
*__inference_signature_wrapper___call___380

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures*
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16*
Z
0
	1

2
3
4
5
6
7
8
9
10
11*
'
0
1
2
3
4*
z
0
1
2
3
4
5
6
 7
!8
"9
#10
$11
%12
&13
'14
(15*
* 

)trace_0* 
"
	*serve
+serving_default* 
KE
VARIABLE_VALUEVariable_16&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_15&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_14&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_13&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_12&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_11&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUEVariable_10&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_9&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_8&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_7&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_6'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_5'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_4'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_3'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_2'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
Variable_1'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
IC
VARIABLE_VALUEVariable'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEsequential_1/conv2d_2/kernel_1+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE*sequential_1/batch_normalization_2/gamma_1+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEsequential_1/conv2d_3/bias_1+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEsequential_1/dense_2/bias_1+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEsequential_1/dense_3/kernel_1+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEsequential_1/conv2d_2/bias_1+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE)sequential_1/batch_normalization_2/beta_1+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEsequential_1/conv2d_3/kernel_1+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE*sequential_1/batch_normalization_3/gamma_1+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE)sequential_1/batch_normalization_3/beta_1+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEsequential_1/dense_2/kernel_1,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEsequential_1/dense_3/bias_1,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE0sequential_1/batch_normalization_2/moving_mean_1,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE4sequential_1/batch_normalization_2/moving_variance_1,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE0sequential_1/batch_normalization_3/moving_mean_1,_all_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE4sequential_1/batch_normalization_3/moving_variance_1,_all_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variablesequential_1/conv2d_2/kernel_1*sequential_1/batch_normalization_2/gamma_1sequential_1/conv2d_3/bias_1sequential_1/dense_2/bias_1sequential_1/dense_3/kernel_1sequential_1/conv2d_2/bias_1)sequential_1/batch_normalization_2/beta_1sequential_1/conv2d_3/kernel_1*sequential_1/batch_normalization_3/gamma_1)sequential_1/batch_normalization_3/beta_1sequential_1/dense_2/kernel_1sequential_1/dense_3/bias_10sequential_1/batch_normalization_2/moving_mean_14sequential_1/batch_normalization_2/moving_variance_10sequential_1/batch_normalization_3/moving_mean_14sequential_1/batch_normalization_3/moving_variance_1Const*.
Tin'
%2#*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *%
f R
__inference__traced_save_670
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameVariable_16Variable_15Variable_14Variable_13Variable_12Variable_11Variable_10
Variable_9
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variablesequential_1/conv2d_2/kernel_1*sequential_1/batch_normalization_2/gamma_1sequential_1/conv2d_3/bias_1sequential_1/dense_2/bias_1sequential_1/dense_3/kernel_1sequential_1/conv2d_2/bias_1)sequential_1/batch_normalization_2/beta_1sequential_1/conv2d_3/kernel_1*sequential_1/batch_normalization_3/gamma_1)sequential_1/batch_normalization_3/beta_1sequential_1/dense_2/kernel_1sequential_1/dense_3/bias_10sequential_1/batch_normalization_2/moving_mean_14sequential_1/batch_normalization_2/moving_variance_10sequential_1/batch_normalization_3/moving_mean_14sequential_1/batch_normalization_3/moving_variance_1*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU 2J 8� �J *(
f#R!
__inference__traced_restore_778��
�
�
*__inference_signature_wrapper___call___343
input_layer_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:
��

unknown_12:	�

unknown_13:	�


unknown_14:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layer_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU 2J 8� �J *!
fR
__inference___call___305o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:#

_user_specified_name339:#

_user_specified_name337:#

_user_specified_name335:#

_user_specified_name333:#

_user_specified_name331:#

_user_specified_name329:#


_user_specified_name327:#	

_user_specified_name325:#

_user_specified_name323:#

_user_specified_name321:#

_user_specified_name319:#

_user_specified_name317:#

_user_specified_name315:#

_user_specified_name313:#

_user_specified_name311:#

_user_specified_name309:^ Z
/
_output_shapes
:���������  
'
_user_specified_nameinput_layer_1
�|
�
__inference___call___305
input_layer_1W
=sequential_1_1_conv2d_2_1_convolution_readvariableop_resource: G
9sequential_1_1_conv2d_2_1_reshape_readvariableop_resource: Q
Csequential_1_1_batch_normalization_2_1_cast_readvariableop_resource: S
Esequential_1_1_batch_normalization_2_1_cast_1_readvariableop_resource: S
Esequential_1_1_batch_normalization_2_1_cast_2_readvariableop_resource: S
Esequential_1_1_batch_normalization_2_1_cast_3_readvariableop_resource: W
=sequential_1_1_conv2d_3_1_convolution_readvariableop_resource: @G
9sequential_1_1_conv2d_3_1_reshape_readvariableop_resource:@Q
Csequential_1_1_batch_normalization_3_1_cast_readvariableop_resource:@S
Esequential_1_1_batch_normalization_3_1_cast_1_readvariableop_resource:@S
Esequential_1_1_batch_normalization_3_1_cast_2_readvariableop_resource:@S
Esequential_1_1_batch_normalization_3_1_cast_3_readvariableop_resource:@I
5sequential_1_1_dense_2_1_cast_readvariableop_resource:
��C
4sequential_1_1_dense_2_1_add_readvariableop_resource:	�H
5sequential_1_1_dense_3_1_cast_readvariableop_resource:	�
B
4sequential_1_1_dense_3_1_add_readvariableop_resource:

identity��:sequential_1_1/batch_normalization_2_1/Cast/ReadVariableOp�<sequential_1_1/batch_normalization_2_1/Cast_1/ReadVariableOp�<sequential_1_1/batch_normalization_2_1/Cast_2/ReadVariableOp�<sequential_1_1/batch_normalization_2_1/Cast_3/ReadVariableOp�:sequential_1_1/batch_normalization_3_1/Cast/ReadVariableOp�<sequential_1_1/batch_normalization_3_1/Cast_1/ReadVariableOp�<sequential_1_1/batch_normalization_3_1/Cast_2/ReadVariableOp�<sequential_1_1/batch_normalization_3_1/Cast_3/ReadVariableOp�0sequential_1_1/conv2d_2_1/Reshape/ReadVariableOp�4sequential_1_1/conv2d_2_1/convolution/ReadVariableOp�0sequential_1_1/conv2d_3_1/Reshape/ReadVariableOp�4sequential_1_1/conv2d_3_1/convolution/ReadVariableOp�+sequential_1_1/dense_2_1/Add/ReadVariableOp�,sequential_1_1/dense_2_1/Cast/ReadVariableOp�+sequential_1_1/dense_3_1/Add/ReadVariableOp�,sequential_1_1/dense_3_1/Cast/ReadVariableOp�
4sequential_1_1/conv2d_2_1/convolution/ReadVariableOpReadVariableOp=sequential_1_1_conv2d_2_1_convolution_readvariableop_resource*&
_output_shapes
: *
dtype0�
%sequential_1_1/conv2d_2_1/convolutionConv2Dinput_layer_1<sequential_1_1/conv2d_2_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:��������� *
paddingVALID*
strides
�
0sequential_1_1/conv2d_2_1/Reshape/ReadVariableOpReadVariableOp9sequential_1_1_conv2d_2_1_reshape_readvariableop_resource*
_output_shapes
: *
dtype0�
'sequential_1_1/conv2d_2_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"             �
!sequential_1_1/conv2d_2_1/ReshapeReshape8sequential_1_1/conv2d_2_1/Reshape/ReadVariableOp:value:00sequential_1_1/conv2d_2_1/Reshape/shape:output:0*
T0*&
_output_shapes
: �
sequential_1_1/conv2d_2_1/addAddV2.sequential_1_1/conv2d_2_1/convolution:output:0*sequential_1_1/conv2d_2_1/Reshape:output:0*
T0*/
_output_shapes
:��������� �
sequential_1_1/conv2d_2_1/ReluRelu!sequential_1_1/conv2d_2_1/add:z:0*
T0*/
_output_shapes
:��������� �
,sequential_1_1/average_pooling2d_2_1/AvgPoolAvgPool,sequential_1_1/conv2d_2_1/Relu:activations:0*
T0*/
_output_shapes
:��������� *
ksize
*
paddingVALID*
strides
�
:sequential_1_1/batch_normalization_2_1/Cast/ReadVariableOpReadVariableOpCsequential_1_1_batch_normalization_2_1_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
<sequential_1_1/batch_normalization_2_1/Cast_1/ReadVariableOpReadVariableOpEsequential_1_1_batch_normalization_2_1_cast_1_readvariableop_resource*
_output_shapes
: *
dtype0�
<sequential_1_1/batch_normalization_2_1/Cast_2/ReadVariableOpReadVariableOpEsequential_1_1_batch_normalization_2_1_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
<sequential_1_1/batch_normalization_2_1/Cast_3/ReadVariableOpReadVariableOpEsequential_1_1_batch_normalization_2_1_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0{
6sequential_1_1/batch_normalization_2_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
4sequential_1_1/batch_normalization_2_1/batchnorm/addAddV2Dsequential_1_1/batch_normalization_2_1/Cast_1/ReadVariableOp:value:0?sequential_1_1/batch_normalization_2_1/batchnorm/add/y:output:0*
T0*
_output_shapes
: �
6sequential_1_1/batch_normalization_2_1/batchnorm/RsqrtRsqrt8sequential_1_1/batch_normalization_2_1/batchnorm/add:z:0*
T0*
_output_shapes
: �
4sequential_1_1/batch_normalization_2_1/batchnorm/mulMul:sequential_1_1/batch_normalization_2_1/batchnorm/Rsqrt:y:0Dsequential_1_1/batch_normalization_2_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
: �
6sequential_1_1/batch_normalization_2_1/batchnorm/mul_1Mul5sequential_1_1/average_pooling2d_2_1/AvgPool:output:08sequential_1_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:��������� �
6sequential_1_1/batch_normalization_2_1/batchnorm/mul_2MulBsequential_1_1/batch_normalization_2_1/Cast/ReadVariableOp:value:08sequential_1_1/batch_normalization_2_1/batchnorm/mul:z:0*
T0*
_output_shapes
: �
4sequential_1_1/batch_normalization_2_1/batchnorm/subSubDsequential_1_1/batch_normalization_2_1/Cast_3/ReadVariableOp:value:0:sequential_1_1/batch_normalization_2_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
: �
6sequential_1_1/batch_normalization_2_1/batchnorm/add_1AddV2:sequential_1_1/batch_normalization_2_1/batchnorm/mul_1:z:08sequential_1_1/batch_normalization_2_1/batchnorm/sub:z:0*
T0*/
_output_shapes
:��������� �
4sequential_1_1/conv2d_3_1/convolution/ReadVariableOpReadVariableOp=sequential_1_1_conv2d_3_1_convolution_readvariableop_resource*&
_output_shapes
: @*
dtype0�
%sequential_1_1/conv2d_3_1/convolutionConv2D:sequential_1_1/batch_normalization_2_1/batchnorm/add_1:z:0<sequential_1_1/conv2d_3_1/convolution/ReadVariableOp:value:0*
T0*/
_output_shapes
:���������@*
paddingVALID*
strides
�
0sequential_1_1/conv2d_3_1/Reshape/ReadVariableOpReadVariableOp9sequential_1_1_conv2d_3_1_reshape_readvariableop_resource*
_output_shapes
:@*
dtype0�
'sequential_1_1/conv2d_3_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"         @   �
!sequential_1_1/conv2d_3_1/ReshapeReshape8sequential_1_1/conv2d_3_1/Reshape/ReadVariableOp:value:00sequential_1_1/conv2d_3_1/Reshape/shape:output:0*
T0*&
_output_shapes
:@�
sequential_1_1/conv2d_3_1/addAddV2.sequential_1_1/conv2d_3_1/convolution:output:0*sequential_1_1/conv2d_3_1/Reshape:output:0*
T0*/
_output_shapes
:���������@�
sequential_1_1/conv2d_3_1/ReluRelu!sequential_1_1/conv2d_3_1/add:z:0*
T0*/
_output_shapes
:���������@�
,sequential_1_1/average_pooling2d_3_1/AvgPoolAvgPool,sequential_1_1/conv2d_3_1/Relu:activations:0*
T0*/
_output_shapes
:���������@*
ksize
*
paddingVALID*
strides
�
:sequential_1_1/batch_normalization_3_1/Cast/ReadVariableOpReadVariableOpCsequential_1_1_batch_normalization_3_1_cast_readvariableop_resource*
_output_shapes
:@*
dtype0�
<sequential_1_1/batch_normalization_3_1/Cast_1/ReadVariableOpReadVariableOpEsequential_1_1_batch_normalization_3_1_cast_1_readvariableop_resource*
_output_shapes
:@*
dtype0�
<sequential_1_1/batch_normalization_3_1/Cast_2/ReadVariableOpReadVariableOpEsequential_1_1_batch_normalization_3_1_cast_2_readvariableop_resource*
_output_shapes
:@*
dtype0�
<sequential_1_1/batch_normalization_3_1/Cast_3/ReadVariableOpReadVariableOpEsequential_1_1_batch_normalization_3_1_cast_3_readvariableop_resource*
_output_shapes
:@*
dtype0{
6sequential_1_1/batch_normalization_3_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o�:�
4sequential_1_1/batch_normalization_3_1/batchnorm/addAddV2Dsequential_1_1/batch_normalization_3_1/Cast_1/ReadVariableOp:value:0?sequential_1_1/batch_normalization_3_1/batchnorm/add/y:output:0*
T0*
_output_shapes
:@�
6sequential_1_1/batch_normalization_3_1/batchnorm/RsqrtRsqrt8sequential_1_1/batch_normalization_3_1/batchnorm/add:z:0*
T0*
_output_shapes
:@�
4sequential_1_1/batch_normalization_3_1/batchnorm/mulMul:sequential_1_1/batch_normalization_3_1/batchnorm/Rsqrt:y:0Dsequential_1_1/batch_normalization_3_1/Cast_2/ReadVariableOp:value:0*
T0*
_output_shapes
:@�
6sequential_1_1/batch_normalization_3_1/batchnorm/mul_1Mul5sequential_1_1/average_pooling2d_3_1/AvgPool:output:08sequential_1_1/batch_normalization_3_1/batchnorm/mul:z:0*
T0*/
_output_shapes
:���������@�
6sequential_1_1/batch_normalization_3_1/batchnorm/mul_2MulBsequential_1_1/batch_normalization_3_1/Cast/ReadVariableOp:value:08sequential_1_1/batch_normalization_3_1/batchnorm/mul:z:0*
T0*
_output_shapes
:@�
4sequential_1_1/batch_normalization_3_1/batchnorm/subSubDsequential_1_1/batch_normalization_3_1/Cast_3/ReadVariableOp:value:0:sequential_1_1/batch_normalization_3_1/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@�
6sequential_1_1/batch_normalization_3_1/batchnorm/add_1AddV2:sequential_1_1/batch_normalization_3_1/batchnorm/mul_1:z:08sequential_1_1/batch_normalization_3_1/batchnorm/sub:z:0*
T0*/
_output_shapes
:���������@y
(sequential_1_1/flatten_1_1/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"���� 	  �
"sequential_1_1/flatten_1_1/ReshapeReshape:sequential_1_1/batch_normalization_3_1/batchnorm/add_1:z:01sequential_1_1/flatten_1_1/Reshape/shape:output:0*
T0*(
_output_shapes
:�����������
,sequential_1_1/dense_2_1/Cast/ReadVariableOpReadVariableOp5sequential_1_1_dense_2_1_cast_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
sequential_1_1/dense_2_1/MatMulMatMul+sequential_1_1/flatten_1_1/Reshape:output:04sequential_1_1/dense_2_1/Cast/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+sequential_1_1/dense_2_1/Add/ReadVariableOpReadVariableOp4sequential_1_1_dense_2_1_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
sequential_1_1/dense_2_1/AddAddV2)sequential_1_1/dense_2_1/MatMul:product:03sequential_1_1/dense_2_1/Add/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
sequential_1_1/dense_2_1/ReluRelu sequential_1_1/dense_2_1/Add:z:0*
T0*(
_output_shapes
:�����������
,sequential_1_1/dense_3_1/Cast/ReadVariableOpReadVariableOp5sequential_1_1_dense_3_1_cast_readvariableop_resource*
_output_shapes
:	�
*
dtype0�
sequential_1_1/dense_3_1/MatMulMatMul+sequential_1_1/dense_2_1/Relu:activations:04sequential_1_1/dense_3_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
+sequential_1_1/dense_3_1/Add/ReadVariableOpReadVariableOp4sequential_1_1_dense_3_1_add_readvariableop_resource*
_output_shapes
:
*
dtype0�
sequential_1_1/dense_3_1/AddAddV2)sequential_1_1/dense_3_1/MatMul:product:03sequential_1_1/dense_3_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������

 sequential_1_1/dense_3_1/SoftmaxSoftmax sequential_1_1/dense_3_1/Add:z:0*
T0*'
_output_shapes
:���������
y
IdentityIdentity*sequential_1_1/dense_3_1/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp;^sequential_1_1/batch_normalization_2_1/Cast/ReadVariableOp=^sequential_1_1/batch_normalization_2_1/Cast_1/ReadVariableOp=^sequential_1_1/batch_normalization_2_1/Cast_2/ReadVariableOp=^sequential_1_1/batch_normalization_2_1/Cast_3/ReadVariableOp;^sequential_1_1/batch_normalization_3_1/Cast/ReadVariableOp=^sequential_1_1/batch_normalization_3_1/Cast_1/ReadVariableOp=^sequential_1_1/batch_normalization_3_1/Cast_2/ReadVariableOp=^sequential_1_1/batch_normalization_3_1/Cast_3/ReadVariableOp1^sequential_1_1/conv2d_2_1/Reshape/ReadVariableOp5^sequential_1_1/conv2d_2_1/convolution/ReadVariableOp1^sequential_1_1/conv2d_3_1/Reshape/ReadVariableOp5^sequential_1_1/conv2d_3_1/convolution/ReadVariableOp,^sequential_1_1/dense_2_1/Add/ReadVariableOp-^sequential_1_1/dense_2_1/Cast/ReadVariableOp,^sequential_1_1/dense_3_1/Add/ReadVariableOp-^sequential_1_1/dense_3_1/Cast/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������  : : : : : : : : : : : : : : : : 2x
:sequential_1_1/batch_normalization_2_1/Cast/ReadVariableOp:sequential_1_1/batch_normalization_2_1/Cast/ReadVariableOp2|
<sequential_1_1/batch_normalization_2_1/Cast_1/ReadVariableOp<sequential_1_1/batch_normalization_2_1/Cast_1/ReadVariableOp2|
<sequential_1_1/batch_normalization_2_1/Cast_2/ReadVariableOp<sequential_1_1/batch_normalization_2_1/Cast_2/ReadVariableOp2|
<sequential_1_1/batch_normalization_2_1/Cast_3/ReadVariableOp<sequential_1_1/batch_normalization_2_1/Cast_3/ReadVariableOp2x
:sequential_1_1/batch_normalization_3_1/Cast/ReadVariableOp:sequential_1_1/batch_normalization_3_1/Cast/ReadVariableOp2|
<sequential_1_1/batch_normalization_3_1/Cast_1/ReadVariableOp<sequential_1_1/batch_normalization_3_1/Cast_1/ReadVariableOp2|
<sequential_1_1/batch_normalization_3_1/Cast_2/ReadVariableOp<sequential_1_1/batch_normalization_3_1/Cast_2/ReadVariableOp2|
<sequential_1_1/batch_normalization_3_1/Cast_3/ReadVariableOp<sequential_1_1/batch_normalization_3_1/Cast_3/ReadVariableOp2d
0sequential_1_1/conv2d_2_1/Reshape/ReadVariableOp0sequential_1_1/conv2d_2_1/Reshape/ReadVariableOp2l
4sequential_1_1/conv2d_2_1/convolution/ReadVariableOp4sequential_1_1/conv2d_2_1/convolution/ReadVariableOp2d
0sequential_1_1/conv2d_3_1/Reshape/ReadVariableOp0sequential_1_1/conv2d_3_1/Reshape/ReadVariableOp2l
4sequential_1_1/conv2d_3_1/convolution/ReadVariableOp4sequential_1_1/conv2d_3_1/convolution/ReadVariableOp2Z
+sequential_1_1/dense_2_1/Add/ReadVariableOp+sequential_1_1/dense_2_1/Add/ReadVariableOp2\
,sequential_1_1/dense_2_1/Cast/ReadVariableOp,sequential_1_1/dense_2_1/Cast/ReadVariableOp2Z
+sequential_1_1/dense_3_1/Add/ReadVariableOp+sequential_1_1/dense_3_1/Add/ReadVariableOp2\
,sequential_1_1/dense_3_1/Cast/ReadVariableOp,sequential_1_1/dense_3_1/Cast/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
/
_output_shapes
:���������  
'
_user_specified_nameinput_layer_1
��
�
__inference__traced_save_670
file_prefix<
"read_disablecopyonread_variable_16: 2
$read_1_disablecopyonread_variable_15: 2
$read_2_disablecopyonread_variable_14: 2
$read_3_disablecopyonread_variable_13: 2
$read_4_disablecopyonread_variable_12: 2
$read_5_disablecopyonread_variable_11: >
$read_6_disablecopyonread_variable_10: @1
#read_7_disablecopyonread_variable_9:@1
#read_8_disablecopyonread_variable_8:@1
#read_9_disablecopyonread_variable_7:@2
$read_10_disablecopyonread_variable_6:@2
$read_11_disablecopyonread_variable_5:@8
$read_12_disablecopyonread_variable_4:
��3
$read_13_disablecopyonread_variable_3:	�2
$read_14_disablecopyonread_variable_2:	7
$read_15_disablecopyonread_variable_1:	�
0
"read_16_disablecopyonread_variable:
R
8read_17_disablecopyonread_sequential_1_conv2d_2_kernel_1: R
Dread_18_disablecopyonread_sequential_1_batch_normalization_2_gamma_1: D
6read_19_disablecopyonread_sequential_1_conv2d_3_bias_1:@D
5read_20_disablecopyonread_sequential_1_dense_2_bias_1:	�J
7read_21_disablecopyonread_sequential_1_dense_3_kernel_1:	�
D
6read_22_disablecopyonread_sequential_1_conv2d_2_bias_1: Q
Cread_23_disablecopyonread_sequential_1_batch_normalization_2_beta_1: R
8read_24_disablecopyonread_sequential_1_conv2d_3_kernel_1: @R
Dread_25_disablecopyonread_sequential_1_batch_normalization_3_gamma_1:@Q
Cread_26_disablecopyonread_sequential_1_batch_normalization_3_beta_1:@K
7read_27_disablecopyonread_sequential_1_dense_2_kernel_1:
��C
5read_28_disablecopyonread_sequential_1_dense_3_bias_1:
X
Jread_29_disablecopyonread_sequential_1_batch_normalization_2_moving_mean_1: \
Nread_30_disablecopyonread_sequential_1_batch_normalization_2_moving_variance_1: X
Jread_31_disablecopyonread_sequential_1_batch_normalization_3_moving_mean_1:@\
Nread_32_disablecopyonread_sequential_1_batch_normalization_3_moving_variance_1:@
savev2_const
identity_67��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: e
Read/DisableCopyOnReadDisableCopyOnRead"read_disablecopyonread_variable_16*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp"read_disablecopyonread_variable_16^Read/DisableCopyOnRead*&
_output_shapes
: *
dtype0b
IdentityIdentityRead/ReadVariableOp:value:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: i
Read_1/DisableCopyOnReadDisableCopyOnRead$read_1_disablecopyonread_variable_15*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp$read_1_disablecopyonread_variable_15^Read_1/DisableCopyOnRead*
_output_shapes
: *
dtype0Z

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_2/DisableCopyOnReadDisableCopyOnRead$read_2_disablecopyonread_variable_14*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp$read_2_disablecopyonread_variable_14^Read_2/DisableCopyOnRead*
_output_shapes
: *
dtype0Z

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
: _

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_3/DisableCopyOnReadDisableCopyOnRead$read_3_disablecopyonread_variable_13*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp$read_3_disablecopyonread_variable_13^Read_3/DisableCopyOnRead*
_output_shapes
: *
dtype0Z

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_4/DisableCopyOnReadDisableCopyOnRead$read_4_disablecopyonread_variable_12*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp$read_4_disablecopyonread_variable_12^Read_4/DisableCopyOnRead*
_output_shapes
: *
dtype0Z

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
: _

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_5/DisableCopyOnReadDisableCopyOnRead$read_5_disablecopyonread_variable_11*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp$read_5_disablecopyonread_variable_11^Read_5/DisableCopyOnRead*
_output_shapes
: *
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: i
Read_6/DisableCopyOnReadDisableCopyOnRead$read_6_disablecopyonread_variable_10*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp$read_6_disablecopyonread_variable_10^Read_6/DisableCopyOnRead*&
_output_shapes
: @*
dtype0g
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*&
_output_shapes
: @m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
: @h
Read_7/DisableCopyOnReadDisableCopyOnRead#read_7_disablecopyonread_variable_9*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp#read_7_disablecopyonread_variable_9^Read_7/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@h
Read_8/DisableCopyOnReadDisableCopyOnRead#read_8_disablecopyonread_variable_8*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp#read_8_disablecopyonread_variable_8^Read_8/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:@h
Read_9/DisableCopyOnReadDisableCopyOnRead#read_9_disablecopyonread_variable_7*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp#read_9_disablecopyonread_variable_7^Read_9/DisableCopyOnRead*
_output_shapes
:@*
dtype0[
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_10/DisableCopyOnReadDisableCopyOnRead$read_10_disablecopyonread_variable_6*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp$read_10_disablecopyonread_variable_6^Read_10/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_11/DisableCopyOnReadDisableCopyOnRead$read_11_disablecopyonread_variable_5*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp$read_11_disablecopyonread_variable_5^Read_11/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@j
Read_12/DisableCopyOnReadDisableCopyOnRead$read_12_disablecopyonread_variable_4*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp$read_12_disablecopyonread_variable_4^Read_12/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0b
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��j
Read_13/DisableCopyOnReadDisableCopyOnRead$read_13_disablecopyonread_variable_3*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp$read_13_disablecopyonread_variable_3^Read_13/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:�j
Read_14/DisableCopyOnReadDisableCopyOnRead$read_14_disablecopyonread_variable_2*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOp$read_14_disablecopyonread_variable_2^Read_14/DisableCopyOnRead*
_output_shapes
:*
dtype0	\
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0	*
_output_shapes
:a
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0	*
_output_shapes
:j
Read_15/DisableCopyOnReadDisableCopyOnRead$read_15_disablecopyonread_variable_1*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp$read_15_disablecopyonread_variable_1^Read_15/DisableCopyOnRead*
_output_shapes
:	�
*
dtype0a
Identity_30IdentityRead_15/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
f
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
h
Read_16/DisableCopyOnReadDisableCopyOnRead"read_16_disablecopyonread_variable*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp"read_16_disablecopyonread_variable^Read_16/DisableCopyOnRead*
_output_shapes
:
*
dtype0\
Identity_32IdentityRead_16/ReadVariableOp:value:0*
T0*
_output_shapes
:
a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:
~
Read_17/DisableCopyOnReadDisableCopyOnRead8read_17_disablecopyonread_sequential_1_conv2d_2_kernel_1*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp8read_17_disablecopyonread_sequential_1_conv2d_2_kernel_1^Read_17/DisableCopyOnRead*&
_output_shapes
: *
dtype0h
Identity_34IdentityRead_17/ReadVariableOp:value:0*
T0*&
_output_shapes
: m
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*&
_output_shapes
: �
Read_18/DisableCopyOnReadDisableCopyOnReadDread_18_disablecopyonread_sequential_1_batch_normalization_2_gamma_1*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOpDread_18_disablecopyonread_sequential_1_batch_normalization_2_gamma_1^Read_18/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_36IdentityRead_18/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: |
Read_19/DisableCopyOnReadDisableCopyOnRead6read_19_disablecopyonread_sequential_1_conv2d_3_bias_1*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp6read_19_disablecopyonread_sequential_1_conv2d_3_bias_1^Read_19/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_38IdentityRead_19/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_20/DisableCopyOnReadDisableCopyOnRead5read_20_disablecopyonread_sequential_1_dense_2_bias_1*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp5read_20_disablecopyonread_sequential_1_dense_2_bias_1^Read_20/DisableCopyOnRead*
_output_shapes	
:�*
dtype0]
Identity_40IdentityRead_20/ReadVariableOp:value:0*
T0*
_output_shapes	
:�b
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_21/DisableCopyOnReadDisableCopyOnRead7read_21_disablecopyonread_sequential_1_dense_3_kernel_1*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOp7read_21_disablecopyonread_sequential_1_dense_3_kernel_1^Read_21/DisableCopyOnRead*
_output_shapes
:	�
*
dtype0a
Identity_42IdentityRead_21/ReadVariableOp:value:0*
T0*
_output_shapes
:	�
f
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
|
Read_22/DisableCopyOnReadDisableCopyOnRead6read_22_disablecopyonread_sequential_1_conv2d_2_bias_1*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp6read_22_disablecopyonread_sequential_1_conv2d_2_bias_1^Read_22/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_44IdentityRead_22/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_23/DisableCopyOnReadDisableCopyOnReadCread_23_disablecopyonread_sequential_1_batch_normalization_2_beta_1*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOpCread_23_disablecopyonread_sequential_1_batch_normalization_2_beta_1^Read_23/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_46IdentityRead_23/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_24/DisableCopyOnReadDisableCopyOnRead8read_24_disablecopyonread_sequential_1_conv2d_3_kernel_1*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp8read_24_disablecopyonread_sequential_1_conv2d_3_kernel_1^Read_24/DisableCopyOnRead*&
_output_shapes
: @*
dtype0h
Identity_48IdentityRead_24/ReadVariableOp:value:0*
T0*&
_output_shapes
: @m
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*&
_output_shapes
: @�
Read_25/DisableCopyOnReadDisableCopyOnReadDread_25_disablecopyonread_sequential_1_batch_normalization_3_gamma_1*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOpDread_25_disablecopyonread_sequential_1_batch_normalization_3_gamma_1^Read_25/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_50IdentityRead_25/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_26/DisableCopyOnReadDisableCopyOnReadCread_26_disablecopyonread_sequential_1_batch_normalization_3_beta_1*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOpCread_26_disablecopyonread_sequential_1_batch_normalization_3_beta_1^Read_26/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_52IdentityRead_26/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_27/DisableCopyOnReadDisableCopyOnRead7read_27_disablecopyonread_sequential_1_dense_2_kernel_1*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp7read_27_disablecopyonread_sequential_1_dense_2_kernel_1^Read_27/DisableCopyOnRead* 
_output_shapes
:
��*
dtype0b
Identity_54IdentityRead_27/ReadVariableOp:value:0*
T0* 
_output_shapes
:
��g
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0* 
_output_shapes
:
��{
Read_28/DisableCopyOnReadDisableCopyOnRead5read_28_disablecopyonread_sequential_1_dense_3_bias_1*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp5read_28_disablecopyonread_sequential_1_dense_3_bias_1^Read_28/DisableCopyOnRead*
_output_shapes
:
*
dtype0\
Identity_56IdentityRead_28/ReadVariableOp:value:0*
T0*
_output_shapes
:
a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
:
�
Read_29/DisableCopyOnReadDisableCopyOnReadJread_29_disablecopyonread_sequential_1_batch_normalization_2_moving_mean_1*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOpJread_29_disablecopyonread_sequential_1_batch_normalization_2_moving_mean_1^Read_29/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_58IdentityRead_29/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_30/DisableCopyOnReadDisableCopyOnReadNread_30_disablecopyonread_sequential_1_batch_normalization_2_moving_variance_1*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOpNread_30_disablecopyonread_sequential_1_batch_normalization_2_moving_variance_1^Read_30/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_60IdentityRead_30/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_31/DisableCopyOnReadDisableCopyOnReadJread_31_disablecopyonread_sequential_1_batch_normalization_3_moving_mean_1*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOpJread_31_disablecopyonread_sequential_1_batch_normalization_3_moving_mean_1^Read_31/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_62IdentityRead_31/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_32/DisableCopyOnReadDisableCopyOnReadNread_32_disablecopyonread_sequential_1_batch_normalization_3_moving_variance_1*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOpNread_32_disablecopyonread_sequential_1_batch_normalization_3_moving_variance_1^Read_32/DisableCopyOnRead*
_output_shapes
:@*
dtype0\
Identity_64IdentityRead_32/ReadVariableOp:value:0*
T0*
_output_shapes
:@a
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes
:@L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*�
value�B�"B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/14/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *0
dtypes&
$2"	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_66Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_67IdentityIdentity_66:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_67Identity_67:output:0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:="9

_output_shapes
: 

_user_specified_nameConst:T!P
N
_user_specified_name64sequential_1/batch_normalization_3/moving_variance_1:P L
J
_user_specified_name20sequential_1/batch_normalization_3/moving_mean_1:TP
N
_user_specified_name64sequential_1/batch_normalization_2/moving_variance_1:PL
J
_user_specified_name20sequential_1/batch_normalization_2/moving_mean_1:;7
5
_user_specified_namesequential_1/dense_3/bias_1:=9
7
_user_specified_namesequential_1/dense_2/kernel_1:IE
C
_user_specified_name+)sequential_1/batch_normalization_3/beta_1:JF
D
_user_specified_name,*sequential_1/batch_normalization_3/gamma_1:>:
8
_user_specified_name sequential_1/conv2d_3/kernel_1:IE
C
_user_specified_name+)sequential_1/batch_normalization_2/beta_1:<8
6
_user_specified_namesequential_1/conv2d_2/bias_1:=9
7
_user_specified_namesequential_1/dense_3/kernel_1:;7
5
_user_specified_namesequential_1/dense_2/bias_1:<8
6
_user_specified_namesequential_1/conv2d_3/bias_1:JF
D
_user_specified_name,*sequential_1/batch_normalization_2/gamma_1:>:
8
_user_specified_name sequential_1/conv2d_2/kernel_1:($
"
_user_specified_name
Variable:*&
$
_user_specified_name
Variable_1:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*
&
$
_user_specified_name
Variable_7:*	&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_14:+'
%
_user_specified_nameVariable_15:+'
%
_user_specified_nameVariable_16:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
*__inference_signature_wrapper___call___380
input_layer_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@

unknown_11:
��

unknown_12:	�

unknown_13:	�


unknown_14:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_layer_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*2
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU 2J 8� �J *!
fR
__inference___call___305o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:���������  : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:#

_user_specified_name376:#

_user_specified_name374:#

_user_specified_name372:#

_user_specified_name370:#

_user_specified_name368:#

_user_specified_name366:#


_user_specified_name364:#	

_user_specified_name362:#

_user_specified_name360:#

_user_specified_name358:#

_user_specified_name356:#

_user_specified_name354:#

_user_specified_name352:#

_user_specified_name350:#

_user_specified_name348:#

_user_specified_name346:^ Z
/
_output_shapes
:���������  
'
_user_specified_nameinput_layer_1
��
�
__inference__traced_restore_778
file_prefix6
assignvariableop_variable_16: ,
assignvariableop_1_variable_15: ,
assignvariableop_2_variable_14: ,
assignvariableop_3_variable_13: ,
assignvariableop_4_variable_12: ,
assignvariableop_5_variable_11: 8
assignvariableop_6_variable_10: @+
assignvariableop_7_variable_9:@+
assignvariableop_8_variable_8:@+
assignvariableop_9_variable_7:@,
assignvariableop_10_variable_6:@,
assignvariableop_11_variable_5:@2
assignvariableop_12_variable_4:
��-
assignvariableop_13_variable_3:	�,
assignvariableop_14_variable_2:	1
assignvariableop_15_variable_1:	�
*
assignvariableop_16_variable:
L
2assignvariableop_17_sequential_1_conv2d_2_kernel_1: L
>assignvariableop_18_sequential_1_batch_normalization_2_gamma_1: >
0assignvariableop_19_sequential_1_conv2d_3_bias_1:@>
/assignvariableop_20_sequential_1_dense_2_bias_1:	�D
1assignvariableop_21_sequential_1_dense_3_kernel_1:	�
>
0assignvariableop_22_sequential_1_conv2d_2_bias_1: K
=assignvariableop_23_sequential_1_batch_normalization_2_beta_1: L
2assignvariableop_24_sequential_1_conv2d_3_kernel_1: @L
>assignvariableop_25_sequential_1_batch_normalization_3_gamma_1:@K
=assignvariableop_26_sequential_1_batch_normalization_3_beta_1:@E
1assignvariableop_27_sequential_1_dense_2_kernel_1:
��=
/assignvariableop_28_sequential_1_dense_3_bias_1:
R
Dassignvariableop_29_sequential_1_batch_normalization_2_moving_mean_1: V
Hassignvariableop_30_sequential_1_batch_normalization_2_moving_variance_1: R
Dassignvariableop_31_sequential_1_batch_normalization_3_moving_mean_1:@V
Hassignvariableop_32_sequential_1_batch_normalization_3_moving_variance_1:@
identity_34��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*�
value�B�"B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/6/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/7/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/9/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/10/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/11/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/12/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/13/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/14/.ATTRIBUTES/VARIABLE_VALUEB,_all_variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_16Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_15Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_14Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_13Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_12Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_11Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_10Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_9Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_8Identity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_7Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpassignvariableop_10_variable_6Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_variable_5Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_4Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_variable_3Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_variable_2Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_variable_1Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_variableIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp2assignvariableop_17_sequential_1_conv2d_2_kernel_1Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp>assignvariableop_18_sequential_1_batch_normalization_2_gamma_1Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp0assignvariableop_19_sequential_1_conv2d_3_bias_1Identity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp/assignvariableop_20_sequential_1_dense_2_bias_1Identity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp1assignvariableop_21_sequential_1_dense_3_kernel_1Identity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp0assignvariableop_22_sequential_1_conv2d_2_bias_1Identity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp=assignvariableop_23_sequential_1_batch_normalization_2_beta_1Identity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp2assignvariableop_24_sequential_1_conv2d_3_kernel_1Identity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp>assignvariableop_25_sequential_1_batch_normalization_3_gamma_1Identity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp=assignvariableop_26_sequential_1_batch_normalization_3_beta_1Identity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp1assignvariableop_27_sequential_1_dense_2_kernel_1Identity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp/assignvariableop_28_sequential_1_dense_3_bias_1Identity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpDassignvariableop_29_sequential_1_batch_normalization_2_moving_mean_1Identity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpHassignvariableop_30_sequential_1_batch_normalization_2_moving_variance_1Identity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpDassignvariableop_31_sequential_1_batch_normalization_3_moving_mean_1Identity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpHassignvariableop_32_sequential_1_batch_normalization_3_moving_variance_1Identity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_34Identity_34:output:0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:T!P
N
_user_specified_name64sequential_1/batch_normalization_3/moving_variance_1:P L
J
_user_specified_name20sequential_1/batch_normalization_3/moving_mean_1:TP
N
_user_specified_name64sequential_1/batch_normalization_2/moving_variance_1:PL
J
_user_specified_name20sequential_1/batch_normalization_2/moving_mean_1:;7
5
_user_specified_namesequential_1/dense_3/bias_1:=9
7
_user_specified_namesequential_1/dense_2/kernel_1:IE
C
_user_specified_name+)sequential_1/batch_normalization_3/beta_1:JF
D
_user_specified_name,*sequential_1/batch_normalization_3/gamma_1:>:
8
_user_specified_name sequential_1/conv2d_3/kernel_1:IE
C
_user_specified_name+)sequential_1/batch_normalization_2/beta_1:<8
6
_user_specified_namesequential_1/conv2d_2/bias_1:=9
7
_user_specified_namesequential_1/dense_3/kernel_1:;7
5
_user_specified_namesequential_1/dense_2/bias_1:<8
6
_user_specified_namesequential_1/conv2d_3/bias_1:JF
D
_user_specified_name,*sequential_1/batch_normalization_2/gamma_1:>:
8
_user_specified_name sequential_1/conv2d_2/kernel_1:($
"
_user_specified_name
Variable:*&
$
_user_specified_name
Variable_1:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_6:*
&
$
_user_specified_name
Variable_7:*	&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_9:+'
%
_user_specified_nameVariable_10:+'
%
_user_specified_nameVariable_11:+'
%
_user_specified_nameVariable_12:+'
%
_user_specified_nameVariable_13:+'
%
_user_specified_nameVariable_14:+'
%
_user_specified_nameVariable_15:+'
%
_user_specified_nameVariable_16:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serve�
E
input_layer_14
serve_input_layer_1:0���������  <
output_00
StatefulPartitionedCall:0���������
tensorflow/serving/predict*�
serving_default�
O
input_layer_1>
serving_default_input_layer_1:0���������  >
output_02
StatefulPartitionedCall_1:0���������
tensorflow/serving/predict:�
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures"
_generic_user_object
�
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16"
trackable_list_wrapper
v
0
	1

2
3
4
5
6
7
8
9
10
11"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
�
0
1
2
3
4
5
6
 7
!8
"9
#10
$11
%12
&13
'14
(15"
trackable_list_wrapper
 "
trackable_list_wrapper
�
)trace_02�
__inference___call___305�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *4�1
/�,
input_layer_1���������  z)trace_0
7
	*serve
+serving_default"
signature_map
6:4 2sequential_1/conv2d_2/kernel
(:& 2sequential_1/conv2d_2/bias
6:4 2(sequential_1/batch_normalization_2/gamma
5:3 2'sequential_1/batch_normalization_2/beta
::8 2.sequential_1/batch_normalization_2/moving_mean
>:< 22sequential_1/batch_normalization_2/moving_variance
6:4 @2sequential_1/conv2d_3/kernel
(:&@2sequential_1/conv2d_3/bias
6:4@2(sequential_1/batch_normalization_3/gamma
5:3@2'sequential_1/batch_normalization_3/beta
::8@2.sequential_1/batch_normalization_3/moving_mean
>:<@22sequential_1/batch_normalization_3/moving_variance
/:-
��2sequential_1/dense_2/kernel
(:&�2sequential_1/dense_2/bias
/:-	2#seed_generator/seed_generator_state
.:,	�
2sequential_1/dense_3/kernel
':%
2sequential_1/dense_3/bias
6:4 2sequential_1/conv2d_2/kernel
6:4 2(sequential_1/batch_normalization_2/gamma
(:&@2sequential_1/conv2d_3/bias
(:&�2sequential_1/dense_2/bias
.:,	�
2sequential_1/dense_3/kernel
(:& 2sequential_1/conv2d_2/bias
5:3 2'sequential_1/batch_normalization_2/beta
6:4 @2sequential_1/conv2d_3/kernel
6:4@2(sequential_1/batch_normalization_3/gamma
5:3@2'sequential_1/batch_normalization_3/beta
/:-
��2sequential_1/dense_2/kernel
':%
2sequential_1/dense_3/bias
::8 2.sequential_1/batch_normalization_2/moving_mean
>:< 22sequential_1/batch_normalization_2/moving_variance
::8@2.sequential_1/batch_normalization_3/moving_mean
>:<@22sequential_1/batch_normalization_3/moving_variance
�B�
__inference___call___305input_layer_1"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_signature_wrapper___call___343input_layer_1"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 "

kwonlyargs�
jinput_layer_1
kwonlydefaults
 
annotations� *
 
�B�
*__inference_signature_wrapper___call___380input_layer_1"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 "

kwonlyargs�
jinput_layer_1
kwonlydefaults
 
annotations� *
 �
__inference___call___305u	
>�;
4�1
/�,
input_layer_1���������  
� "!�
unknown���������
�
*__inference_signature_wrapper___call___343�	
O�L
� 
E�B
@
input_layer_1/�,
input_layer_1���������  "3�0
.
output_0"�
output_0���������
�
*__inference_signature_wrapper___call___380�	
O�L
� 
E�B
@
input_layer_1/�,
input_layer_1���������  "3�0
.
output_0"�
output_0���������
