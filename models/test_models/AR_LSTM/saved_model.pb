Ѓі
јР
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resourceИ
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
dtypetypeИ
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_typeКнout_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Ѕ
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
executor_typestring И®
@
StaticRegexFullMatch	
input

output
"
patternstring
ч
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
∞
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
∞
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И
Ф
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
И"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48йс
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
|
count_1VarHandleOp*
_output_shapes
: *

debug_name
count_1/*
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
|
total_1VarHandleOp*
_output_shapes
: *

debug_name
total_1/*
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
‘
#Adam/v/auto_regressive/dense_8/biasVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/v/auto_regressive/dense_8/bias/*
dtype0*
shape:	*4
shared_name%#Adam/v/auto_regressive/dense_8/bias
Ч
7Adam/v/auto_regressive/dense_8/bias/Read/ReadVariableOpReadVariableOp#Adam/v/auto_regressive/dense_8/bias*
_output_shapes
:	*
dtype0
‘
#Adam/m/auto_regressive/dense_8/biasVarHandleOp*
_output_shapes
: *4

debug_name&$Adam/m/auto_regressive/dense_8/bias/*
dtype0*
shape:	*4
shared_name%#Adam/m/auto_regressive/dense_8/bias
Ч
7Adam/m/auto_regressive/dense_8/bias/Read/ReadVariableOpReadVariableOp#Adam/m/auto_regressive/dense_8/bias*
_output_shapes
:	*
dtype0
ё
%Adam/v/auto_regressive/dense_8/kernelVarHandleOp*
_output_shapes
: *6

debug_name(&Adam/v/auto_regressive/dense_8/kernel/*
dtype0*
shape
: 	*6
shared_name'%Adam/v/auto_regressive/dense_8/kernel
Я
9Adam/v/auto_regressive/dense_8/kernel/Read/ReadVariableOpReadVariableOp%Adam/v/auto_regressive/dense_8/kernel*
_output_shapes

: 	*
dtype0
ё
%Adam/m/auto_regressive/dense_8/kernelVarHandleOp*
_output_shapes
: *6

debug_name(&Adam/m/auto_regressive/dense_8/kernel/*
dtype0*
shape
: 	*6
shared_name'%Adam/m/auto_regressive/dense_8/kernel
Я
9Adam/m/auto_regressive/dense_8/kernel/Read/ReadVariableOpReadVariableOp%Adam/m/auto_regressive/dense_8/kernel*
_output_shapes

: 	*
dtype0
з
)Adam/v/auto_regressive/rnn/lstm_cell/biasVarHandleOp*
_output_shapes
: *:

debug_name,*Adam/v/auto_regressive/rnn/lstm_cell/bias/*
dtype0*
shape:А*:
shared_name+)Adam/v/auto_regressive/rnn/lstm_cell/bias
§
=Adam/v/auto_regressive/rnn/lstm_cell/bias/Read/ReadVariableOpReadVariableOp)Adam/v/auto_regressive/rnn/lstm_cell/bias*
_output_shapes	
:А*
dtype0
з
)Adam/m/auto_regressive/rnn/lstm_cell/biasVarHandleOp*
_output_shapes
: *:

debug_name,*Adam/m/auto_regressive/rnn/lstm_cell/bias/*
dtype0*
shape:А*:
shared_name+)Adam/m/auto_regressive/rnn/lstm_cell/bias
§
=Adam/m/auto_regressive/rnn/lstm_cell/bias/Read/ReadVariableOpReadVariableOp)Adam/m/auto_regressive/rnn/lstm_cell/bias*
_output_shapes	
:А*
dtype0
П
5Adam/v/auto_regressive/rnn/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *F

debug_name86Adam/v/auto_regressive/rnn/lstm_cell/recurrent_kernel/*
dtype0*
shape:	 А*F
shared_name75Adam/v/auto_regressive/rnn/lstm_cell/recurrent_kernel
ј
IAdam/v/auto_regressive/rnn/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp5Adam/v/auto_regressive/rnn/lstm_cell/recurrent_kernel*
_output_shapes
:	 А*
dtype0
П
5Adam/m/auto_regressive/rnn/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *F

debug_name86Adam/m/auto_regressive/rnn/lstm_cell/recurrent_kernel/*
dtype0*
shape:	 А*F
shared_name75Adam/m/auto_regressive/rnn/lstm_cell/recurrent_kernel
ј
IAdam/m/auto_regressive/rnn/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp5Adam/m/auto_regressive/rnn/lstm_cell/recurrent_kernel*
_output_shapes
:	 А*
dtype0
с
+Adam/v/auto_regressive/rnn/lstm_cell/kernelVarHandleOp*
_output_shapes
: *<

debug_name.,Adam/v/auto_regressive/rnn/lstm_cell/kernel/*
dtype0*
shape:		А*<
shared_name-+Adam/v/auto_regressive/rnn/lstm_cell/kernel
ђ
?Adam/v/auto_regressive/rnn/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp+Adam/v/auto_regressive/rnn/lstm_cell/kernel*
_output_shapes
:		А*
dtype0
с
+Adam/m/auto_regressive/rnn/lstm_cell/kernelVarHandleOp*
_output_shapes
: *<

debug_name.,Adam/m/auto_regressive/rnn/lstm_cell/kernel/*
dtype0*
shape:		А*<
shared_name-+Adam/m/auto_regressive/rnn/lstm_cell/kernel
ђ
?Adam/m/auto_regressive/rnn/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp+Adam/m/auto_regressive/rnn/lstm_cell/kernel*
_output_shapes
:		А*
dtype0
О
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
В
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
њ
auto_regressive/dense_8/biasVarHandleOp*
_output_shapes
: *-

debug_nameauto_regressive/dense_8/bias/*
dtype0*
shape:	*-
shared_nameauto_regressive/dense_8/bias
Й
0auto_regressive/dense_8/bias/Read/ReadVariableOpReadVariableOpauto_regressive/dense_8/bias*
_output_shapes
:	*
dtype0
…
auto_regressive/dense_8/kernelVarHandleOp*
_output_shapes
: */

debug_name!auto_regressive/dense_8/kernel/*
dtype0*
shape
: 	*/
shared_name auto_regressive/dense_8/kernel
С
2auto_regressive/dense_8/kernel/Read/ReadVariableOpReadVariableOpauto_regressive/dense_8/kernel*
_output_shapes

: 	*
dtype0
“
"auto_regressive/rnn/lstm_cell/biasVarHandleOp*
_output_shapes
: *3

debug_name%#auto_regressive/rnn/lstm_cell/bias/*
dtype0*
shape:А*3
shared_name$"auto_regressive/rnn/lstm_cell/bias
Ц
6auto_regressive/rnn/lstm_cell/bias/Read/ReadVariableOpReadVariableOp"auto_regressive/rnn/lstm_cell/bias*
_output_shapes	
:А*
dtype0
ъ
.auto_regressive/rnn/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *?

debug_name1/auto_regressive/rnn/lstm_cell/recurrent_kernel/*
dtype0*
shape:	 А*?
shared_name0.auto_regressive/rnn/lstm_cell/recurrent_kernel
≤
Bauto_regressive/rnn/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp.auto_regressive/rnn/lstm_cell/recurrent_kernel*
_output_shapes
:	 А*
dtype0
№
$auto_regressive/rnn/lstm_cell/kernelVarHandleOp*
_output_shapes
: *5

debug_name'%auto_regressive/rnn/lstm_cell/kernel/*
dtype0*
shape:		А*5
shared_name&$auto_regressive/rnn/lstm_cell/kernel
Ю
8auto_regressive/rnn/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp$auto_regressive/rnn/lstm_cell/kernel*
_output_shapes
:		А*
dtype0
В
serving_default_input_1Placeholder*+
_output_shapes
:€€€€€€€€€	*
dtype0* 
shape:€€€€€€€€€	
ш
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1$auto_regressive/rnn/lstm_cell/kernel.auto_regressive/rnn/lstm_cell/recurrent_kernel"auto_regressive/rnn/lstm_cell/biasauto_regressive/dense_8/kernelauto_regressive/dense_8/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference_signature_wrapper_181972

NoOpNoOp
ю+
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*є+
valueѓ+Bђ+ B•+
ф
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	lstm_cell
	lstm_rnn
	
dense
	optimizer

signatures*
'
0
1
2
3
4*
'
0
1
2
3
4*
* 
∞
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
* 
г
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_random_generator
"
state_size

kernel
recurrent_kernel
bias*
™
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
cell
)
state_spec*
¶
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

kernel
bias*
Б
0
_variables
1_iterations
2_learning_rate
3_index_dict
4
_momentums
5_velocities
6_update_step_xla*

7serving_default* 
d^
VARIABLE_VALUE$auto_regressive/rnn/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE.auto_regressive/rnn/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"auto_regressive/rnn/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEauto_regressive/dense_8/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEauto_regressive/dense_8/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
	1

2*

80
91*
* 
* 
* 
* 
* 
* 

0
1
2*

0
1
2*
* 
У
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*
6
?trace_0
@trace_1
Atrace_2
Btrace_3* 
6
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_3* 
* 
* 

0
1
2*

0
1
2*
* 
Я

Gstates
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*
6
Mtrace_0
Ntrace_1
Otrace_2
Ptrace_3* 
6
Qtrace_0
Rtrace_1
Strace_2
Ttrace_3* 
* 

0
1*

0
1*
* 
У
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*

Ztrace_0* 

[trace_0* 
R
10
\1
]2
^3
_4
`5
a6
b7
c8
d9
e10*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
'
\0
^1
`2
b3
d4*
'
]0
_1
a2
c3
e4*
* 
* 
8
f	variables
g	keras_api
	htotal
	icount*
H
j	variables
k	keras_api
	ltotal
	mcount
n
_fn_kwargs*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
vp
VARIABLE_VALUE+Adam/m/auto_regressive/rnn/lstm_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE+Adam/v/auto_regressive/rnn/lstm_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE5Adam/m/auto_regressive/rnn/lstm_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE5Adam/v/auto_regressive/rnn/lstm_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)Adam/m/auto_regressive/rnn/lstm_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE)Adam/v/auto_regressive/rnn/lstm_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE%Adam/m/auto_regressive/dense_8/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE%Adam/v/auto_regressive/dense_8/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE#Adam/m/auto_regressive/dense_8/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE#Adam/v/auto_regressive/dense_8/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*

h0
i1*

f	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

l0
m1*

j	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ў
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$auto_regressive/rnn/lstm_cell/kernel.auto_regressive/rnn/lstm_cell/recurrent_kernel"auto_regressive/rnn/lstm_cell/biasauto_regressive/dense_8/kernelauto_regressive/dense_8/bias	iterationlearning_rate+Adam/m/auto_regressive/rnn/lstm_cell/kernel+Adam/v/auto_regressive/rnn/lstm_cell/kernel5Adam/m/auto_regressive/rnn/lstm_cell/recurrent_kernel5Adam/v/auto_regressive/rnn/lstm_cell/recurrent_kernel)Adam/m/auto_regressive/rnn/lstm_cell/bias)Adam/v/auto_regressive/rnn/lstm_cell/bias%Adam/m/auto_regressive/dense_8/kernel%Adam/v/auto_regressive/dense_8/kernel#Adam/m/auto_regressive/dense_8/bias#Adam/v/auto_regressive/dense_8/biastotal_1count_1totalcountConst*"
Tin
2*
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
GPU 2J 8В *(
f#R!
__inference__traced_save_182979
”
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename$auto_regressive/rnn/lstm_cell/kernel.auto_regressive/rnn/lstm_cell/recurrent_kernel"auto_regressive/rnn/lstm_cell/biasauto_regressive/dense_8/kernelauto_regressive/dense_8/bias	iterationlearning_rate+Adam/m/auto_regressive/rnn/lstm_cell/kernel+Adam/v/auto_regressive/rnn/lstm_cell/kernel5Adam/m/auto_regressive/rnn/lstm_cell/recurrent_kernel5Adam/v/auto_regressive/rnn/lstm_cell/recurrent_kernel)Adam/m/auto_regressive/rnn/lstm_cell/bias)Adam/v/auto_regressive/rnn/lstm_cell/bias%Adam/m/auto_regressive/dense_8/kernel%Adam/v/auto_regressive/dense_8/kernel#Adam/m/auto_regressive/dense_8/bias#Adam/v/auto_regressive/dense_8/biastotal_1count_1totalcount*!
Tin
2*
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
GPU 2J 8В *+
f&R$
"__inference__traced_restore_183051Ќч
К

ф
0__inference_auto_regressive_layer_call_fn_181881
input_1
unknown:		А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 	
	unknown_3:	
identityИҐStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_auto_regressive_layer_call_and_return_conditional_losses_181851s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€	: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name181877:&"
 
_user_specified_name181875:&"
 
_user_specified_name181873:&"
 
_user_specified_name181871:&"
 
_user_specified_name181869:T P
+
_output_shapes
:€€€€€€€€€	
!
_user_specified_name	input_1
ѕ
”
$__inference_rnn_layer_call_fn_182198
inputs_0
unknown:		А
	unknown_0:	 А
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCallЛ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_181079o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name182190:&"
 
_user_specified_name182188:&"
 
_user_specified_name182186:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	
"
_user_specified_name
inputs_0
Ч
Б
E__inference_lstm_cell_layer_call_and_return_conditional_losses_180993

inputs

states
states_11
matmul_readvariableop_resource:		А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€	:€€€€€€€€€ :€€€€€€€€€ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates:O K
'
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Я
Г
E__inference_lstm_cell_layer_call_and_return_conditional_losses_182136

inputs
states_0
states_11
matmul_readvariableop_resource:		А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€	:€€€€€€€€€ :€€€€€€€€€ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
к:
Х
?__inference_rnn_layer_call_and_return_conditional_losses_180931

inputs#
lstm_cell_180846:		А#
lstm_cell_180848:	 А
lstm_cell_180850:	А
identity

identity_1

identity_2ИҐ!lstm_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_maskж
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_180846lstm_cell_180848lstm_cell_180850*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_180845n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : С
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_180846lstm_cell_180848lstm_cell_180850*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_180860*
condR
while_cond_180859*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ _

Identity_1Identitywhile:output:4^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ _

Identity_2Identitywhile:output:5^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€	: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:&"
 
_user_specified_name180850:&"
 
_user_specified_name180848:&"
 
_user_specified_name180846:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	
 
_user_specified_nameinputs
ЯR
µ
%auto_regressive_rnn_while_body_180190D
@auto_regressive_rnn_while_auto_regressive_rnn_while_loop_counterJ
Fauto_regressive_rnn_while_auto_regressive_rnn_while_maximum_iterations)
%auto_regressive_rnn_while_placeholder+
'auto_regressive_rnn_while_placeholder_1+
'auto_regressive_rnn_while_placeholder_2+
'auto_regressive_rnn_while_placeholder_3C
?auto_regressive_rnn_while_auto_regressive_rnn_strided_slice_1_0
{auto_regressive_rnn_while_tensorarrayv2read_tensorlistgetitem_auto_regressive_rnn_tensorarrayunstack_tensorlistfromtensor_0W
Dauto_regressive_rnn_while_lstm_cell_matmul_readvariableop_resource_0:		АY
Fauto_regressive_rnn_while_lstm_cell_matmul_1_readvariableop_resource_0:	 АT
Eauto_regressive_rnn_while_lstm_cell_biasadd_readvariableop_resource_0:	А&
"auto_regressive_rnn_while_identity(
$auto_regressive_rnn_while_identity_1(
$auto_regressive_rnn_while_identity_2(
$auto_regressive_rnn_while_identity_3(
$auto_regressive_rnn_while_identity_4(
$auto_regressive_rnn_while_identity_5A
=auto_regressive_rnn_while_auto_regressive_rnn_strided_slice_1}
yauto_regressive_rnn_while_tensorarrayv2read_tensorlistgetitem_auto_regressive_rnn_tensorarrayunstack_tensorlistfromtensorU
Bauto_regressive_rnn_while_lstm_cell_matmul_readvariableop_resource:		АW
Dauto_regressive_rnn_while_lstm_cell_matmul_1_readvariableop_resource:	 АR
Cauto_regressive_rnn_while_lstm_cell_biasadd_readvariableop_resource:	АИҐ:auto_regressive/rnn/while/lstm_cell/BiasAdd/ReadVariableOpҐ9auto_regressive/rnn/while/lstm_cell/MatMul/ReadVariableOpҐ;auto_regressive/rnn/while/lstm_cell/MatMul_1/ReadVariableOpЬ
Kauto_regressive/rnn/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   К
=auto_regressive/rnn/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{auto_regressive_rnn_while_tensorarrayv2read_tensorlistgetitem_auto_regressive_rnn_tensorarrayunstack_tensorlistfromtensor_0%auto_regressive_rnn_while_placeholderTauto_regressive/rnn/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype0њ
9auto_regressive/rnn/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpDauto_regressive_rnn_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:		А*
dtype0р
*auto_regressive/rnn/while/lstm_cell/MatMulMatMulDauto_regressive/rnn/while/TensorArrayV2Read/TensorListGetItem:item:0Aauto_regressive/rnn/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А√
;auto_regressive/rnn/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpFauto_regressive_rnn_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0„
,auto_regressive/rnn/while/lstm_cell/MatMul_1MatMul'auto_regressive_rnn_while_placeholder_2Cauto_regressive/rnn/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А—
'auto_regressive/rnn/while/lstm_cell/addAddV24auto_regressive/rnn/while/lstm_cell/MatMul:product:06auto_regressive/rnn/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аљ
:auto_regressive/rnn/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpEauto_regressive_rnn_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Џ
+auto_regressive/rnn/while/lstm_cell/BiasAddBiasAdd+auto_regressive/rnn/while/lstm_cell/add:z:0Bauto_regressive/rnn/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аu
3auto_regressive/rnn/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ґ
)auto_regressive/rnn/while/lstm_cell/splitSplit<auto_regressive/rnn/while/lstm_cell/split/split_dim:output:04auto_regressive/rnn/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitЬ
+auto_regressive/rnn/while/lstm_cell/SigmoidSigmoid2auto_regressive/rnn/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Ю
-auto_regressive/rnn/while/lstm_cell/Sigmoid_1Sigmoid2auto_regressive/rnn/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ Љ
'auto_regressive/rnn/while/lstm_cell/mulMul1auto_regressive/rnn/while/lstm_cell/Sigmoid_1:y:0'auto_regressive_rnn_while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ Ц
(auto_regressive/rnn/while/lstm_cell/TanhTanh2auto_regressive/rnn/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ Ѕ
)auto_regressive/rnn/while/lstm_cell/mul_1Mul/auto_regressive/rnn/while/lstm_cell/Sigmoid:y:0,auto_regressive/rnn/while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ ј
)auto_regressive/rnn/while/lstm_cell/add_1AddV2+auto_regressive/rnn/while/lstm_cell/mul:z:0-auto_regressive/rnn/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Ю
-auto_regressive/rnn/while/lstm_cell/Sigmoid_2Sigmoid2auto_regressive/rnn/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ У
*auto_regressive/rnn/while/lstm_cell/Tanh_1Tanh-auto_regressive/rnn/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ≈
)auto_regressive/rnn/while/lstm_cell/mul_2Mul1auto_regressive/rnn/while/lstm_cell/Sigmoid_2:y:0.auto_regressive/rnn/while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ Ж
Dauto_regressive/rnn/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Ї
>auto_regressive/rnn/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'auto_regressive_rnn_while_placeholder_1Mauto_regressive/rnn/while/TensorArrayV2Write/TensorListSetItem/index:output:0-auto_regressive/rnn/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“a
auto_regressive/rnn/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ш
auto_regressive/rnn/while/addAddV2%auto_regressive_rnn_while_placeholder(auto_regressive/rnn/while/add/y:output:0*
T0*
_output_shapes
: c
!auto_regressive/rnn/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ј
auto_regressive/rnn/while/add_1AddV2@auto_regressive_rnn_while_auto_regressive_rnn_while_loop_counter*auto_regressive/rnn/while/add_1/y:output:0*
T0*
_output_shapes
: Х
"auto_regressive/rnn/while/IdentityIdentity#auto_regressive/rnn/while/add_1:z:0^auto_regressive/rnn/while/NoOp*
T0*
_output_shapes
: Ї
$auto_regressive/rnn/while/Identity_1IdentityFauto_regressive_rnn_while_auto_regressive_rnn_while_maximum_iterations^auto_regressive/rnn/while/NoOp*
T0*
_output_shapes
: Х
$auto_regressive/rnn/while/Identity_2Identity!auto_regressive/rnn/while/add:z:0^auto_regressive/rnn/while/NoOp*
T0*
_output_shapes
: ¬
$auto_regressive/rnn/while/Identity_3IdentityNauto_regressive/rnn/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^auto_regressive/rnn/while/NoOp*
T0*
_output_shapes
: ≤
$auto_regressive/rnn/while/Identity_4Identity-auto_regressive/rnn/while/lstm_cell/mul_2:z:0^auto_regressive/rnn/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ ≤
$auto_regressive/rnn/while/Identity_5Identity-auto_regressive/rnn/while/lstm_cell/add_1:z:0^auto_regressive/rnn/while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ у
auto_regressive/rnn/while/NoOpNoOp;^auto_regressive/rnn/while/lstm_cell/BiasAdd/ReadVariableOp:^auto_regressive/rnn/while/lstm_cell/MatMul/ReadVariableOp<^auto_regressive/rnn/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "А
=auto_regressive_rnn_while_auto_regressive_rnn_strided_slice_1?auto_regressive_rnn_while_auto_regressive_rnn_strided_slice_1_0"U
$auto_regressive_rnn_while_identity_1-auto_regressive/rnn/while/Identity_1:output:0"U
$auto_regressive_rnn_while_identity_2-auto_regressive/rnn/while/Identity_2:output:0"U
$auto_regressive_rnn_while_identity_3-auto_regressive/rnn/while/Identity_3:output:0"U
$auto_regressive_rnn_while_identity_4-auto_regressive/rnn/while/Identity_4:output:0"U
$auto_regressive_rnn_while_identity_5-auto_regressive/rnn/while/Identity_5:output:0"Q
"auto_regressive_rnn_while_identity+auto_regressive/rnn/while/Identity:output:0"М
Cauto_regressive_rnn_while_lstm_cell_biasadd_readvariableop_resourceEauto_regressive_rnn_while_lstm_cell_biasadd_readvariableop_resource_0"О
Dauto_regressive_rnn_while_lstm_cell_matmul_1_readvariableop_resourceFauto_regressive_rnn_while_lstm_cell_matmul_1_readvariableop_resource_0"К
Bauto_regressive_rnn_while_lstm_cell_matmul_readvariableop_resourceDauto_regressive_rnn_while_lstm_cell_matmul_readvariableop_resource_0"ш
yauto_regressive_rnn_while_tensorarrayv2read_tensorlistgetitem_auto_regressive_rnn_tensorarrayunstack_tensorlistfromtensor{auto_regressive_rnn_while_tensorarrayv2read_tensorlistgetitem_auto_regressive_rnn_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : 2x
:auto_regressive/rnn/while/lstm_cell/BiasAdd/ReadVariableOp:auto_regressive/rnn/while/lstm_cell/BiasAdd/ReadVariableOp2v
9auto_regressive/rnn/while/lstm_cell/MatMul/ReadVariableOp9auto_regressive/rnn/while/lstm_cell/MatMul/ReadVariableOp2z
;auto_regressive/rnn/while/lstm_cell/MatMul_1/ReadVariableOp;auto_regressive/rnn/while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:so

_output_shapes
: 
U
_user_specified_name=;auto_regressive/rnn/TensorArrayUnstack/TensorListFromTensor:[W

_output_shapes
: 
=
_user_specified_name%#auto_regressive/rnn/strided_slice_1:-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :d`

_output_shapes
: 
F
_user_specified_name.,auto_regressive/rnn/while/maximum_iterations:^ Z

_output_shapes
: 
@
_user_specified_name(&auto_regressive/rnn/while/loop_counter
є
у
*__inference_lstm_cell_layer_call_fn_182040

inputs
states_0
states_1
unknown:		А
	unknown_0:	 А
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCall•
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€	:€€€€€€€€€ :€€€€€€€€€ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name182032:&"
 
_user_specified_name182030:&"
 
_user_specified_name182028:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
т9
µ
while_body_182434
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:		АE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 А@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:		АC
0while_lstm_cell_matmul_1_readvariableop_resource:	 А>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:		А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ж
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ А
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ n
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ Е
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ Д
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Й
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ £

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
т9
µ
while_body_182726
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:		АE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 А@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:		АC
0while_lstm_cell_matmul_1_readvariableop_resource:	 А>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:		А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ж
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ А
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ n
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ Е
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ Д
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Й
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ £

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
џ№
Я
K__inference_auto_regressive_layer_call_and_return_conditional_losses_181851
input_1

rnn_181621:		А

rnn_181623:	 А

rnn_181625:	А 
dense_8_181630: 	
dense_8_181632:	
identityИҐdense_8/StatefulPartitionedCallҐ!dense_8/StatefulPartitionedCall_1Ґ"dense_8/StatefulPartitionedCall_10Ґ"dense_8/StatefulPartitionedCall_11Ґ"dense_8/StatefulPartitionedCall_12Ґ"dense_8/StatefulPartitionedCall_13Ґ"dense_8/StatefulPartitionedCall_14Ґ"dense_8/StatefulPartitionedCall_15Ґ"dense_8/StatefulPartitionedCall_16Ґ"dense_8/StatefulPartitionedCall_17Ґ"dense_8/StatefulPartitionedCall_18Ґ"dense_8/StatefulPartitionedCall_19Ґ!dense_8/StatefulPartitionedCall_2Ґ"dense_8/StatefulPartitionedCall_20Ґ!dense_8/StatefulPartitionedCall_3Ґ!dense_8/StatefulPartitionedCall_4Ґ!dense_8/StatefulPartitionedCall_5Ґ!dense_8/StatefulPartitionedCall_6Ґ!dense_8/StatefulPartitionedCall_7Ґ!dense_8/StatefulPartitionedCall_8Ґ!dense_8/StatefulPartitionedCall_9Ґ!lstm_cell/StatefulPartitionedCallҐ#lstm_cell/StatefulPartitionedCall_1Ґ$lstm_cell/StatefulPartitionedCall_10Ґ$lstm_cell/StatefulPartitionedCall_11Ґ$lstm_cell/StatefulPartitionedCall_12Ґ$lstm_cell/StatefulPartitionedCall_13Ґ$lstm_cell/StatefulPartitionedCall_14Ґ$lstm_cell/StatefulPartitionedCall_15Ґ$lstm_cell/StatefulPartitionedCall_16Ґ$lstm_cell/StatefulPartitionedCall_17Ґ$lstm_cell/StatefulPartitionedCall_18Ґ$lstm_cell/StatefulPartitionedCall_19Ґ#lstm_cell/StatefulPartitionedCall_2Ґ#lstm_cell/StatefulPartitionedCall_3Ґ#lstm_cell/StatefulPartitionedCall_4Ґ#lstm_cell/StatefulPartitionedCall_5Ґ#lstm_cell/StatefulPartitionedCall_6Ґ#lstm_cell/StatefulPartitionedCall_7Ґ#lstm_cell/StatefulPartitionedCall_8Ґ#lstm_cell/StatefulPartitionedCall_9Ґrnn/StatefulPartitionedCallУ
rnn/StatefulPartitionedCallStatefulPartitionedCallinput_1
rnn_181621
rnn_181623
rnn_181625*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_181620К
dense_8/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280О
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0$rnn/StatefulPartitionedCall:output:1$rnn/StatefulPartitionedCall:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Т
!dense_8/StatefulPartitionedCall_1StatefulPartitionedCall*lstm_cell/StatefulPartitionedCall:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280Ю
#lstm_cell/StatefulPartitionedCall_1StatefulPartitionedCall*dense_8/StatefulPartitionedCall_1:output:0*lstm_cell/StatefulPartitionedCall:output:1*lstm_cell/StatefulPartitionedCall:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Ф
!dense_8/StatefulPartitionedCall_2StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_1:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280Ґ
#lstm_cell/StatefulPartitionedCall_2StatefulPartitionedCall*dense_8/StatefulPartitionedCall_2:output:0,lstm_cell/StatefulPartitionedCall_1:output:1,lstm_cell/StatefulPartitionedCall_1:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Ф
!dense_8/StatefulPartitionedCall_3StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_2:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280Ґ
#lstm_cell/StatefulPartitionedCall_3StatefulPartitionedCall*dense_8/StatefulPartitionedCall_3:output:0,lstm_cell/StatefulPartitionedCall_2:output:1,lstm_cell/StatefulPartitionedCall_2:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Ф
!dense_8/StatefulPartitionedCall_4StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_3:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280Ґ
#lstm_cell/StatefulPartitionedCall_4StatefulPartitionedCall*dense_8/StatefulPartitionedCall_4:output:0,lstm_cell/StatefulPartitionedCall_3:output:1,lstm_cell/StatefulPartitionedCall_3:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Ф
!dense_8/StatefulPartitionedCall_5StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_4:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280Ґ
#lstm_cell/StatefulPartitionedCall_5StatefulPartitionedCall*dense_8/StatefulPartitionedCall_5:output:0,lstm_cell/StatefulPartitionedCall_4:output:1,lstm_cell/StatefulPartitionedCall_4:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Ф
!dense_8/StatefulPartitionedCall_6StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_5:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280Ґ
#lstm_cell/StatefulPartitionedCall_6StatefulPartitionedCall*dense_8/StatefulPartitionedCall_6:output:0,lstm_cell/StatefulPartitionedCall_5:output:1,lstm_cell/StatefulPartitionedCall_5:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Ф
!dense_8/StatefulPartitionedCall_7StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_6:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280Ґ
#lstm_cell/StatefulPartitionedCall_7StatefulPartitionedCall*dense_8/StatefulPartitionedCall_7:output:0,lstm_cell/StatefulPartitionedCall_6:output:1,lstm_cell/StatefulPartitionedCall_6:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Ф
!dense_8/StatefulPartitionedCall_8StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_7:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280Ґ
#lstm_cell/StatefulPartitionedCall_8StatefulPartitionedCall*dense_8/StatefulPartitionedCall_8:output:0,lstm_cell/StatefulPartitionedCall_7:output:1,lstm_cell/StatefulPartitionedCall_7:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Ф
!dense_8/StatefulPartitionedCall_9StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_8:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280Ґ
#lstm_cell/StatefulPartitionedCall_9StatefulPartitionedCall*dense_8/StatefulPartitionedCall_9:output:0,lstm_cell/StatefulPartitionedCall_8:output:1,lstm_cell/StatefulPartitionedCall_8:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Х
"dense_8/StatefulPartitionedCall_10StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_9:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280§
$lstm_cell/StatefulPartitionedCall_10StatefulPartitionedCall+dense_8/StatefulPartitionedCall_10:output:0,lstm_cell/StatefulPartitionedCall_9:output:1,lstm_cell/StatefulPartitionedCall_9:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Ц
"dense_8/StatefulPartitionedCall_11StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_10:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280¶
$lstm_cell/StatefulPartitionedCall_11StatefulPartitionedCall+dense_8/StatefulPartitionedCall_11:output:0-lstm_cell/StatefulPartitionedCall_10:output:1-lstm_cell/StatefulPartitionedCall_10:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Ц
"dense_8/StatefulPartitionedCall_12StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_11:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280¶
$lstm_cell/StatefulPartitionedCall_12StatefulPartitionedCall+dense_8/StatefulPartitionedCall_12:output:0-lstm_cell/StatefulPartitionedCall_11:output:1-lstm_cell/StatefulPartitionedCall_11:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Ц
"dense_8/StatefulPartitionedCall_13StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_12:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280¶
$lstm_cell/StatefulPartitionedCall_13StatefulPartitionedCall+dense_8/StatefulPartitionedCall_13:output:0-lstm_cell/StatefulPartitionedCall_12:output:1-lstm_cell/StatefulPartitionedCall_12:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Ц
"dense_8/StatefulPartitionedCall_14StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_13:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280¶
$lstm_cell/StatefulPartitionedCall_14StatefulPartitionedCall+dense_8/StatefulPartitionedCall_14:output:0-lstm_cell/StatefulPartitionedCall_13:output:1-lstm_cell/StatefulPartitionedCall_13:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Ц
"dense_8/StatefulPartitionedCall_15StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_14:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280¶
$lstm_cell/StatefulPartitionedCall_15StatefulPartitionedCall+dense_8/StatefulPartitionedCall_15:output:0-lstm_cell/StatefulPartitionedCall_14:output:1-lstm_cell/StatefulPartitionedCall_14:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Ц
"dense_8/StatefulPartitionedCall_16StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_15:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280¶
$lstm_cell/StatefulPartitionedCall_16StatefulPartitionedCall+dense_8/StatefulPartitionedCall_16:output:0-lstm_cell/StatefulPartitionedCall_15:output:1-lstm_cell/StatefulPartitionedCall_15:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Ц
"dense_8/StatefulPartitionedCall_17StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_16:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280¶
$lstm_cell/StatefulPartitionedCall_17StatefulPartitionedCall+dense_8/StatefulPartitionedCall_17:output:0-lstm_cell/StatefulPartitionedCall_16:output:1-lstm_cell/StatefulPartitionedCall_16:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Ц
"dense_8/StatefulPartitionedCall_18StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_17:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280¶
$lstm_cell/StatefulPartitionedCall_18StatefulPartitionedCall+dense_8/StatefulPartitionedCall_18:output:0-lstm_cell/StatefulPartitionedCall_17:output:1-lstm_cell/StatefulPartitionedCall_17:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Ц
"dense_8/StatefulPartitionedCall_19StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_18:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280¶
$lstm_cell/StatefulPartitionedCall_19StatefulPartitionedCall+dense_8/StatefulPartitionedCall_19:output:0-lstm_cell/StatefulPartitionedCall_18:output:1-lstm_cell/StatefulPartitionedCall_18:output:2
rnn_181621
rnn_181623
rnn_181625*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666Ц
"dense_8/StatefulPartitionedCall_20StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_19:output:0dense_8_181630dense_8_181632*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280с
stackPack(dense_8/StatefulPartitionedCall:output:0*dense_8/StatefulPartitionedCall_1:output:0*dense_8/StatefulPartitionedCall_2:output:0*dense_8/StatefulPartitionedCall_3:output:0*dense_8/StatefulPartitionedCall_4:output:0*dense_8/StatefulPartitionedCall_5:output:0*dense_8/StatefulPartitionedCall_6:output:0*dense_8/StatefulPartitionedCall_7:output:0*dense_8/StatefulPartitionedCall_8:output:0*dense_8/StatefulPartitionedCall_9:output:0+dense_8/StatefulPartitionedCall_10:output:0+dense_8/StatefulPartitionedCall_11:output:0+dense_8/StatefulPartitionedCall_12:output:0+dense_8/StatefulPartitionedCall_13:output:0+dense_8/StatefulPartitionedCall_14:output:0+dense_8/StatefulPartitionedCall_15:output:0+dense_8/StatefulPartitionedCall_16:output:0+dense_8/StatefulPartitionedCall_17:output:0+dense_8/StatefulPartitionedCall_18:output:0+dense_8/StatefulPartitionedCall_19:output:0+dense_8/StatefulPartitionedCall_20:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          u
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€	`
IdentityIdentitytranspose:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	љ
NoOpNoOp ^dense_8/StatefulPartitionedCall"^dense_8/StatefulPartitionedCall_1#^dense_8/StatefulPartitionedCall_10#^dense_8/StatefulPartitionedCall_11#^dense_8/StatefulPartitionedCall_12#^dense_8/StatefulPartitionedCall_13#^dense_8/StatefulPartitionedCall_14#^dense_8/StatefulPartitionedCall_15#^dense_8/StatefulPartitionedCall_16#^dense_8/StatefulPartitionedCall_17#^dense_8/StatefulPartitionedCall_18#^dense_8/StatefulPartitionedCall_19"^dense_8/StatefulPartitionedCall_2#^dense_8/StatefulPartitionedCall_20"^dense_8/StatefulPartitionedCall_3"^dense_8/StatefulPartitionedCall_4"^dense_8/StatefulPartitionedCall_5"^dense_8/StatefulPartitionedCall_6"^dense_8/StatefulPartitionedCall_7"^dense_8/StatefulPartitionedCall_8"^dense_8/StatefulPartitionedCall_9"^lstm_cell/StatefulPartitionedCall$^lstm_cell/StatefulPartitionedCall_1%^lstm_cell/StatefulPartitionedCall_10%^lstm_cell/StatefulPartitionedCall_11%^lstm_cell/StatefulPartitionedCall_12%^lstm_cell/StatefulPartitionedCall_13%^lstm_cell/StatefulPartitionedCall_14%^lstm_cell/StatefulPartitionedCall_15%^lstm_cell/StatefulPartitionedCall_16%^lstm_cell/StatefulPartitionedCall_17%^lstm_cell/StatefulPartitionedCall_18%^lstm_cell/StatefulPartitionedCall_19$^lstm_cell/StatefulPartitionedCall_2$^lstm_cell/StatefulPartitionedCall_3$^lstm_cell/StatefulPartitionedCall_4$^lstm_cell/StatefulPartitionedCall_5$^lstm_cell/StatefulPartitionedCall_6$^lstm_cell/StatefulPartitionedCall_7$^lstm_cell/StatefulPartitionedCall_8$^lstm_cell/StatefulPartitionedCall_9^rnn/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€	: : : : : 2H
"dense_8/StatefulPartitionedCall_10"dense_8/StatefulPartitionedCall_102H
"dense_8/StatefulPartitionedCall_11"dense_8/StatefulPartitionedCall_112H
"dense_8/StatefulPartitionedCall_12"dense_8/StatefulPartitionedCall_122H
"dense_8/StatefulPartitionedCall_13"dense_8/StatefulPartitionedCall_132H
"dense_8/StatefulPartitionedCall_14"dense_8/StatefulPartitionedCall_142H
"dense_8/StatefulPartitionedCall_15"dense_8/StatefulPartitionedCall_152H
"dense_8/StatefulPartitionedCall_16"dense_8/StatefulPartitionedCall_162H
"dense_8/StatefulPartitionedCall_17"dense_8/StatefulPartitionedCall_172H
"dense_8/StatefulPartitionedCall_18"dense_8/StatefulPartitionedCall_182H
"dense_8/StatefulPartitionedCall_19"dense_8/StatefulPartitionedCall_192F
!dense_8/StatefulPartitionedCall_1!dense_8/StatefulPartitionedCall_12H
"dense_8/StatefulPartitionedCall_20"dense_8/StatefulPartitionedCall_202F
!dense_8/StatefulPartitionedCall_2!dense_8/StatefulPartitionedCall_22F
!dense_8/StatefulPartitionedCall_3!dense_8/StatefulPartitionedCall_32F
!dense_8/StatefulPartitionedCall_4!dense_8/StatefulPartitionedCall_42F
!dense_8/StatefulPartitionedCall_5!dense_8/StatefulPartitionedCall_52F
!dense_8/StatefulPartitionedCall_6!dense_8/StatefulPartitionedCall_62F
!dense_8/StatefulPartitionedCall_7!dense_8/StatefulPartitionedCall_72F
!dense_8/StatefulPartitionedCall_8!dense_8/StatefulPartitionedCall_82F
!dense_8/StatefulPartitionedCall_9!dense_8/StatefulPartitionedCall_92B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2L
$lstm_cell/StatefulPartitionedCall_10$lstm_cell/StatefulPartitionedCall_102L
$lstm_cell/StatefulPartitionedCall_11$lstm_cell/StatefulPartitionedCall_112L
$lstm_cell/StatefulPartitionedCall_12$lstm_cell/StatefulPartitionedCall_122L
$lstm_cell/StatefulPartitionedCall_13$lstm_cell/StatefulPartitionedCall_132L
$lstm_cell/StatefulPartitionedCall_14$lstm_cell/StatefulPartitionedCall_142L
$lstm_cell/StatefulPartitionedCall_15$lstm_cell/StatefulPartitionedCall_152L
$lstm_cell/StatefulPartitionedCall_16$lstm_cell/StatefulPartitionedCall_162L
$lstm_cell/StatefulPartitionedCall_17$lstm_cell/StatefulPartitionedCall_172L
$lstm_cell/StatefulPartitionedCall_18$lstm_cell/StatefulPartitionedCall_182L
$lstm_cell/StatefulPartitionedCall_19$lstm_cell/StatefulPartitionedCall_192J
#lstm_cell/StatefulPartitionedCall_1#lstm_cell/StatefulPartitionedCall_12J
#lstm_cell/StatefulPartitionedCall_2#lstm_cell/StatefulPartitionedCall_22J
#lstm_cell/StatefulPartitionedCall_3#lstm_cell/StatefulPartitionedCall_32J
#lstm_cell/StatefulPartitionedCall_4#lstm_cell/StatefulPartitionedCall_42J
#lstm_cell/StatefulPartitionedCall_5#lstm_cell/StatefulPartitionedCall_52J
#lstm_cell/StatefulPartitionedCall_6#lstm_cell/StatefulPartitionedCall_62J
#lstm_cell/StatefulPartitionedCall_7#lstm_cell/StatefulPartitionedCall_72J
#lstm_cell/StatefulPartitionedCall_8#lstm_cell/StatefulPartitionedCall_82J
#lstm_cell/StatefulPartitionedCall_9#lstm_cell/StatefulPartitionedCall_92F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall:&"
 
_user_specified_name181632:&"
 
_user_specified_name181630:&"
 
_user_specified_name181625:&"
 
_user_specified_name181623:&"
 
_user_specified_name181621:T P
+
_output_shapes
:€€€€€€€€€	
!
_user_specified_name	input_1
¬	
√
while_cond_181189
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_181189___redundant_placeholder04
0while_while_cond_181189___redundant_placeholder14
0while_while_cond_181189___redundant_placeholder24
0while_while_cond_181189___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
є
у
*__inference_lstm_cell_layer_call_fn_181989

inputs
states_0
states_1
unknown:		А
	unknown_0:	 А
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCall•
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_180845o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€	:€€€€€€€€€ :€€€€€€€€€ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name181981:&"
 
_user_specified_name181979:&"
 
_user_specified_name181977:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
¬	
√
while_cond_181007
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_181007___redundant_placeholder04
0while_while_cond_181007___redundant_placeholder14
0while_while_cond_181007___redundant_placeholder24
0while_while_cond_181007___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
т9
µ
while_body_182580
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:		АE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 А@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:		АC
0while_lstm_cell_matmul_1_readvariableop_resource:	 А>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:		А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ж
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ А
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ n
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ Е
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ Д
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Й
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ £

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
¬	
√
while_cond_182579
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_182579___redundant_placeholder04
0while_while_cond_182579___redundant_placeholder14
0while_while_cond_182579___redundant_placeholder24
0while_while_cond_182579___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
‘	
и
$__inference_signature_wrapper_181972
input_1
unknown:		А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 	
	unknown_3:	
identityИҐStatefulPartitionedCallв
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__wrapped_model_180783s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€	: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name181968:&"
 
_user_specified_name181966:&"
 
_user_specified_name181964:&"
 
_user_specified_name181962:&"
 
_user_specified_name181960:T P
+
_output_shapes
:€€€€€€€€€	
!
_user_specified_name	input_1
Ч
Б
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181666

inputs

states
states_11
matmul_readvariableop_resource:		А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€	:€€€€€€€€€ :€€€€€€€€€ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates:O K
'
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ц	
ф
C__inference_dense_8_layer_call_and_return_conditional_losses_182831

inputs0
matmul_readvariableop_resource: 	-
biasadd_readvariableop_resource:	
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: 	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€	S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
•L
І
?__inference_rnn_layer_call_and_return_conditional_losses_182520
inputs_0;
(lstm_cell_matmul_readvariableop_resource:		А=
*lstm_cell_matmul_1_readvariableop_resource:	 А8
)lstm_cell_biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :‘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ b
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ s
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ _
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : №
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_182434*
condR
while_cond_182433*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ _

Identity_1Identitywhile:output:4^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ _

Identity_2Identitywhile:output:5^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ У
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€	: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	
"
_user_specified_name
inputs_0
Ч
Б
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317

inputs

states
states_11
matmul_readvariableop_resource:		А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€	:€€€€€€€€€ :€€€€€€€€€ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates:O K
'
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Ч
Б
E__inference_lstm_cell_layer_call_and_return_conditional_losses_180845

inputs

states
states_11
matmul_readvariableop_resource:		А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€	:€€€€€€€€€ :€€€€€€€€€ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates:OK
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_namestates:O K
'
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ё%
ќ
while_body_181549
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_181573_0:		А+
while_lstm_cell_181575_0:	 А'
while_lstm_cell_181577_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_181573:		А)
while_lstm_cell_181575:	 А%
while_lstm_cell_181577:	АИҐ'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype0§
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_181573_0while_lstm_cell_181575_0while_lstm_cell_181577_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_180993r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Н
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Н
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"2
while_lstm_cell_181573while_lstm_cell_181573_0"2
while_lstm_cell_181575while_lstm_cell_181575_0"2
while_lstm_cell_181577while_lstm_cell_181577_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:&
"
 
_user_specified_name181577:&	"
 
_user_specified_name181575:&"
 
_user_specified_name181573:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
≠о
».
!__inference__wrapped_model_180783
input_1O
<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource:		АQ
>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource:	 АL
=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource:	АH
6auto_regressive_dense_8_matmul_readvariableop_resource: 	E
7auto_regressive_dense_8_biasadd_readvariableop_resource:	
identityИҐ.auto_regressive/dense_8/BiasAdd/ReadVariableOpҐ0auto_regressive/dense_8/BiasAdd_1/ReadVariableOpҐ1auto_regressive/dense_8/BiasAdd_10/ReadVariableOpҐ1auto_regressive/dense_8/BiasAdd_11/ReadVariableOpҐ1auto_regressive/dense_8/BiasAdd_12/ReadVariableOpҐ1auto_regressive/dense_8/BiasAdd_13/ReadVariableOpҐ1auto_regressive/dense_8/BiasAdd_14/ReadVariableOpҐ1auto_regressive/dense_8/BiasAdd_15/ReadVariableOpҐ1auto_regressive/dense_8/BiasAdd_16/ReadVariableOpҐ1auto_regressive/dense_8/BiasAdd_17/ReadVariableOpҐ1auto_regressive/dense_8/BiasAdd_18/ReadVariableOpҐ1auto_regressive/dense_8/BiasAdd_19/ReadVariableOpҐ0auto_regressive/dense_8/BiasAdd_2/ReadVariableOpҐ1auto_regressive/dense_8/BiasAdd_20/ReadVariableOpҐ0auto_regressive/dense_8/BiasAdd_3/ReadVariableOpҐ0auto_regressive/dense_8/BiasAdd_4/ReadVariableOpҐ0auto_regressive/dense_8/BiasAdd_5/ReadVariableOpҐ0auto_regressive/dense_8/BiasAdd_6/ReadVariableOpҐ0auto_regressive/dense_8/BiasAdd_7/ReadVariableOpҐ0auto_regressive/dense_8/BiasAdd_8/ReadVariableOpҐ0auto_regressive/dense_8/BiasAdd_9/ReadVariableOpҐ-auto_regressive/dense_8/MatMul/ReadVariableOpҐ/auto_regressive/dense_8/MatMul_1/ReadVariableOpҐ0auto_regressive/dense_8/MatMul_10/ReadVariableOpҐ0auto_regressive/dense_8/MatMul_11/ReadVariableOpҐ0auto_regressive/dense_8/MatMul_12/ReadVariableOpҐ0auto_regressive/dense_8/MatMul_13/ReadVariableOpҐ0auto_regressive/dense_8/MatMul_14/ReadVariableOpҐ0auto_regressive/dense_8/MatMul_15/ReadVariableOpҐ0auto_regressive/dense_8/MatMul_16/ReadVariableOpҐ0auto_regressive/dense_8/MatMul_17/ReadVariableOpҐ0auto_regressive/dense_8/MatMul_18/ReadVariableOpҐ0auto_regressive/dense_8/MatMul_19/ReadVariableOpҐ/auto_regressive/dense_8/MatMul_2/ReadVariableOpҐ0auto_regressive/dense_8/MatMul_20/ReadVariableOpҐ/auto_regressive/dense_8/MatMul_3/ReadVariableOpҐ/auto_regressive/dense_8/MatMul_4/ReadVariableOpҐ/auto_regressive/dense_8/MatMul_5/ReadVariableOpҐ/auto_regressive/dense_8/MatMul_6/ReadVariableOpҐ/auto_regressive/dense_8/MatMul_7/ReadVariableOpҐ/auto_regressive/dense_8/MatMul_8/ReadVariableOpҐ/auto_regressive/dense_8/MatMul_9/ReadVariableOpҐ0auto_regressive/lstm_cell/BiasAdd/ReadVariableOpҐ2auto_regressive/lstm_cell/BiasAdd_1/ReadVariableOpҐ3auto_regressive/lstm_cell/BiasAdd_10/ReadVariableOpҐ3auto_regressive/lstm_cell/BiasAdd_11/ReadVariableOpҐ3auto_regressive/lstm_cell/BiasAdd_12/ReadVariableOpҐ3auto_regressive/lstm_cell/BiasAdd_13/ReadVariableOpҐ3auto_regressive/lstm_cell/BiasAdd_14/ReadVariableOpҐ3auto_regressive/lstm_cell/BiasAdd_15/ReadVariableOpҐ3auto_regressive/lstm_cell/BiasAdd_16/ReadVariableOpҐ3auto_regressive/lstm_cell/BiasAdd_17/ReadVariableOpҐ3auto_regressive/lstm_cell/BiasAdd_18/ReadVariableOpҐ3auto_regressive/lstm_cell/BiasAdd_19/ReadVariableOpҐ2auto_regressive/lstm_cell/BiasAdd_2/ReadVariableOpҐ2auto_regressive/lstm_cell/BiasAdd_3/ReadVariableOpҐ2auto_regressive/lstm_cell/BiasAdd_4/ReadVariableOpҐ2auto_regressive/lstm_cell/BiasAdd_5/ReadVariableOpҐ2auto_regressive/lstm_cell/BiasAdd_6/ReadVariableOpҐ2auto_regressive/lstm_cell/BiasAdd_7/ReadVariableOpҐ2auto_regressive/lstm_cell/BiasAdd_8/ReadVariableOpҐ2auto_regressive/lstm_cell/BiasAdd_9/ReadVariableOpҐ/auto_regressive/lstm_cell/MatMul/ReadVariableOpҐ1auto_regressive/lstm_cell/MatMul_1/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_10/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_11/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_12/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_13/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_14/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_15/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_16/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_17/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_18/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_19/ReadVariableOpҐ1auto_regressive/lstm_cell/MatMul_2/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_20/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_21/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_22/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_23/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_24/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_25/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_26/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_27/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_28/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_29/ReadVariableOpҐ1auto_regressive/lstm_cell/MatMul_3/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_30/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_31/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_32/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_33/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_34/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_35/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_36/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_37/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_38/ReadVariableOpҐ2auto_regressive/lstm_cell/MatMul_39/ReadVariableOpҐ1auto_regressive/lstm_cell/MatMul_4/ReadVariableOpҐ1auto_regressive/lstm_cell/MatMul_5/ReadVariableOpҐ1auto_regressive/lstm_cell/MatMul_6/ReadVariableOpҐ1auto_regressive/lstm_cell/MatMul_7/ReadVariableOpҐ1auto_regressive/lstm_cell/MatMul_8/ReadVariableOpҐ1auto_regressive/lstm_cell/MatMul_9/ReadVariableOpҐ4auto_regressive/rnn/lstm_cell/BiasAdd/ReadVariableOpҐ3auto_regressive/rnn/lstm_cell/MatMul/ReadVariableOpҐ5auto_regressive/rnn/lstm_cell/MatMul_1/ReadVariableOpҐauto_regressive/rnn/while^
auto_regressive/rnn/ShapeShapeinput_1*
T0*
_output_shapes
::нѕq
'auto_regressive/rnn/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)auto_regressive/rnn/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)auto_regressive/rnn/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!auto_regressive/rnn/strided_sliceStridedSlice"auto_regressive/rnn/Shape:output:00auto_regressive/rnn/strided_slice/stack:output:02auto_regressive/rnn/strided_slice/stack_1:output:02auto_regressive/rnn/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"auto_regressive/rnn/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : ѓ
 auto_regressive/rnn/zeros/packedPack*auto_regressive/rnn/strided_slice:output:0+auto_regressive/rnn/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
auto_regressive/rnn/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
auto_regressive/rnn/zerosFill)auto_regressive/rnn/zeros/packed:output:0(auto_regressive/rnn/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ f
$auto_regressive/rnn/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : ≥
"auto_regressive/rnn/zeros_1/packedPack*auto_regressive/rnn/strided_slice:output:0-auto_regressive/rnn/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!auto_regressive/rnn/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ѓ
auto_regressive/rnn/zeros_1Fill+auto_regressive/rnn/zeros_1/packed:output:0*auto_regressive/rnn/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ w
"auto_regressive/rnn/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
auto_regressive/rnn/transpose	Transposeinput_1+auto_regressive/rnn/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€	z
auto_regressive/rnn/Shape_1Shape!auto_regressive/rnn/transpose:y:0*
T0*
_output_shapes
::нѕs
)auto_regressive/rnn/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+auto_regressive/rnn/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+auto_regressive/rnn/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:њ
#auto_regressive/rnn/strided_slice_1StridedSlice$auto_regressive/rnn/Shape_1:output:02auto_regressive/rnn/strided_slice_1/stack:output:04auto_regressive/rnn/strided_slice_1/stack_1:output:04auto_regressive/rnn/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/auto_regressive/rnn/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€р
!auto_regressive/rnn/TensorArrayV2TensorListReserve8auto_regressive/rnn/TensorArrayV2/element_shape:output:0,auto_regressive/rnn/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ъ
Iauto_regressive/rnn/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   Ь
;auto_regressive/rnn/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!auto_regressive/rnn/transpose:y:0Rauto_regressive/rnn/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“s
)auto_regressive/rnn/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+auto_regressive/rnn/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+auto_regressive/rnn/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ќ
#auto_regressive/rnn/strided_slice_2StridedSlice!auto_regressive/rnn/transpose:y:02auto_regressive/rnn/strided_slice_2/stack:output:04auto_regressive/rnn/strided_slice_2/stack_1:output:04auto_regressive/rnn/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_mask±
3auto_regressive/rnn/lstm_cell/MatMul/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0ћ
$auto_regressive/rnn/lstm_cell/MatMulMatMul,auto_regressive/rnn/strided_slice_2:output:0;auto_regressive/rnn/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аµ
5auto_regressive/rnn/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0∆
&auto_regressive/rnn/lstm_cell/MatMul_1MatMul"auto_regressive/rnn/zeros:output:0=auto_regressive/rnn/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Ањ
!auto_regressive/rnn/lstm_cell/addAddV2.auto_regressive/rnn/lstm_cell/MatMul:product:00auto_regressive/rnn/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аѓ
4auto_regressive/rnn/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0»
%auto_regressive/rnn/lstm_cell/BiasAddBiasAdd%auto_regressive/rnn/lstm_cell/add:z:0<auto_regressive/rnn/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аo
-auto_regressive/rnn/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Р
#auto_regressive/rnn/lstm_cell/splitSplit6auto_regressive/rnn/lstm_cell/split/split_dim:output:0.auto_regressive/rnn/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitР
%auto_regressive/rnn/lstm_cell/SigmoidSigmoid,auto_regressive/rnn/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Т
'auto_regressive/rnn/lstm_cell/Sigmoid_1Sigmoid,auto_regressive/rnn/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ≠
!auto_regressive/rnn/lstm_cell/mulMul+auto_regressive/rnn/lstm_cell/Sigmoid_1:y:0$auto_regressive/rnn/zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ К
"auto_regressive/rnn/lstm_cell/TanhTanh,auto_regressive/rnn/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ ѓ
#auto_regressive/rnn/lstm_cell/mul_1Mul)auto_regressive/rnn/lstm_cell/Sigmoid:y:0&auto_regressive/rnn/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ Ѓ
#auto_regressive/rnn/lstm_cell/add_1AddV2%auto_regressive/rnn/lstm_cell/mul:z:0'auto_regressive/rnn/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Т
'auto_regressive/rnn/lstm_cell/Sigmoid_2Sigmoid,auto_regressive/rnn/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ З
$auto_regressive/rnn/lstm_cell/Tanh_1Tanh'auto_regressive/rnn/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ≥
#auto_regressive/rnn/lstm_cell/mul_2Mul+auto_regressive/rnn/lstm_cell/Sigmoid_2:y:0(auto_regressive/rnn/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ В
1auto_regressive/rnn/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    r
0auto_regressive/rnn/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Б
#auto_regressive/rnn/TensorArrayV2_1TensorListReserve:auto_regressive/rnn/TensorArrayV2_1/element_shape:output:09auto_regressive/rnn/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Z
auto_regressive/rnn/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,auto_regressive/rnn/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€h
&auto_regressive/rnn/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ф
auto_regressive/rnn/whileWhile/auto_regressive/rnn/while/loop_counter:output:05auto_regressive/rnn/while/maximum_iterations:output:0!auto_regressive/rnn/time:output:0,auto_regressive/rnn/TensorArrayV2_1:handle:0"auto_regressive/rnn/zeros:output:0$auto_regressive/rnn/zeros_1:output:0,auto_regressive/rnn/strided_slice_1:output:0Kauto_regressive/rnn/TensorArrayUnstack/TensorListFromTensor:output_handle:0<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*1
body)R'
%auto_regressive_rnn_while_body_180190*1
cond)R'
%auto_regressive_rnn_while_cond_180189*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations Х
Dauto_regressive/rnn/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    Т
6auto_regressive/rnn/TensorArrayV2Stack/TensorListStackTensorListStack"auto_regressive/rnn/while:output:3Mauto_regressive/rnn/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype0*
num_elements|
)auto_regressive/rnn/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€u
+auto_regressive/rnn/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+auto_regressive/rnn/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:л
#auto_regressive/rnn/strided_slice_3StridedSlice?auto_regressive/rnn/TensorArrayV2Stack/TensorListStack:tensor:02auto_regressive/rnn/strided_slice_3/stack:output:04auto_regressive/rnn/strided_slice_3/stack_1:output:04auto_regressive/rnn/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_masky
$auto_regressive/rnn/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          “
auto_regressive/rnn/transpose_1	Transpose?auto_regressive/rnn/TensorArrayV2Stack/TensorListStack:tensor:0-auto_regressive/rnn/transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ §
-auto_regressive/dense_8/MatMul/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0њ
auto_regressive/dense_8/MatMulMatMul,auto_regressive/rnn/strided_slice_3:output:05auto_regressive/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	Ґ
.auto_regressive/dense_8/BiasAdd/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0Њ
auto_regressive/dense_8/BiasAddBiasAdd(auto_regressive/dense_8/MatMul:product:06auto_regressive/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	≠
/auto_regressive/lstm_cell/MatMul/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0ј
 auto_regressive/lstm_cell/MatMulMatMul(auto_regressive/dense_8/BiasAdd:output:07auto_regressive/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А±
1auto_regressive/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0Њ
"auto_regressive/lstm_cell/MatMul_1MatMul"auto_regressive/rnn/while:output:49auto_regressive/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≥
auto_regressive/lstm_cell/addAddV2*auto_regressive/lstm_cell/MatMul:product:0,auto_regressive/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЂ
0auto_regressive/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Љ
!auto_regressive/lstm_cell/BiasAddBiasAdd!auto_regressive/lstm_cell/add:z:08auto_regressive/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аk
)auto_regressive/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Д
auto_regressive/lstm_cell/splitSplit2auto_regressive/lstm_cell/split/split_dim:output:0*auto_regressive/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitИ
!auto_regressive/lstm_cell/SigmoidSigmoid(auto_regressive/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ К
#auto_regressive/lstm_cell/Sigmoid_1Sigmoid(auto_regressive/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ £
auto_regressive/lstm_cell/mulMul'auto_regressive/lstm_cell/Sigmoid_1:y:0"auto_regressive/rnn/while:output:5*
T0*'
_output_shapes
:€€€€€€€€€ В
auto_regressive/lstm_cell/TanhTanh(auto_regressive/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ £
auto_regressive/lstm_cell/mul_1Mul%auto_regressive/lstm_cell/Sigmoid:y:0"auto_regressive/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ Ґ
auto_regressive/lstm_cell/add_1AddV2!auto_regressive/lstm_cell/mul:z:0#auto_regressive/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ К
#auto_regressive/lstm_cell/Sigmoid_2Sigmoid(auto_regressive/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 
 auto_regressive/lstm_cell/Tanh_1Tanh#auto_regressive/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ І
auto_regressive/lstm_cell/mul_2Mul'auto_regressive/lstm_cell/Sigmoid_2:y:0$auto_regressive/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ ¶
/auto_regressive/dense_8/MatMul_1/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0Ї
 auto_regressive/dense_8/MatMul_1MatMul#auto_regressive/lstm_cell/mul_2:z:07auto_regressive/dense_8/MatMul_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	§
0auto_regressive/dense_8/BiasAdd_1/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0ƒ
!auto_regressive/dense_8/BiasAdd_1BiasAdd*auto_regressive/dense_8/MatMul_1:product:08auto_regressive/dense_8/BiasAdd_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	ѓ
1auto_regressive/lstm_cell/MatMul_2/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0∆
"auto_regressive/lstm_cell/MatMul_2MatMul*auto_regressive/dense_8/BiasAdd_1:output:09auto_regressive/lstm_cell/MatMul_2/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А±
1auto_regressive/lstm_cell/MatMul_3/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0њ
"auto_regressive/lstm_cell/MatMul_3MatMul#auto_regressive/lstm_cell/mul_2:z:09auto_regressive/lstm_cell/MatMul_3/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЈ
auto_regressive/lstm_cell/add_2AddV2,auto_regressive/lstm_cell/MatMul_2:product:0,auto_regressive/lstm_cell/MatMul_3:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≠
2auto_regressive/lstm_cell/BiasAdd_1/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0¬
#auto_regressive/lstm_cell/BiasAdd_1BiasAdd#auto_regressive/lstm_cell/add_2:z:0:auto_regressive/lstm_cell/BiasAdd_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аm
+auto_regressive/lstm_cell/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
!auto_regressive/lstm_cell/split_1Split4auto_regressive/lstm_cell/split_1/split_dim:output:0,auto_regressive/lstm_cell/BiasAdd_1:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitМ
#auto_regressive/lstm_cell/Sigmoid_3Sigmoid*auto_regressive/lstm_cell/split_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ М
#auto_regressive/lstm_cell/Sigmoid_4Sigmoid*auto_regressive/lstm_cell/split_1:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ¶
auto_regressive/lstm_cell/mul_3Mul'auto_regressive/lstm_cell/Sigmoid_4:y:0#auto_regressive/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Ж
 auto_regressive/lstm_cell/Tanh_2Tanh*auto_regressive/lstm_cell/split_1:output:2*
T0*'
_output_shapes
:€€€€€€€€€ І
auto_regressive/lstm_cell/mul_4Mul'auto_regressive/lstm_cell/Sigmoid_3:y:0$auto_regressive/lstm_cell/Tanh_2:y:0*
T0*'
_output_shapes
:€€€€€€€€€ §
auto_regressive/lstm_cell/add_3AddV2#auto_regressive/lstm_cell/mul_3:z:0#auto_regressive/lstm_cell/mul_4:z:0*
T0*'
_output_shapes
:€€€€€€€€€ М
#auto_regressive/lstm_cell/Sigmoid_5Sigmoid*auto_regressive/lstm_cell/split_1:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 
 auto_regressive/lstm_cell/Tanh_3Tanh#auto_regressive/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ І
auto_regressive/lstm_cell/mul_5Mul'auto_regressive/lstm_cell/Sigmoid_5:y:0$auto_regressive/lstm_cell/Tanh_3:y:0*
T0*'
_output_shapes
:€€€€€€€€€ ¶
/auto_regressive/dense_8/MatMul_2/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0Ї
 auto_regressive/dense_8/MatMul_2MatMul#auto_regressive/lstm_cell/mul_5:z:07auto_regressive/dense_8/MatMul_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	§
0auto_regressive/dense_8/BiasAdd_2/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0ƒ
!auto_regressive/dense_8/BiasAdd_2BiasAdd*auto_regressive/dense_8/MatMul_2:product:08auto_regressive/dense_8/BiasAdd_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	ѓ
1auto_regressive/lstm_cell/MatMul_4/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0∆
"auto_regressive/lstm_cell/MatMul_4MatMul*auto_regressive/dense_8/BiasAdd_2:output:09auto_regressive/lstm_cell/MatMul_4/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А±
1auto_regressive/lstm_cell/MatMul_5/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0њ
"auto_regressive/lstm_cell/MatMul_5MatMul#auto_regressive/lstm_cell/mul_5:z:09auto_regressive/lstm_cell/MatMul_5/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЈ
auto_regressive/lstm_cell/add_4AddV2,auto_regressive/lstm_cell/MatMul_4:product:0,auto_regressive/lstm_cell/MatMul_5:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≠
2auto_regressive/lstm_cell/BiasAdd_2/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0¬
#auto_regressive/lstm_cell/BiasAdd_2BiasAdd#auto_regressive/lstm_cell/add_4:z:0:auto_regressive/lstm_cell/BiasAdd_2/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аm
+auto_regressive/lstm_cell/split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
!auto_regressive/lstm_cell/split_2Split4auto_regressive/lstm_cell/split_2/split_dim:output:0,auto_regressive/lstm_cell/BiasAdd_2:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitМ
#auto_regressive/lstm_cell/Sigmoid_6Sigmoid*auto_regressive/lstm_cell/split_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€ М
#auto_regressive/lstm_cell/Sigmoid_7Sigmoid*auto_regressive/lstm_cell/split_2:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ¶
auto_regressive/lstm_cell/mul_6Mul'auto_regressive/lstm_cell/Sigmoid_7:y:0#auto_regressive/lstm_cell/add_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Ж
 auto_regressive/lstm_cell/Tanh_4Tanh*auto_regressive/lstm_cell/split_2:output:2*
T0*'
_output_shapes
:€€€€€€€€€ І
auto_regressive/lstm_cell/mul_7Mul'auto_regressive/lstm_cell/Sigmoid_6:y:0$auto_regressive/lstm_cell/Tanh_4:y:0*
T0*'
_output_shapes
:€€€€€€€€€ §
auto_regressive/lstm_cell/add_5AddV2#auto_regressive/lstm_cell/mul_6:z:0#auto_regressive/lstm_cell/mul_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€ М
#auto_regressive/lstm_cell/Sigmoid_8Sigmoid*auto_regressive/lstm_cell/split_2:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 
 auto_regressive/lstm_cell/Tanh_5Tanh#auto_regressive/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:€€€€€€€€€ І
auto_regressive/lstm_cell/mul_8Mul'auto_regressive/lstm_cell/Sigmoid_8:y:0$auto_regressive/lstm_cell/Tanh_5:y:0*
T0*'
_output_shapes
:€€€€€€€€€ ¶
/auto_regressive/dense_8/MatMul_3/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0Ї
 auto_regressive/dense_8/MatMul_3MatMul#auto_regressive/lstm_cell/mul_8:z:07auto_regressive/dense_8/MatMul_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	§
0auto_regressive/dense_8/BiasAdd_3/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0ƒ
!auto_regressive/dense_8/BiasAdd_3BiasAdd*auto_regressive/dense_8/MatMul_3:product:08auto_regressive/dense_8/BiasAdd_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	ѓ
1auto_regressive/lstm_cell/MatMul_6/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0∆
"auto_regressive/lstm_cell/MatMul_6MatMul*auto_regressive/dense_8/BiasAdd_3:output:09auto_regressive/lstm_cell/MatMul_6/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А±
1auto_regressive/lstm_cell/MatMul_7/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0њ
"auto_regressive/lstm_cell/MatMul_7MatMul#auto_regressive/lstm_cell/mul_8:z:09auto_regressive/lstm_cell/MatMul_7/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЈ
auto_regressive/lstm_cell/add_6AddV2,auto_regressive/lstm_cell/MatMul_6:product:0,auto_regressive/lstm_cell/MatMul_7:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≠
2auto_regressive/lstm_cell/BiasAdd_3/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0¬
#auto_regressive/lstm_cell/BiasAdd_3BiasAdd#auto_regressive/lstm_cell/add_6:z:0:auto_regressive/lstm_cell/BiasAdd_3/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аm
+auto_regressive/lstm_cell/split_3/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
!auto_regressive/lstm_cell/split_3Split4auto_regressive/lstm_cell/split_3/split_dim:output:0,auto_regressive/lstm_cell/BiasAdd_3:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitМ
#auto_regressive/lstm_cell/Sigmoid_9Sigmoid*auto_regressive/lstm_cell/split_3:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Н
$auto_regressive/lstm_cell/Sigmoid_10Sigmoid*auto_regressive/lstm_cell/split_3:output:1*
T0*'
_output_shapes
:€€€€€€€€€ І
auto_regressive/lstm_cell/mul_9Mul(auto_regressive/lstm_cell/Sigmoid_10:y:0#auto_regressive/lstm_cell/add_5:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Ж
 auto_regressive/lstm_cell/Tanh_6Tanh*auto_regressive/lstm_cell/split_3:output:2*
T0*'
_output_shapes
:€€€€€€€€€ ®
 auto_regressive/lstm_cell/mul_10Mul'auto_regressive/lstm_cell/Sigmoid_9:y:0$auto_regressive/lstm_cell/Tanh_6:y:0*
T0*'
_output_shapes
:€€€€€€€€€ •
auto_regressive/lstm_cell/add_7AddV2#auto_regressive/lstm_cell/mul_9:z:0$auto_regressive/lstm_cell/mul_10:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Н
$auto_regressive/lstm_cell/Sigmoid_11Sigmoid*auto_regressive/lstm_cell/split_3:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 
 auto_regressive/lstm_cell/Tanh_7Tanh#auto_regressive/lstm_cell/add_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ©
 auto_regressive/lstm_cell/mul_11Mul(auto_regressive/lstm_cell/Sigmoid_11:y:0$auto_regressive/lstm_cell/Tanh_7:y:0*
T0*'
_output_shapes
:€€€€€€€€€ ¶
/auto_regressive/dense_8/MatMul_4/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0ї
 auto_regressive/dense_8/MatMul_4MatMul$auto_regressive/lstm_cell/mul_11:z:07auto_regressive/dense_8/MatMul_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	§
0auto_regressive/dense_8/BiasAdd_4/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0ƒ
!auto_regressive/dense_8/BiasAdd_4BiasAdd*auto_regressive/dense_8/MatMul_4:product:08auto_regressive/dense_8/BiasAdd_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	ѓ
1auto_regressive/lstm_cell/MatMul_8/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0∆
"auto_regressive/lstm_cell/MatMul_8MatMul*auto_regressive/dense_8/BiasAdd_4:output:09auto_regressive/lstm_cell/MatMul_8/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А±
1auto_regressive/lstm_cell/MatMul_9/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0ј
"auto_regressive/lstm_cell/MatMul_9MatMul$auto_regressive/lstm_cell/mul_11:z:09auto_regressive/lstm_cell/MatMul_9/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЈ
auto_regressive/lstm_cell/add_8AddV2,auto_regressive/lstm_cell/MatMul_8:product:0,auto_regressive/lstm_cell/MatMul_9:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≠
2auto_regressive/lstm_cell/BiasAdd_4/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0¬
#auto_regressive/lstm_cell/BiasAdd_4BiasAdd#auto_regressive/lstm_cell/add_8:z:0:auto_regressive/lstm_cell/BiasAdd_4/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аm
+auto_regressive/lstm_cell/split_4/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
!auto_regressive/lstm_cell/split_4Split4auto_regressive/lstm_cell/split_4/split_dim:output:0,auto_regressive/lstm_cell/BiasAdd_4:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitН
$auto_regressive/lstm_cell/Sigmoid_12Sigmoid*auto_regressive/lstm_cell/split_4:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Н
$auto_regressive/lstm_cell/Sigmoid_13Sigmoid*auto_regressive/lstm_cell/split_4:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ®
 auto_regressive/lstm_cell/mul_12Mul(auto_regressive/lstm_cell/Sigmoid_13:y:0#auto_regressive/lstm_cell/add_7:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Ж
 auto_regressive/lstm_cell/Tanh_8Tanh*auto_regressive/lstm_cell/split_4:output:2*
T0*'
_output_shapes
:€€€€€€€€€ ©
 auto_regressive/lstm_cell/mul_13Mul(auto_regressive/lstm_cell/Sigmoid_12:y:0$auto_regressive/lstm_cell/Tanh_8:y:0*
T0*'
_output_shapes
:€€€€€€€€€ ¶
auto_regressive/lstm_cell/add_9AddV2$auto_regressive/lstm_cell/mul_12:z:0$auto_regressive/lstm_cell/mul_13:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Н
$auto_regressive/lstm_cell/Sigmoid_14Sigmoid*auto_regressive/lstm_cell/split_4:output:3*
T0*'
_output_shapes
:€€€€€€€€€ 
 auto_regressive/lstm_cell/Tanh_9Tanh#auto_regressive/lstm_cell/add_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ©
 auto_regressive/lstm_cell/mul_14Mul(auto_regressive/lstm_cell/Sigmoid_14:y:0$auto_regressive/lstm_cell/Tanh_9:y:0*
T0*'
_output_shapes
:€€€€€€€€€ ¶
/auto_regressive/dense_8/MatMul_5/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0ї
 auto_regressive/dense_8/MatMul_5MatMul$auto_regressive/lstm_cell/mul_14:z:07auto_regressive/dense_8/MatMul_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	§
0auto_regressive/dense_8/BiasAdd_5/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0ƒ
!auto_regressive/dense_8/BiasAdd_5BiasAdd*auto_regressive/dense_8/MatMul_5:product:08auto_regressive/dense_8/BiasAdd_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	∞
2auto_regressive/lstm_cell/MatMul_10/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0»
#auto_regressive/lstm_cell/MatMul_10MatMul*auto_regressive/dense_8/BiasAdd_5:output:0:auto_regressive/lstm_cell/MatMul_10/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
2auto_regressive/lstm_cell/MatMul_11/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0¬
#auto_regressive/lstm_cell/MatMul_11MatMul$auto_regressive/lstm_cell/mul_14:z:0:auto_regressive/lstm_cell/MatMul_11/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
 auto_regressive/lstm_cell/add_10AddV2-auto_regressive/lstm_cell/MatMul_10:product:0-auto_regressive/lstm_cell/MatMul_11:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≠
2auto_regressive/lstm_cell/BiasAdd_5/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0√
#auto_regressive/lstm_cell/BiasAdd_5BiasAdd$auto_regressive/lstm_cell/add_10:z:0:auto_regressive/lstm_cell/BiasAdd_5/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аm
+auto_regressive/lstm_cell/split_5/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
!auto_regressive/lstm_cell/split_5Split4auto_regressive/lstm_cell/split_5/split_dim:output:0,auto_regressive/lstm_cell/BiasAdd_5:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitН
$auto_regressive/lstm_cell/Sigmoid_15Sigmoid*auto_regressive/lstm_cell/split_5:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Н
$auto_regressive/lstm_cell/Sigmoid_16Sigmoid*auto_regressive/lstm_cell/split_5:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ®
 auto_regressive/lstm_cell/mul_15Mul(auto_regressive/lstm_cell/Sigmoid_16:y:0#auto_regressive/lstm_cell/add_9:z:0*
T0*'
_output_shapes
:€€€€€€€€€ З
!auto_regressive/lstm_cell/Tanh_10Tanh*auto_regressive/lstm_cell/split_5:output:2*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_16Mul(auto_regressive/lstm_cell/Sigmoid_15:y:0%auto_regressive/lstm_cell/Tanh_10:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
 auto_regressive/lstm_cell/add_11AddV2$auto_regressive/lstm_cell/mul_15:z:0$auto_regressive/lstm_cell/mul_16:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Н
$auto_regressive/lstm_cell/Sigmoid_17Sigmoid*auto_regressive/lstm_cell/split_5:output:3*
T0*'
_output_shapes
:€€€€€€€€€ Б
!auto_regressive/lstm_cell/Tanh_11Tanh$auto_regressive/lstm_cell/add_11:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_17Mul(auto_regressive/lstm_cell/Sigmoid_17:y:0%auto_regressive/lstm_cell/Tanh_11:y:0*
T0*'
_output_shapes
:€€€€€€€€€ ¶
/auto_regressive/dense_8/MatMul_6/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0ї
 auto_regressive/dense_8/MatMul_6MatMul$auto_regressive/lstm_cell/mul_17:z:07auto_regressive/dense_8/MatMul_6/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	§
0auto_regressive/dense_8/BiasAdd_6/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0ƒ
!auto_regressive/dense_8/BiasAdd_6BiasAdd*auto_regressive/dense_8/MatMul_6:product:08auto_regressive/dense_8/BiasAdd_6/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	∞
2auto_regressive/lstm_cell/MatMul_12/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0»
#auto_regressive/lstm_cell/MatMul_12MatMul*auto_regressive/dense_8/BiasAdd_6:output:0:auto_regressive/lstm_cell/MatMul_12/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
2auto_regressive/lstm_cell/MatMul_13/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0¬
#auto_regressive/lstm_cell/MatMul_13MatMul$auto_regressive/lstm_cell/mul_17:z:0:auto_regressive/lstm_cell/MatMul_13/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
 auto_regressive/lstm_cell/add_12AddV2-auto_regressive/lstm_cell/MatMul_12:product:0-auto_regressive/lstm_cell/MatMul_13:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≠
2auto_regressive/lstm_cell/BiasAdd_6/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0√
#auto_regressive/lstm_cell/BiasAdd_6BiasAdd$auto_regressive/lstm_cell/add_12:z:0:auto_regressive/lstm_cell/BiasAdd_6/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аm
+auto_regressive/lstm_cell/split_6/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
!auto_regressive/lstm_cell/split_6Split4auto_regressive/lstm_cell/split_6/split_dim:output:0,auto_regressive/lstm_cell/BiasAdd_6:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitН
$auto_regressive/lstm_cell/Sigmoid_18Sigmoid*auto_regressive/lstm_cell/split_6:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Н
$auto_regressive/lstm_cell/Sigmoid_19Sigmoid*auto_regressive/lstm_cell/split_6:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ©
 auto_regressive/lstm_cell/mul_18Mul(auto_regressive/lstm_cell/Sigmoid_19:y:0$auto_regressive/lstm_cell/add_11:z:0*
T0*'
_output_shapes
:€€€€€€€€€ З
!auto_regressive/lstm_cell/Tanh_12Tanh*auto_regressive/lstm_cell/split_6:output:2*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_19Mul(auto_regressive/lstm_cell/Sigmoid_18:y:0%auto_regressive/lstm_cell/Tanh_12:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
 auto_regressive/lstm_cell/add_13AddV2$auto_regressive/lstm_cell/mul_18:z:0$auto_regressive/lstm_cell/mul_19:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Н
$auto_regressive/lstm_cell/Sigmoid_20Sigmoid*auto_regressive/lstm_cell/split_6:output:3*
T0*'
_output_shapes
:€€€€€€€€€ Б
!auto_regressive/lstm_cell/Tanh_13Tanh$auto_regressive/lstm_cell/add_13:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_20Mul(auto_regressive/lstm_cell/Sigmoid_20:y:0%auto_regressive/lstm_cell/Tanh_13:y:0*
T0*'
_output_shapes
:€€€€€€€€€ ¶
/auto_regressive/dense_8/MatMul_7/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0ї
 auto_regressive/dense_8/MatMul_7MatMul$auto_regressive/lstm_cell/mul_20:z:07auto_regressive/dense_8/MatMul_7/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	§
0auto_regressive/dense_8/BiasAdd_7/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0ƒ
!auto_regressive/dense_8/BiasAdd_7BiasAdd*auto_regressive/dense_8/MatMul_7:product:08auto_regressive/dense_8/BiasAdd_7/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	∞
2auto_regressive/lstm_cell/MatMul_14/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0»
#auto_regressive/lstm_cell/MatMul_14MatMul*auto_regressive/dense_8/BiasAdd_7:output:0:auto_regressive/lstm_cell/MatMul_14/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
2auto_regressive/lstm_cell/MatMul_15/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0¬
#auto_regressive/lstm_cell/MatMul_15MatMul$auto_regressive/lstm_cell/mul_20:z:0:auto_regressive/lstm_cell/MatMul_15/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
 auto_regressive/lstm_cell/add_14AddV2-auto_regressive/lstm_cell/MatMul_14:product:0-auto_regressive/lstm_cell/MatMul_15:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≠
2auto_regressive/lstm_cell/BiasAdd_7/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0√
#auto_regressive/lstm_cell/BiasAdd_7BiasAdd$auto_regressive/lstm_cell/add_14:z:0:auto_regressive/lstm_cell/BiasAdd_7/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аm
+auto_regressive/lstm_cell/split_7/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
!auto_regressive/lstm_cell/split_7Split4auto_regressive/lstm_cell/split_7/split_dim:output:0,auto_regressive/lstm_cell/BiasAdd_7:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitН
$auto_regressive/lstm_cell/Sigmoid_21Sigmoid*auto_regressive/lstm_cell/split_7:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Н
$auto_regressive/lstm_cell/Sigmoid_22Sigmoid*auto_regressive/lstm_cell/split_7:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ©
 auto_regressive/lstm_cell/mul_21Mul(auto_regressive/lstm_cell/Sigmoid_22:y:0$auto_regressive/lstm_cell/add_13:z:0*
T0*'
_output_shapes
:€€€€€€€€€ З
!auto_regressive/lstm_cell/Tanh_14Tanh*auto_regressive/lstm_cell/split_7:output:2*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_22Mul(auto_regressive/lstm_cell/Sigmoid_21:y:0%auto_regressive/lstm_cell/Tanh_14:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
 auto_regressive/lstm_cell/add_15AddV2$auto_regressive/lstm_cell/mul_21:z:0$auto_regressive/lstm_cell/mul_22:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Н
$auto_regressive/lstm_cell/Sigmoid_23Sigmoid*auto_regressive/lstm_cell/split_7:output:3*
T0*'
_output_shapes
:€€€€€€€€€ Б
!auto_regressive/lstm_cell/Tanh_15Tanh$auto_regressive/lstm_cell/add_15:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_23Mul(auto_regressive/lstm_cell/Sigmoid_23:y:0%auto_regressive/lstm_cell/Tanh_15:y:0*
T0*'
_output_shapes
:€€€€€€€€€ ¶
/auto_regressive/dense_8/MatMul_8/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0ї
 auto_regressive/dense_8/MatMul_8MatMul$auto_regressive/lstm_cell/mul_23:z:07auto_regressive/dense_8/MatMul_8/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	§
0auto_regressive/dense_8/BiasAdd_8/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0ƒ
!auto_regressive/dense_8/BiasAdd_8BiasAdd*auto_regressive/dense_8/MatMul_8:product:08auto_regressive/dense_8/BiasAdd_8/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	∞
2auto_regressive/lstm_cell/MatMul_16/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0»
#auto_regressive/lstm_cell/MatMul_16MatMul*auto_regressive/dense_8/BiasAdd_8:output:0:auto_regressive/lstm_cell/MatMul_16/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
2auto_regressive/lstm_cell/MatMul_17/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0¬
#auto_regressive/lstm_cell/MatMul_17MatMul$auto_regressive/lstm_cell/mul_23:z:0:auto_regressive/lstm_cell/MatMul_17/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
 auto_regressive/lstm_cell/add_16AddV2-auto_regressive/lstm_cell/MatMul_16:product:0-auto_regressive/lstm_cell/MatMul_17:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≠
2auto_regressive/lstm_cell/BiasAdd_8/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0√
#auto_regressive/lstm_cell/BiasAdd_8BiasAdd$auto_regressive/lstm_cell/add_16:z:0:auto_regressive/lstm_cell/BiasAdd_8/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аm
+auto_regressive/lstm_cell/split_8/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
!auto_regressive/lstm_cell/split_8Split4auto_regressive/lstm_cell/split_8/split_dim:output:0,auto_regressive/lstm_cell/BiasAdd_8:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitН
$auto_regressive/lstm_cell/Sigmoid_24Sigmoid*auto_regressive/lstm_cell/split_8:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Н
$auto_regressive/lstm_cell/Sigmoid_25Sigmoid*auto_regressive/lstm_cell/split_8:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ©
 auto_regressive/lstm_cell/mul_24Mul(auto_regressive/lstm_cell/Sigmoid_25:y:0$auto_regressive/lstm_cell/add_15:z:0*
T0*'
_output_shapes
:€€€€€€€€€ З
!auto_regressive/lstm_cell/Tanh_16Tanh*auto_regressive/lstm_cell/split_8:output:2*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_25Mul(auto_regressive/lstm_cell/Sigmoid_24:y:0%auto_regressive/lstm_cell/Tanh_16:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
 auto_regressive/lstm_cell/add_17AddV2$auto_regressive/lstm_cell/mul_24:z:0$auto_regressive/lstm_cell/mul_25:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Н
$auto_regressive/lstm_cell/Sigmoid_26Sigmoid*auto_regressive/lstm_cell/split_8:output:3*
T0*'
_output_shapes
:€€€€€€€€€ Б
!auto_regressive/lstm_cell/Tanh_17Tanh$auto_regressive/lstm_cell/add_17:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_26Mul(auto_regressive/lstm_cell/Sigmoid_26:y:0%auto_regressive/lstm_cell/Tanh_17:y:0*
T0*'
_output_shapes
:€€€€€€€€€ ¶
/auto_regressive/dense_8/MatMul_9/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0ї
 auto_regressive/dense_8/MatMul_9MatMul$auto_regressive/lstm_cell/mul_26:z:07auto_regressive/dense_8/MatMul_9/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	§
0auto_regressive/dense_8/BiasAdd_9/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0ƒ
!auto_regressive/dense_8/BiasAdd_9BiasAdd*auto_regressive/dense_8/MatMul_9:product:08auto_regressive/dense_8/BiasAdd_9/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	∞
2auto_regressive/lstm_cell/MatMul_18/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0»
#auto_regressive/lstm_cell/MatMul_18MatMul*auto_regressive/dense_8/BiasAdd_9:output:0:auto_regressive/lstm_cell/MatMul_18/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
2auto_regressive/lstm_cell/MatMul_19/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0¬
#auto_regressive/lstm_cell/MatMul_19MatMul$auto_regressive/lstm_cell/mul_26:z:0:auto_regressive/lstm_cell/MatMul_19/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
 auto_regressive/lstm_cell/add_18AddV2-auto_regressive/lstm_cell/MatMul_18:product:0-auto_regressive/lstm_cell/MatMul_19:product:0*
T0*(
_output_shapes
:€€€€€€€€€А≠
2auto_regressive/lstm_cell/BiasAdd_9/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0√
#auto_regressive/lstm_cell/BiasAdd_9BiasAdd$auto_regressive/lstm_cell/add_18:z:0:auto_regressive/lstm_cell/BiasAdd_9/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аm
+auto_regressive/lstm_cell/split_9/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
!auto_regressive/lstm_cell/split_9Split4auto_regressive/lstm_cell/split_9/split_dim:output:0,auto_regressive/lstm_cell/BiasAdd_9:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitН
$auto_regressive/lstm_cell/Sigmoid_27Sigmoid*auto_regressive/lstm_cell/split_9:output:0*
T0*'
_output_shapes
:€€€€€€€€€ Н
$auto_regressive/lstm_cell/Sigmoid_28Sigmoid*auto_regressive/lstm_cell/split_9:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ©
 auto_regressive/lstm_cell/mul_27Mul(auto_regressive/lstm_cell/Sigmoid_28:y:0$auto_regressive/lstm_cell/add_17:z:0*
T0*'
_output_shapes
:€€€€€€€€€ З
!auto_regressive/lstm_cell/Tanh_18Tanh*auto_regressive/lstm_cell/split_9:output:2*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_28Mul(auto_regressive/lstm_cell/Sigmoid_27:y:0%auto_regressive/lstm_cell/Tanh_18:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
 auto_regressive/lstm_cell/add_19AddV2$auto_regressive/lstm_cell/mul_27:z:0$auto_regressive/lstm_cell/mul_28:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Н
$auto_regressive/lstm_cell/Sigmoid_29Sigmoid*auto_regressive/lstm_cell/split_9:output:3*
T0*'
_output_shapes
:€€€€€€€€€ Б
!auto_regressive/lstm_cell/Tanh_19Tanh$auto_regressive/lstm_cell/add_19:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_29Mul(auto_regressive/lstm_cell/Sigmoid_29:y:0%auto_regressive/lstm_cell/Tanh_19:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
0auto_regressive/dense_8/MatMul_10/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0љ
!auto_regressive/dense_8/MatMul_10MatMul$auto_regressive/lstm_cell/mul_29:z:08auto_regressive/dense_8/MatMul_10/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	•
1auto_regressive/dense_8/BiasAdd_10/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0«
"auto_regressive/dense_8/BiasAdd_10BiasAdd+auto_regressive/dense_8/MatMul_10:product:09auto_regressive/dense_8/BiasAdd_10/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	∞
2auto_regressive/lstm_cell/MatMul_20/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0…
#auto_regressive/lstm_cell/MatMul_20MatMul+auto_regressive/dense_8/BiasAdd_10:output:0:auto_regressive/lstm_cell/MatMul_20/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
2auto_regressive/lstm_cell/MatMul_21/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0¬
#auto_regressive/lstm_cell/MatMul_21MatMul$auto_regressive/lstm_cell/mul_29:z:0:auto_regressive/lstm_cell/MatMul_21/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
 auto_regressive/lstm_cell/add_20AddV2-auto_regressive/lstm_cell/MatMul_20:product:0-auto_regressive/lstm_cell/MatMul_21:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
3auto_regressive/lstm_cell/BiasAdd_10/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0≈
$auto_regressive/lstm_cell/BiasAdd_10BiasAdd$auto_regressive/lstm_cell/add_20:z:0;auto_regressive/lstm_cell/BiasAdd_10/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
,auto_regressive/lstm_cell/split_10/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Н
"auto_regressive/lstm_cell/split_10Split5auto_regressive/lstm_cell/split_10/split_dim:output:0-auto_regressive/lstm_cell/BiasAdd_10:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitО
$auto_regressive/lstm_cell/Sigmoid_30Sigmoid+auto_regressive/lstm_cell/split_10:output:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_31Sigmoid+auto_regressive/lstm_cell/split_10:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ©
 auto_regressive/lstm_cell/mul_30Mul(auto_regressive/lstm_cell/Sigmoid_31:y:0$auto_regressive/lstm_cell/add_19:z:0*
T0*'
_output_shapes
:€€€€€€€€€ И
!auto_regressive/lstm_cell/Tanh_20Tanh+auto_regressive/lstm_cell/split_10:output:2*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_31Mul(auto_regressive/lstm_cell/Sigmoid_30:y:0%auto_regressive/lstm_cell/Tanh_20:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
 auto_regressive/lstm_cell/add_21AddV2$auto_regressive/lstm_cell/mul_30:z:0$auto_regressive/lstm_cell/mul_31:z:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_32Sigmoid+auto_regressive/lstm_cell/split_10:output:3*
T0*'
_output_shapes
:€€€€€€€€€ Б
!auto_regressive/lstm_cell/Tanh_21Tanh$auto_regressive/lstm_cell/add_21:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_32Mul(auto_regressive/lstm_cell/Sigmoid_32:y:0%auto_regressive/lstm_cell/Tanh_21:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
0auto_regressive/dense_8/MatMul_11/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0љ
!auto_regressive/dense_8/MatMul_11MatMul$auto_regressive/lstm_cell/mul_32:z:08auto_regressive/dense_8/MatMul_11/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	•
1auto_regressive/dense_8/BiasAdd_11/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0«
"auto_regressive/dense_8/BiasAdd_11BiasAdd+auto_regressive/dense_8/MatMul_11:product:09auto_regressive/dense_8/BiasAdd_11/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	∞
2auto_regressive/lstm_cell/MatMul_22/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0…
#auto_regressive/lstm_cell/MatMul_22MatMul+auto_regressive/dense_8/BiasAdd_11:output:0:auto_regressive/lstm_cell/MatMul_22/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
2auto_regressive/lstm_cell/MatMul_23/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0¬
#auto_regressive/lstm_cell/MatMul_23MatMul$auto_regressive/lstm_cell/mul_32:z:0:auto_regressive/lstm_cell/MatMul_23/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
 auto_regressive/lstm_cell/add_22AddV2-auto_regressive/lstm_cell/MatMul_22:product:0-auto_regressive/lstm_cell/MatMul_23:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
3auto_regressive/lstm_cell/BiasAdd_11/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0≈
$auto_regressive/lstm_cell/BiasAdd_11BiasAdd$auto_regressive/lstm_cell/add_22:z:0;auto_regressive/lstm_cell/BiasAdd_11/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
,auto_regressive/lstm_cell/split_11/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Н
"auto_regressive/lstm_cell/split_11Split5auto_regressive/lstm_cell/split_11/split_dim:output:0-auto_regressive/lstm_cell/BiasAdd_11:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitО
$auto_regressive/lstm_cell/Sigmoid_33Sigmoid+auto_regressive/lstm_cell/split_11:output:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_34Sigmoid+auto_regressive/lstm_cell/split_11:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ©
 auto_regressive/lstm_cell/mul_33Mul(auto_regressive/lstm_cell/Sigmoid_34:y:0$auto_regressive/lstm_cell/add_21:z:0*
T0*'
_output_shapes
:€€€€€€€€€ И
!auto_regressive/lstm_cell/Tanh_22Tanh+auto_regressive/lstm_cell/split_11:output:2*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_34Mul(auto_regressive/lstm_cell/Sigmoid_33:y:0%auto_regressive/lstm_cell/Tanh_22:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
 auto_regressive/lstm_cell/add_23AddV2$auto_regressive/lstm_cell/mul_33:z:0$auto_regressive/lstm_cell/mul_34:z:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_35Sigmoid+auto_regressive/lstm_cell/split_11:output:3*
T0*'
_output_shapes
:€€€€€€€€€ Б
!auto_regressive/lstm_cell/Tanh_23Tanh$auto_regressive/lstm_cell/add_23:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_35Mul(auto_regressive/lstm_cell/Sigmoid_35:y:0%auto_regressive/lstm_cell/Tanh_23:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
0auto_regressive/dense_8/MatMul_12/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0љ
!auto_regressive/dense_8/MatMul_12MatMul$auto_regressive/lstm_cell/mul_35:z:08auto_regressive/dense_8/MatMul_12/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	•
1auto_regressive/dense_8/BiasAdd_12/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0«
"auto_regressive/dense_8/BiasAdd_12BiasAdd+auto_regressive/dense_8/MatMul_12:product:09auto_regressive/dense_8/BiasAdd_12/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	∞
2auto_regressive/lstm_cell/MatMul_24/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0…
#auto_regressive/lstm_cell/MatMul_24MatMul+auto_regressive/dense_8/BiasAdd_12:output:0:auto_regressive/lstm_cell/MatMul_24/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
2auto_regressive/lstm_cell/MatMul_25/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0¬
#auto_regressive/lstm_cell/MatMul_25MatMul$auto_regressive/lstm_cell/mul_35:z:0:auto_regressive/lstm_cell/MatMul_25/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
 auto_regressive/lstm_cell/add_24AddV2-auto_regressive/lstm_cell/MatMul_24:product:0-auto_regressive/lstm_cell/MatMul_25:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
3auto_regressive/lstm_cell/BiasAdd_12/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0≈
$auto_regressive/lstm_cell/BiasAdd_12BiasAdd$auto_regressive/lstm_cell/add_24:z:0;auto_regressive/lstm_cell/BiasAdd_12/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
,auto_regressive/lstm_cell/split_12/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Н
"auto_regressive/lstm_cell/split_12Split5auto_regressive/lstm_cell/split_12/split_dim:output:0-auto_regressive/lstm_cell/BiasAdd_12:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitО
$auto_regressive/lstm_cell/Sigmoid_36Sigmoid+auto_regressive/lstm_cell/split_12:output:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_37Sigmoid+auto_regressive/lstm_cell/split_12:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ©
 auto_regressive/lstm_cell/mul_36Mul(auto_regressive/lstm_cell/Sigmoid_37:y:0$auto_regressive/lstm_cell/add_23:z:0*
T0*'
_output_shapes
:€€€€€€€€€ И
!auto_regressive/lstm_cell/Tanh_24Tanh+auto_regressive/lstm_cell/split_12:output:2*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_37Mul(auto_regressive/lstm_cell/Sigmoid_36:y:0%auto_regressive/lstm_cell/Tanh_24:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
 auto_regressive/lstm_cell/add_25AddV2$auto_regressive/lstm_cell/mul_36:z:0$auto_regressive/lstm_cell/mul_37:z:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_38Sigmoid+auto_regressive/lstm_cell/split_12:output:3*
T0*'
_output_shapes
:€€€€€€€€€ Б
!auto_regressive/lstm_cell/Tanh_25Tanh$auto_regressive/lstm_cell/add_25:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_38Mul(auto_regressive/lstm_cell/Sigmoid_38:y:0%auto_regressive/lstm_cell/Tanh_25:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
0auto_regressive/dense_8/MatMul_13/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0љ
!auto_regressive/dense_8/MatMul_13MatMul$auto_regressive/lstm_cell/mul_38:z:08auto_regressive/dense_8/MatMul_13/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	•
1auto_regressive/dense_8/BiasAdd_13/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0«
"auto_regressive/dense_8/BiasAdd_13BiasAdd+auto_regressive/dense_8/MatMul_13:product:09auto_regressive/dense_8/BiasAdd_13/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	∞
2auto_regressive/lstm_cell/MatMul_26/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0…
#auto_regressive/lstm_cell/MatMul_26MatMul+auto_regressive/dense_8/BiasAdd_13:output:0:auto_regressive/lstm_cell/MatMul_26/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
2auto_regressive/lstm_cell/MatMul_27/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0¬
#auto_regressive/lstm_cell/MatMul_27MatMul$auto_regressive/lstm_cell/mul_38:z:0:auto_regressive/lstm_cell/MatMul_27/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
 auto_regressive/lstm_cell/add_26AddV2-auto_regressive/lstm_cell/MatMul_26:product:0-auto_regressive/lstm_cell/MatMul_27:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
3auto_regressive/lstm_cell/BiasAdd_13/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0≈
$auto_regressive/lstm_cell/BiasAdd_13BiasAdd$auto_regressive/lstm_cell/add_26:z:0;auto_regressive/lstm_cell/BiasAdd_13/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
,auto_regressive/lstm_cell/split_13/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Н
"auto_regressive/lstm_cell/split_13Split5auto_regressive/lstm_cell/split_13/split_dim:output:0-auto_regressive/lstm_cell/BiasAdd_13:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitО
$auto_regressive/lstm_cell/Sigmoid_39Sigmoid+auto_regressive/lstm_cell/split_13:output:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_40Sigmoid+auto_regressive/lstm_cell/split_13:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ©
 auto_regressive/lstm_cell/mul_39Mul(auto_regressive/lstm_cell/Sigmoid_40:y:0$auto_regressive/lstm_cell/add_25:z:0*
T0*'
_output_shapes
:€€€€€€€€€ И
!auto_regressive/lstm_cell/Tanh_26Tanh+auto_regressive/lstm_cell/split_13:output:2*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_40Mul(auto_regressive/lstm_cell/Sigmoid_39:y:0%auto_regressive/lstm_cell/Tanh_26:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
 auto_regressive/lstm_cell/add_27AddV2$auto_regressive/lstm_cell/mul_39:z:0$auto_regressive/lstm_cell/mul_40:z:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_41Sigmoid+auto_regressive/lstm_cell/split_13:output:3*
T0*'
_output_shapes
:€€€€€€€€€ Б
!auto_regressive/lstm_cell/Tanh_27Tanh$auto_regressive/lstm_cell/add_27:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_41Mul(auto_regressive/lstm_cell/Sigmoid_41:y:0%auto_regressive/lstm_cell/Tanh_27:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
0auto_regressive/dense_8/MatMul_14/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0љ
!auto_regressive/dense_8/MatMul_14MatMul$auto_regressive/lstm_cell/mul_41:z:08auto_regressive/dense_8/MatMul_14/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	•
1auto_regressive/dense_8/BiasAdd_14/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0«
"auto_regressive/dense_8/BiasAdd_14BiasAdd+auto_regressive/dense_8/MatMul_14:product:09auto_regressive/dense_8/BiasAdd_14/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	∞
2auto_regressive/lstm_cell/MatMul_28/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0…
#auto_regressive/lstm_cell/MatMul_28MatMul+auto_regressive/dense_8/BiasAdd_14:output:0:auto_regressive/lstm_cell/MatMul_28/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
2auto_regressive/lstm_cell/MatMul_29/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0¬
#auto_regressive/lstm_cell/MatMul_29MatMul$auto_regressive/lstm_cell/mul_41:z:0:auto_regressive/lstm_cell/MatMul_29/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
 auto_regressive/lstm_cell/add_28AddV2-auto_regressive/lstm_cell/MatMul_28:product:0-auto_regressive/lstm_cell/MatMul_29:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
3auto_regressive/lstm_cell/BiasAdd_14/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0≈
$auto_regressive/lstm_cell/BiasAdd_14BiasAdd$auto_regressive/lstm_cell/add_28:z:0;auto_regressive/lstm_cell/BiasAdd_14/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
,auto_regressive/lstm_cell/split_14/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Н
"auto_regressive/lstm_cell/split_14Split5auto_regressive/lstm_cell/split_14/split_dim:output:0-auto_regressive/lstm_cell/BiasAdd_14:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitО
$auto_regressive/lstm_cell/Sigmoid_42Sigmoid+auto_regressive/lstm_cell/split_14:output:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_43Sigmoid+auto_regressive/lstm_cell/split_14:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ©
 auto_regressive/lstm_cell/mul_42Mul(auto_regressive/lstm_cell/Sigmoid_43:y:0$auto_regressive/lstm_cell/add_27:z:0*
T0*'
_output_shapes
:€€€€€€€€€ И
!auto_regressive/lstm_cell/Tanh_28Tanh+auto_regressive/lstm_cell/split_14:output:2*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_43Mul(auto_regressive/lstm_cell/Sigmoid_42:y:0%auto_regressive/lstm_cell/Tanh_28:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
 auto_regressive/lstm_cell/add_29AddV2$auto_regressive/lstm_cell/mul_42:z:0$auto_regressive/lstm_cell/mul_43:z:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_44Sigmoid+auto_regressive/lstm_cell/split_14:output:3*
T0*'
_output_shapes
:€€€€€€€€€ Б
!auto_regressive/lstm_cell/Tanh_29Tanh$auto_regressive/lstm_cell/add_29:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_44Mul(auto_regressive/lstm_cell/Sigmoid_44:y:0%auto_regressive/lstm_cell/Tanh_29:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
0auto_regressive/dense_8/MatMul_15/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0љ
!auto_regressive/dense_8/MatMul_15MatMul$auto_regressive/lstm_cell/mul_44:z:08auto_regressive/dense_8/MatMul_15/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	•
1auto_regressive/dense_8/BiasAdd_15/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0«
"auto_regressive/dense_8/BiasAdd_15BiasAdd+auto_regressive/dense_8/MatMul_15:product:09auto_regressive/dense_8/BiasAdd_15/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	∞
2auto_regressive/lstm_cell/MatMul_30/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0…
#auto_regressive/lstm_cell/MatMul_30MatMul+auto_regressive/dense_8/BiasAdd_15:output:0:auto_regressive/lstm_cell/MatMul_30/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
2auto_regressive/lstm_cell/MatMul_31/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0¬
#auto_regressive/lstm_cell/MatMul_31MatMul$auto_regressive/lstm_cell/mul_44:z:0:auto_regressive/lstm_cell/MatMul_31/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
 auto_regressive/lstm_cell/add_30AddV2-auto_regressive/lstm_cell/MatMul_30:product:0-auto_regressive/lstm_cell/MatMul_31:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
3auto_regressive/lstm_cell/BiasAdd_15/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0≈
$auto_regressive/lstm_cell/BiasAdd_15BiasAdd$auto_regressive/lstm_cell/add_30:z:0;auto_regressive/lstm_cell/BiasAdd_15/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
,auto_regressive/lstm_cell/split_15/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Н
"auto_regressive/lstm_cell/split_15Split5auto_regressive/lstm_cell/split_15/split_dim:output:0-auto_regressive/lstm_cell/BiasAdd_15:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitО
$auto_regressive/lstm_cell/Sigmoid_45Sigmoid+auto_regressive/lstm_cell/split_15:output:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_46Sigmoid+auto_regressive/lstm_cell/split_15:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ©
 auto_regressive/lstm_cell/mul_45Mul(auto_regressive/lstm_cell/Sigmoid_46:y:0$auto_regressive/lstm_cell/add_29:z:0*
T0*'
_output_shapes
:€€€€€€€€€ И
!auto_regressive/lstm_cell/Tanh_30Tanh+auto_regressive/lstm_cell/split_15:output:2*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_46Mul(auto_regressive/lstm_cell/Sigmoid_45:y:0%auto_regressive/lstm_cell/Tanh_30:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
 auto_regressive/lstm_cell/add_31AddV2$auto_regressive/lstm_cell/mul_45:z:0$auto_regressive/lstm_cell/mul_46:z:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_47Sigmoid+auto_regressive/lstm_cell/split_15:output:3*
T0*'
_output_shapes
:€€€€€€€€€ Б
!auto_regressive/lstm_cell/Tanh_31Tanh$auto_regressive/lstm_cell/add_31:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_47Mul(auto_regressive/lstm_cell/Sigmoid_47:y:0%auto_regressive/lstm_cell/Tanh_31:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
0auto_regressive/dense_8/MatMul_16/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0љ
!auto_regressive/dense_8/MatMul_16MatMul$auto_regressive/lstm_cell/mul_47:z:08auto_regressive/dense_8/MatMul_16/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	•
1auto_regressive/dense_8/BiasAdd_16/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0«
"auto_regressive/dense_8/BiasAdd_16BiasAdd+auto_regressive/dense_8/MatMul_16:product:09auto_regressive/dense_8/BiasAdd_16/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	∞
2auto_regressive/lstm_cell/MatMul_32/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0…
#auto_regressive/lstm_cell/MatMul_32MatMul+auto_regressive/dense_8/BiasAdd_16:output:0:auto_regressive/lstm_cell/MatMul_32/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
2auto_regressive/lstm_cell/MatMul_33/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0¬
#auto_regressive/lstm_cell/MatMul_33MatMul$auto_regressive/lstm_cell/mul_47:z:0:auto_regressive/lstm_cell/MatMul_33/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
 auto_regressive/lstm_cell/add_32AddV2-auto_regressive/lstm_cell/MatMul_32:product:0-auto_regressive/lstm_cell/MatMul_33:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
3auto_regressive/lstm_cell/BiasAdd_16/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0≈
$auto_regressive/lstm_cell/BiasAdd_16BiasAdd$auto_regressive/lstm_cell/add_32:z:0;auto_regressive/lstm_cell/BiasAdd_16/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
,auto_regressive/lstm_cell/split_16/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Н
"auto_regressive/lstm_cell/split_16Split5auto_regressive/lstm_cell/split_16/split_dim:output:0-auto_regressive/lstm_cell/BiasAdd_16:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitО
$auto_regressive/lstm_cell/Sigmoid_48Sigmoid+auto_regressive/lstm_cell/split_16:output:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_49Sigmoid+auto_regressive/lstm_cell/split_16:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ©
 auto_regressive/lstm_cell/mul_48Mul(auto_regressive/lstm_cell/Sigmoid_49:y:0$auto_regressive/lstm_cell/add_31:z:0*
T0*'
_output_shapes
:€€€€€€€€€ И
!auto_regressive/lstm_cell/Tanh_32Tanh+auto_regressive/lstm_cell/split_16:output:2*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_49Mul(auto_regressive/lstm_cell/Sigmoid_48:y:0%auto_regressive/lstm_cell/Tanh_32:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
 auto_regressive/lstm_cell/add_33AddV2$auto_regressive/lstm_cell/mul_48:z:0$auto_regressive/lstm_cell/mul_49:z:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_50Sigmoid+auto_regressive/lstm_cell/split_16:output:3*
T0*'
_output_shapes
:€€€€€€€€€ Б
!auto_regressive/lstm_cell/Tanh_33Tanh$auto_regressive/lstm_cell/add_33:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_50Mul(auto_regressive/lstm_cell/Sigmoid_50:y:0%auto_regressive/lstm_cell/Tanh_33:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
0auto_regressive/dense_8/MatMul_17/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0љ
!auto_regressive/dense_8/MatMul_17MatMul$auto_regressive/lstm_cell/mul_50:z:08auto_regressive/dense_8/MatMul_17/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	•
1auto_regressive/dense_8/BiasAdd_17/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0«
"auto_regressive/dense_8/BiasAdd_17BiasAdd+auto_regressive/dense_8/MatMul_17:product:09auto_regressive/dense_8/BiasAdd_17/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	∞
2auto_regressive/lstm_cell/MatMul_34/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0…
#auto_regressive/lstm_cell/MatMul_34MatMul+auto_regressive/dense_8/BiasAdd_17:output:0:auto_regressive/lstm_cell/MatMul_34/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
2auto_regressive/lstm_cell/MatMul_35/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0¬
#auto_regressive/lstm_cell/MatMul_35MatMul$auto_regressive/lstm_cell/mul_50:z:0:auto_regressive/lstm_cell/MatMul_35/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
 auto_regressive/lstm_cell/add_34AddV2-auto_regressive/lstm_cell/MatMul_34:product:0-auto_regressive/lstm_cell/MatMul_35:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
3auto_regressive/lstm_cell/BiasAdd_17/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0≈
$auto_regressive/lstm_cell/BiasAdd_17BiasAdd$auto_regressive/lstm_cell/add_34:z:0;auto_regressive/lstm_cell/BiasAdd_17/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
,auto_regressive/lstm_cell/split_17/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Н
"auto_regressive/lstm_cell/split_17Split5auto_regressive/lstm_cell/split_17/split_dim:output:0-auto_regressive/lstm_cell/BiasAdd_17:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitО
$auto_regressive/lstm_cell/Sigmoid_51Sigmoid+auto_regressive/lstm_cell/split_17:output:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_52Sigmoid+auto_regressive/lstm_cell/split_17:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ©
 auto_regressive/lstm_cell/mul_51Mul(auto_regressive/lstm_cell/Sigmoid_52:y:0$auto_regressive/lstm_cell/add_33:z:0*
T0*'
_output_shapes
:€€€€€€€€€ И
!auto_regressive/lstm_cell/Tanh_34Tanh+auto_regressive/lstm_cell/split_17:output:2*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_52Mul(auto_regressive/lstm_cell/Sigmoid_51:y:0%auto_regressive/lstm_cell/Tanh_34:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
 auto_regressive/lstm_cell/add_35AddV2$auto_regressive/lstm_cell/mul_51:z:0$auto_regressive/lstm_cell/mul_52:z:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_53Sigmoid+auto_regressive/lstm_cell/split_17:output:3*
T0*'
_output_shapes
:€€€€€€€€€ Б
!auto_regressive/lstm_cell/Tanh_35Tanh$auto_regressive/lstm_cell/add_35:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_53Mul(auto_regressive/lstm_cell/Sigmoid_53:y:0%auto_regressive/lstm_cell/Tanh_35:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
0auto_regressive/dense_8/MatMul_18/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0љ
!auto_regressive/dense_8/MatMul_18MatMul$auto_regressive/lstm_cell/mul_53:z:08auto_regressive/dense_8/MatMul_18/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	•
1auto_regressive/dense_8/BiasAdd_18/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0«
"auto_regressive/dense_8/BiasAdd_18BiasAdd+auto_regressive/dense_8/MatMul_18:product:09auto_regressive/dense_8/BiasAdd_18/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	∞
2auto_regressive/lstm_cell/MatMul_36/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0…
#auto_regressive/lstm_cell/MatMul_36MatMul+auto_regressive/dense_8/BiasAdd_18:output:0:auto_regressive/lstm_cell/MatMul_36/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
2auto_regressive/lstm_cell/MatMul_37/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0¬
#auto_regressive/lstm_cell/MatMul_37MatMul$auto_regressive/lstm_cell/mul_53:z:0:auto_regressive/lstm_cell/MatMul_37/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
 auto_regressive/lstm_cell/add_36AddV2-auto_regressive/lstm_cell/MatMul_36:product:0-auto_regressive/lstm_cell/MatMul_37:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
3auto_regressive/lstm_cell/BiasAdd_18/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0≈
$auto_regressive/lstm_cell/BiasAdd_18BiasAdd$auto_regressive/lstm_cell/add_36:z:0;auto_regressive/lstm_cell/BiasAdd_18/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
,auto_regressive/lstm_cell/split_18/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Н
"auto_regressive/lstm_cell/split_18Split5auto_regressive/lstm_cell/split_18/split_dim:output:0-auto_regressive/lstm_cell/BiasAdd_18:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitО
$auto_regressive/lstm_cell/Sigmoid_54Sigmoid+auto_regressive/lstm_cell/split_18:output:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_55Sigmoid+auto_regressive/lstm_cell/split_18:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ©
 auto_regressive/lstm_cell/mul_54Mul(auto_regressive/lstm_cell/Sigmoid_55:y:0$auto_regressive/lstm_cell/add_35:z:0*
T0*'
_output_shapes
:€€€€€€€€€ И
!auto_regressive/lstm_cell/Tanh_36Tanh+auto_regressive/lstm_cell/split_18:output:2*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_55Mul(auto_regressive/lstm_cell/Sigmoid_54:y:0%auto_regressive/lstm_cell/Tanh_36:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
 auto_regressive/lstm_cell/add_37AddV2$auto_regressive/lstm_cell/mul_54:z:0$auto_regressive/lstm_cell/mul_55:z:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_56Sigmoid+auto_regressive/lstm_cell/split_18:output:3*
T0*'
_output_shapes
:€€€€€€€€€ Б
!auto_regressive/lstm_cell/Tanh_37Tanh$auto_regressive/lstm_cell/add_37:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_56Mul(auto_regressive/lstm_cell/Sigmoid_56:y:0%auto_regressive/lstm_cell/Tanh_37:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
0auto_regressive/dense_8/MatMul_19/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0љ
!auto_regressive/dense_8/MatMul_19MatMul$auto_regressive/lstm_cell/mul_56:z:08auto_regressive/dense_8/MatMul_19/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	•
1auto_regressive/dense_8/BiasAdd_19/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0«
"auto_regressive/dense_8/BiasAdd_19BiasAdd+auto_regressive/dense_8/MatMul_19:product:09auto_regressive/dense_8/BiasAdd_19/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	∞
2auto_regressive/lstm_cell/MatMul_38/ReadVariableOpReadVariableOp<auto_regressive_rnn_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0…
#auto_regressive/lstm_cell/MatMul_38MatMul+auto_regressive/dense_8/BiasAdd_19:output:0:auto_regressive/lstm_cell/MatMul_38/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А≤
2auto_regressive/lstm_cell/MatMul_39/ReadVariableOpReadVariableOp>auto_regressive_rnn_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0¬
#auto_regressive/lstm_cell/MatMul_39MatMul$auto_regressive/lstm_cell/mul_56:z:0:auto_regressive/lstm_cell/MatMul_39/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЇ
 auto_regressive/lstm_cell/add_38AddV2-auto_regressive/lstm_cell/MatMul_38:product:0-auto_regressive/lstm_cell/MatMul_39:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЃ
3auto_regressive/lstm_cell/BiasAdd_19/ReadVariableOpReadVariableOp=auto_regressive_rnn_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0≈
$auto_regressive/lstm_cell/BiasAdd_19BiasAdd$auto_regressive/lstm_cell/add_38:z:0;auto_regressive/lstm_cell/BiasAdd_19/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аn
,auto_regressive/lstm_cell/split_19/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Н
"auto_regressive/lstm_cell/split_19Split5auto_regressive/lstm_cell/split_19/split_dim:output:0-auto_regressive/lstm_cell/BiasAdd_19:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitО
$auto_regressive/lstm_cell/Sigmoid_57Sigmoid+auto_regressive/lstm_cell/split_19:output:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_58Sigmoid+auto_regressive/lstm_cell/split_19:output:1*
T0*'
_output_shapes
:€€€€€€€€€ ©
 auto_regressive/lstm_cell/mul_57Mul(auto_regressive/lstm_cell/Sigmoid_58:y:0$auto_regressive/lstm_cell/add_37:z:0*
T0*'
_output_shapes
:€€€€€€€€€ И
!auto_regressive/lstm_cell/Tanh_38Tanh+auto_regressive/lstm_cell/split_19:output:2*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_58Mul(auto_regressive/lstm_cell/Sigmoid_57:y:0%auto_regressive/lstm_cell/Tanh_38:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
 auto_regressive/lstm_cell/add_39AddV2$auto_regressive/lstm_cell/mul_57:z:0$auto_regressive/lstm_cell/mul_58:z:0*
T0*'
_output_shapes
:€€€€€€€€€ О
$auto_regressive/lstm_cell/Sigmoid_59Sigmoid+auto_regressive/lstm_cell/split_19:output:3*
T0*'
_output_shapes
:€€€€€€€€€ Б
!auto_regressive/lstm_cell/Tanh_39Tanh$auto_regressive/lstm_cell/add_39:z:0*
T0*'
_output_shapes
:€€€€€€€€€ ™
 auto_regressive/lstm_cell/mul_59Mul(auto_regressive/lstm_cell/Sigmoid_59:y:0%auto_regressive/lstm_cell/Tanh_39:y:0*
T0*'
_output_shapes
:€€€€€€€€€ І
0auto_regressive/dense_8/MatMul_20/ReadVariableOpReadVariableOp6auto_regressive_dense_8_matmul_readvariableop_resource*
_output_shapes

: 	*
dtype0љ
!auto_regressive/dense_8/MatMul_20MatMul$auto_regressive/lstm_cell/mul_59:z:08auto_regressive/dense_8/MatMul_20/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	•
1auto_regressive/dense_8/BiasAdd_20/ReadVariableOpReadVariableOp7auto_regressive_dense_8_biasadd_readvariableop_resource*
_output_shapes
:	*
dtype0«
"auto_regressive/dense_8/BiasAdd_20BiasAdd+auto_regressive/dense_8/MatMul_20:product:09auto_regressive/dense_8/BiasAdd_20/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	Б
auto_regressive/stackPack(auto_regressive/dense_8/BiasAdd:output:0*auto_regressive/dense_8/BiasAdd_1:output:0*auto_regressive/dense_8/BiasAdd_2:output:0*auto_regressive/dense_8/BiasAdd_3:output:0*auto_regressive/dense_8/BiasAdd_4:output:0*auto_regressive/dense_8/BiasAdd_5:output:0*auto_regressive/dense_8/BiasAdd_6:output:0*auto_regressive/dense_8/BiasAdd_7:output:0*auto_regressive/dense_8/BiasAdd_8:output:0*auto_regressive/dense_8/BiasAdd_9:output:0+auto_regressive/dense_8/BiasAdd_10:output:0+auto_regressive/dense_8/BiasAdd_11:output:0+auto_regressive/dense_8/BiasAdd_12:output:0+auto_regressive/dense_8/BiasAdd_13:output:0+auto_regressive/dense_8/BiasAdd_14:output:0+auto_regressive/dense_8/BiasAdd_15:output:0+auto_regressive/dense_8/BiasAdd_16:output:0+auto_regressive/dense_8/BiasAdd_17:output:0+auto_regressive/dense_8/BiasAdd_18:output:0+auto_regressive/dense_8/BiasAdd_19:output:0+auto_regressive/dense_8/BiasAdd_20:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	s
auto_regressive/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          •
auto_regressive/transpose	Transposeauto_regressive/stack:output:0'auto_regressive/transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€	p
IdentityIdentityauto_regressive/transpose:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	¶+
NoOpNoOp/^auto_regressive/dense_8/BiasAdd/ReadVariableOp1^auto_regressive/dense_8/BiasAdd_1/ReadVariableOp2^auto_regressive/dense_8/BiasAdd_10/ReadVariableOp2^auto_regressive/dense_8/BiasAdd_11/ReadVariableOp2^auto_regressive/dense_8/BiasAdd_12/ReadVariableOp2^auto_regressive/dense_8/BiasAdd_13/ReadVariableOp2^auto_regressive/dense_8/BiasAdd_14/ReadVariableOp2^auto_regressive/dense_8/BiasAdd_15/ReadVariableOp2^auto_regressive/dense_8/BiasAdd_16/ReadVariableOp2^auto_regressive/dense_8/BiasAdd_17/ReadVariableOp2^auto_regressive/dense_8/BiasAdd_18/ReadVariableOp2^auto_regressive/dense_8/BiasAdd_19/ReadVariableOp1^auto_regressive/dense_8/BiasAdd_2/ReadVariableOp2^auto_regressive/dense_8/BiasAdd_20/ReadVariableOp1^auto_regressive/dense_8/BiasAdd_3/ReadVariableOp1^auto_regressive/dense_8/BiasAdd_4/ReadVariableOp1^auto_regressive/dense_8/BiasAdd_5/ReadVariableOp1^auto_regressive/dense_8/BiasAdd_6/ReadVariableOp1^auto_regressive/dense_8/BiasAdd_7/ReadVariableOp1^auto_regressive/dense_8/BiasAdd_8/ReadVariableOp1^auto_regressive/dense_8/BiasAdd_9/ReadVariableOp.^auto_regressive/dense_8/MatMul/ReadVariableOp0^auto_regressive/dense_8/MatMul_1/ReadVariableOp1^auto_regressive/dense_8/MatMul_10/ReadVariableOp1^auto_regressive/dense_8/MatMul_11/ReadVariableOp1^auto_regressive/dense_8/MatMul_12/ReadVariableOp1^auto_regressive/dense_8/MatMul_13/ReadVariableOp1^auto_regressive/dense_8/MatMul_14/ReadVariableOp1^auto_regressive/dense_8/MatMul_15/ReadVariableOp1^auto_regressive/dense_8/MatMul_16/ReadVariableOp1^auto_regressive/dense_8/MatMul_17/ReadVariableOp1^auto_regressive/dense_8/MatMul_18/ReadVariableOp1^auto_regressive/dense_8/MatMul_19/ReadVariableOp0^auto_regressive/dense_8/MatMul_2/ReadVariableOp1^auto_regressive/dense_8/MatMul_20/ReadVariableOp0^auto_regressive/dense_8/MatMul_3/ReadVariableOp0^auto_regressive/dense_8/MatMul_4/ReadVariableOp0^auto_regressive/dense_8/MatMul_5/ReadVariableOp0^auto_regressive/dense_8/MatMul_6/ReadVariableOp0^auto_regressive/dense_8/MatMul_7/ReadVariableOp0^auto_regressive/dense_8/MatMul_8/ReadVariableOp0^auto_regressive/dense_8/MatMul_9/ReadVariableOp1^auto_regressive/lstm_cell/BiasAdd/ReadVariableOp3^auto_regressive/lstm_cell/BiasAdd_1/ReadVariableOp4^auto_regressive/lstm_cell/BiasAdd_10/ReadVariableOp4^auto_regressive/lstm_cell/BiasAdd_11/ReadVariableOp4^auto_regressive/lstm_cell/BiasAdd_12/ReadVariableOp4^auto_regressive/lstm_cell/BiasAdd_13/ReadVariableOp4^auto_regressive/lstm_cell/BiasAdd_14/ReadVariableOp4^auto_regressive/lstm_cell/BiasAdd_15/ReadVariableOp4^auto_regressive/lstm_cell/BiasAdd_16/ReadVariableOp4^auto_regressive/lstm_cell/BiasAdd_17/ReadVariableOp4^auto_regressive/lstm_cell/BiasAdd_18/ReadVariableOp4^auto_regressive/lstm_cell/BiasAdd_19/ReadVariableOp3^auto_regressive/lstm_cell/BiasAdd_2/ReadVariableOp3^auto_regressive/lstm_cell/BiasAdd_3/ReadVariableOp3^auto_regressive/lstm_cell/BiasAdd_4/ReadVariableOp3^auto_regressive/lstm_cell/BiasAdd_5/ReadVariableOp3^auto_regressive/lstm_cell/BiasAdd_6/ReadVariableOp3^auto_regressive/lstm_cell/BiasAdd_7/ReadVariableOp3^auto_regressive/lstm_cell/BiasAdd_8/ReadVariableOp3^auto_regressive/lstm_cell/BiasAdd_9/ReadVariableOp0^auto_regressive/lstm_cell/MatMul/ReadVariableOp2^auto_regressive/lstm_cell/MatMul_1/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_10/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_11/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_12/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_13/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_14/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_15/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_16/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_17/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_18/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_19/ReadVariableOp2^auto_regressive/lstm_cell/MatMul_2/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_20/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_21/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_22/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_23/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_24/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_25/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_26/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_27/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_28/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_29/ReadVariableOp2^auto_regressive/lstm_cell/MatMul_3/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_30/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_31/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_32/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_33/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_34/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_35/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_36/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_37/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_38/ReadVariableOp3^auto_regressive/lstm_cell/MatMul_39/ReadVariableOp2^auto_regressive/lstm_cell/MatMul_4/ReadVariableOp2^auto_regressive/lstm_cell/MatMul_5/ReadVariableOp2^auto_regressive/lstm_cell/MatMul_6/ReadVariableOp2^auto_regressive/lstm_cell/MatMul_7/ReadVariableOp2^auto_regressive/lstm_cell/MatMul_8/ReadVariableOp2^auto_regressive/lstm_cell/MatMul_9/ReadVariableOp5^auto_regressive/rnn/lstm_cell/BiasAdd/ReadVariableOp4^auto_regressive/rnn/lstm_cell/MatMul/ReadVariableOp6^auto_regressive/rnn/lstm_cell/MatMul_1/ReadVariableOp^auto_regressive/rnn/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€	: : : : : 2`
.auto_regressive/dense_8/BiasAdd/ReadVariableOp.auto_regressive/dense_8/BiasAdd/ReadVariableOp2d
0auto_regressive/dense_8/BiasAdd_1/ReadVariableOp0auto_regressive/dense_8/BiasAdd_1/ReadVariableOp2f
1auto_regressive/dense_8/BiasAdd_10/ReadVariableOp1auto_regressive/dense_8/BiasAdd_10/ReadVariableOp2f
1auto_regressive/dense_8/BiasAdd_11/ReadVariableOp1auto_regressive/dense_8/BiasAdd_11/ReadVariableOp2f
1auto_regressive/dense_8/BiasAdd_12/ReadVariableOp1auto_regressive/dense_8/BiasAdd_12/ReadVariableOp2f
1auto_regressive/dense_8/BiasAdd_13/ReadVariableOp1auto_regressive/dense_8/BiasAdd_13/ReadVariableOp2f
1auto_regressive/dense_8/BiasAdd_14/ReadVariableOp1auto_regressive/dense_8/BiasAdd_14/ReadVariableOp2f
1auto_regressive/dense_8/BiasAdd_15/ReadVariableOp1auto_regressive/dense_8/BiasAdd_15/ReadVariableOp2f
1auto_regressive/dense_8/BiasAdd_16/ReadVariableOp1auto_regressive/dense_8/BiasAdd_16/ReadVariableOp2f
1auto_regressive/dense_8/BiasAdd_17/ReadVariableOp1auto_regressive/dense_8/BiasAdd_17/ReadVariableOp2f
1auto_regressive/dense_8/BiasAdd_18/ReadVariableOp1auto_regressive/dense_8/BiasAdd_18/ReadVariableOp2f
1auto_regressive/dense_8/BiasAdd_19/ReadVariableOp1auto_regressive/dense_8/BiasAdd_19/ReadVariableOp2d
0auto_regressive/dense_8/BiasAdd_2/ReadVariableOp0auto_regressive/dense_8/BiasAdd_2/ReadVariableOp2f
1auto_regressive/dense_8/BiasAdd_20/ReadVariableOp1auto_regressive/dense_8/BiasAdd_20/ReadVariableOp2d
0auto_regressive/dense_8/BiasAdd_3/ReadVariableOp0auto_regressive/dense_8/BiasAdd_3/ReadVariableOp2d
0auto_regressive/dense_8/BiasAdd_4/ReadVariableOp0auto_regressive/dense_8/BiasAdd_4/ReadVariableOp2d
0auto_regressive/dense_8/BiasAdd_5/ReadVariableOp0auto_regressive/dense_8/BiasAdd_5/ReadVariableOp2d
0auto_regressive/dense_8/BiasAdd_6/ReadVariableOp0auto_regressive/dense_8/BiasAdd_6/ReadVariableOp2d
0auto_regressive/dense_8/BiasAdd_7/ReadVariableOp0auto_regressive/dense_8/BiasAdd_7/ReadVariableOp2d
0auto_regressive/dense_8/BiasAdd_8/ReadVariableOp0auto_regressive/dense_8/BiasAdd_8/ReadVariableOp2d
0auto_regressive/dense_8/BiasAdd_9/ReadVariableOp0auto_regressive/dense_8/BiasAdd_9/ReadVariableOp2^
-auto_regressive/dense_8/MatMul/ReadVariableOp-auto_regressive/dense_8/MatMul/ReadVariableOp2b
/auto_regressive/dense_8/MatMul_1/ReadVariableOp/auto_regressive/dense_8/MatMul_1/ReadVariableOp2d
0auto_regressive/dense_8/MatMul_10/ReadVariableOp0auto_regressive/dense_8/MatMul_10/ReadVariableOp2d
0auto_regressive/dense_8/MatMul_11/ReadVariableOp0auto_regressive/dense_8/MatMul_11/ReadVariableOp2d
0auto_regressive/dense_8/MatMul_12/ReadVariableOp0auto_regressive/dense_8/MatMul_12/ReadVariableOp2d
0auto_regressive/dense_8/MatMul_13/ReadVariableOp0auto_regressive/dense_8/MatMul_13/ReadVariableOp2d
0auto_regressive/dense_8/MatMul_14/ReadVariableOp0auto_regressive/dense_8/MatMul_14/ReadVariableOp2d
0auto_regressive/dense_8/MatMul_15/ReadVariableOp0auto_regressive/dense_8/MatMul_15/ReadVariableOp2d
0auto_regressive/dense_8/MatMul_16/ReadVariableOp0auto_regressive/dense_8/MatMul_16/ReadVariableOp2d
0auto_regressive/dense_8/MatMul_17/ReadVariableOp0auto_regressive/dense_8/MatMul_17/ReadVariableOp2d
0auto_regressive/dense_8/MatMul_18/ReadVariableOp0auto_regressive/dense_8/MatMul_18/ReadVariableOp2d
0auto_regressive/dense_8/MatMul_19/ReadVariableOp0auto_regressive/dense_8/MatMul_19/ReadVariableOp2b
/auto_regressive/dense_8/MatMul_2/ReadVariableOp/auto_regressive/dense_8/MatMul_2/ReadVariableOp2d
0auto_regressive/dense_8/MatMul_20/ReadVariableOp0auto_regressive/dense_8/MatMul_20/ReadVariableOp2b
/auto_regressive/dense_8/MatMul_3/ReadVariableOp/auto_regressive/dense_8/MatMul_3/ReadVariableOp2b
/auto_regressive/dense_8/MatMul_4/ReadVariableOp/auto_regressive/dense_8/MatMul_4/ReadVariableOp2b
/auto_regressive/dense_8/MatMul_5/ReadVariableOp/auto_regressive/dense_8/MatMul_5/ReadVariableOp2b
/auto_regressive/dense_8/MatMul_6/ReadVariableOp/auto_regressive/dense_8/MatMul_6/ReadVariableOp2b
/auto_regressive/dense_8/MatMul_7/ReadVariableOp/auto_regressive/dense_8/MatMul_7/ReadVariableOp2b
/auto_regressive/dense_8/MatMul_8/ReadVariableOp/auto_regressive/dense_8/MatMul_8/ReadVariableOp2b
/auto_regressive/dense_8/MatMul_9/ReadVariableOp/auto_regressive/dense_8/MatMul_9/ReadVariableOp2d
0auto_regressive/lstm_cell/BiasAdd/ReadVariableOp0auto_regressive/lstm_cell/BiasAdd/ReadVariableOp2h
2auto_regressive/lstm_cell/BiasAdd_1/ReadVariableOp2auto_regressive/lstm_cell/BiasAdd_1/ReadVariableOp2j
3auto_regressive/lstm_cell/BiasAdd_10/ReadVariableOp3auto_regressive/lstm_cell/BiasAdd_10/ReadVariableOp2j
3auto_regressive/lstm_cell/BiasAdd_11/ReadVariableOp3auto_regressive/lstm_cell/BiasAdd_11/ReadVariableOp2j
3auto_regressive/lstm_cell/BiasAdd_12/ReadVariableOp3auto_regressive/lstm_cell/BiasAdd_12/ReadVariableOp2j
3auto_regressive/lstm_cell/BiasAdd_13/ReadVariableOp3auto_regressive/lstm_cell/BiasAdd_13/ReadVariableOp2j
3auto_regressive/lstm_cell/BiasAdd_14/ReadVariableOp3auto_regressive/lstm_cell/BiasAdd_14/ReadVariableOp2j
3auto_regressive/lstm_cell/BiasAdd_15/ReadVariableOp3auto_regressive/lstm_cell/BiasAdd_15/ReadVariableOp2j
3auto_regressive/lstm_cell/BiasAdd_16/ReadVariableOp3auto_regressive/lstm_cell/BiasAdd_16/ReadVariableOp2j
3auto_regressive/lstm_cell/BiasAdd_17/ReadVariableOp3auto_regressive/lstm_cell/BiasAdd_17/ReadVariableOp2j
3auto_regressive/lstm_cell/BiasAdd_18/ReadVariableOp3auto_regressive/lstm_cell/BiasAdd_18/ReadVariableOp2j
3auto_regressive/lstm_cell/BiasAdd_19/ReadVariableOp3auto_regressive/lstm_cell/BiasAdd_19/ReadVariableOp2h
2auto_regressive/lstm_cell/BiasAdd_2/ReadVariableOp2auto_regressive/lstm_cell/BiasAdd_2/ReadVariableOp2h
2auto_regressive/lstm_cell/BiasAdd_3/ReadVariableOp2auto_regressive/lstm_cell/BiasAdd_3/ReadVariableOp2h
2auto_regressive/lstm_cell/BiasAdd_4/ReadVariableOp2auto_regressive/lstm_cell/BiasAdd_4/ReadVariableOp2h
2auto_regressive/lstm_cell/BiasAdd_5/ReadVariableOp2auto_regressive/lstm_cell/BiasAdd_5/ReadVariableOp2h
2auto_regressive/lstm_cell/BiasAdd_6/ReadVariableOp2auto_regressive/lstm_cell/BiasAdd_6/ReadVariableOp2h
2auto_regressive/lstm_cell/BiasAdd_7/ReadVariableOp2auto_regressive/lstm_cell/BiasAdd_7/ReadVariableOp2h
2auto_regressive/lstm_cell/BiasAdd_8/ReadVariableOp2auto_regressive/lstm_cell/BiasAdd_8/ReadVariableOp2h
2auto_regressive/lstm_cell/BiasAdd_9/ReadVariableOp2auto_regressive/lstm_cell/BiasAdd_9/ReadVariableOp2b
/auto_regressive/lstm_cell/MatMul/ReadVariableOp/auto_regressive/lstm_cell/MatMul/ReadVariableOp2f
1auto_regressive/lstm_cell/MatMul_1/ReadVariableOp1auto_regressive/lstm_cell/MatMul_1/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_10/ReadVariableOp2auto_regressive/lstm_cell/MatMul_10/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_11/ReadVariableOp2auto_regressive/lstm_cell/MatMul_11/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_12/ReadVariableOp2auto_regressive/lstm_cell/MatMul_12/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_13/ReadVariableOp2auto_regressive/lstm_cell/MatMul_13/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_14/ReadVariableOp2auto_regressive/lstm_cell/MatMul_14/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_15/ReadVariableOp2auto_regressive/lstm_cell/MatMul_15/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_16/ReadVariableOp2auto_regressive/lstm_cell/MatMul_16/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_17/ReadVariableOp2auto_regressive/lstm_cell/MatMul_17/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_18/ReadVariableOp2auto_regressive/lstm_cell/MatMul_18/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_19/ReadVariableOp2auto_regressive/lstm_cell/MatMul_19/ReadVariableOp2f
1auto_regressive/lstm_cell/MatMul_2/ReadVariableOp1auto_regressive/lstm_cell/MatMul_2/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_20/ReadVariableOp2auto_regressive/lstm_cell/MatMul_20/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_21/ReadVariableOp2auto_regressive/lstm_cell/MatMul_21/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_22/ReadVariableOp2auto_regressive/lstm_cell/MatMul_22/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_23/ReadVariableOp2auto_regressive/lstm_cell/MatMul_23/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_24/ReadVariableOp2auto_regressive/lstm_cell/MatMul_24/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_25/ReadVariableOp2auto_regressive/lstm_cell/MatMul_25/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_26/ReadVariableOp2auto_regressive/lstm_cell/MatMul_26/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_27/ReadVariableOp2auto_regressive/lstm_cell/MatMul_27/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_28/ReadVariableOp2auto_regressive/lstm_cell/MatMul_28/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_29/ReadVariableOp2auto_regressive/lstm_cell/MatMul_29/ReadVariableOp2f
1auto_regressive/lstm_cell/MatMul_3/ReadVariableOp1auto_regressive/lstm_cell/MatMul_3/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_30/ReadVariableOp2auto_regressive/lstm_cell/MatMul_30/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_31/ReadVariableOp2auto_regressive/lstm_cell/MatMul_31/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_32/ReadVariableOp2auto_regressive/lstm_cell/MatMul_32/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_33/ReadVariableOp2auto_regressive/lstm_cell/MatMul_33/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_34/ReadVariableOp2auto_regressive/lstm_cell/MatMul_34/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_35/ReadVariableOp2auto_regressive/lstm_cell/MatMul_35/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_36/ReadVariableOp2auto_regressive/lstm_cell/MatMul_36/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_37/ReadVariableOp2auto_regressive/lstm_cell/MatMul_37/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_38/ReadVariableOp2auto_regressive/lstm_cell/MatMul_38/ReadVariableOp2h
2auto_regressive/lstm_cell/MatMul_39/ReadVariableOp2auto_regressive/lstm_cell/MatMul_39/ReadVariableOp2f
1auto_regressive/lstm_cell/MatMul_4/ReadVariableOp1auto_regressive/lstm_cell/MatMul_4/ReadVariableOp2f
1auto_regressive/lstm_cell/MatMul_5/ReadVariableOp1auto_regressive/lstm_cell/MatMul_5/ReadVariableOp2f
1auto_regressive/lstm_cell/MatMul_6/ReadVariableOp1auto_regressive/lstm_cell/MatMul_6/ReadVariableOp2f
1auto_regressive/lstm_cell/MatMul_7/ReadVariableOp1auto_regressive/lstm_cell/MatMul_7/ReadVariableOp2f
1auto_regressive/lstm_cell/MatMul_8/ReadVariableOp1auto_regressive/lstm_cell/MatMul_8/ReadVariableOp2f
1auto_regressive/lstm_cell/MatMul_9/ReadVariableOp1auto_regressive/lstm_cell/MatMul_9/ReadVariableOp2l
4auto_regressive/rnn/lstm_cell/BiasAdd/ReadVariableOp4auto_regressive/rnn/lstm_cell/BiasAdd/ReadVariableOp2j
3auto_regressive/rnn/lstm_cell/MatMul/ReadVariableOp3auto_regressive/rnn/lstm_cell/MatMul/ReadVariableOp2n
5auto_regressive/rnn/lstm_cell/MatMul_1/ReadVariableOp5auto_regressive/rnn/lstm_cell/MatMul_1/ReadVariableOp26
auto_regressive/rnn/whileauto_regressive/rnn/while:($
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
resource:T P
+
_output_shapes
:€€€€€€€€€	
!
_user_specified_name	input_1
ё%
ќ
while_body_180860
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_180884_0:		А+
while_lstm_cell_180886_0:	 А'
while_lstm_cell_180888_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_180884:		А)
while_lstm_cell_180886:	 А%
while_lstm_cell_180888:	АИҐ'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype0§
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_180884_0while_lstm_cell_180886_0while_lstm_cell_180888_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_180845r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Н
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Н
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"2
while_lstm_cell_180884while_lstm_cell_180884_0"2
while_lstm_cell_180886while_lstm_cell_180886_0"2
while_lstm_cell_180888while_lstm_cell_180888_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:&
"
 
_user_specified_name180888:&	"
 
_user_specified_name180886:&"
 
_user_specified_name180884:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
‘i
Ж
"__inference__traced_restore_183051
file_prefixH
5assignvariableop_auto_regressive_rnn_lstm_cell_kernel:		АT
Aassignvariableop_1_auto_regressive_rnn_lstm_cell_recurrent_kernel:	 АD
5assignvariableop_2_auto_regressive_rnn_lstm_cell_bias:	АC
1assignvariableop_3_auto_regressive_dense_8_kernel: 	=
/assignvariableop_4_auto_regressive_dense_8_bias:	&
assignvariableop_5_iteration:	 *
 assignvariableop_6_learning_rate: Q
>assignvariableop_7_adam_m_auto_regressive_rnn_lstm_cell_kernel:		АQ
>assignvariableop_8_adam_v_auto_regressive_rnn_lstm_cell_kernel:		А[
Hassignvariableop_9_adam_m_auto_regressive_rnn_lstm_cell_recurrent_kernel:	 А\
Iassignvariableop_10_adam_v_auto_regressive_rnn_lstm_cell_recurrent_kernel:	 АL
=assignvariableop_11_adam_m_auto_regressive_rnn_lstm_cell_bias:	АL
=assignvariableop_12_adam_v_auto_regressive_rnn_lstm_cell_bias:	АK
9assignvariableop_13_adam_m_auto_regressive_dense_8_kernel: 	K
9assignvariableop_14_adam_v_auto_regressive_dense_8_kernel: 	E
7assignvariableop_15_adam_m_auto_regressive_dense_8_bias:	E
7assignvariableop_16_adam_v_auto_regressive_dense_8_bias:	%
assignvariableop_17_total_1: %
assignvariableop_18_count_1: #
assignvariableop_19_total: #
assignvariableop_20_count: 
identity_22ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9У	
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*є
valueѓBђB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЬ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B М
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*l
_output_shapesZ
X::::::::::::::::::::::*$
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOpAssignVariableOp5assignvariableop_auto_regressive_rnn_lstm_cell_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ў
AssignVariableOp_1AssignVariableOpAassignvariableop_1_auto_regressive_rnn_lstm_cell_recurrent_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:ћ
AssignVariableOp_2AssignVariableOp5assignvariableop_2_auto_regressive_rnn_lstm_cell_biasIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_3AssignVariableOp1assignvariableop_3_auto_regressive_dense_8_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:∆
AssignVariableOp_4AssignVariableOp/assignvariableop_4_auto_regressive_dense_8_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0	*
_output_shapes
:≥
AssignVariableOp_5AssignVariableOpassignvariableop_5_iterationIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_6AssignVariableOp assignvariableop_6_learning_rateIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_7AssignVariableOp>assignvariableop_7_adam_m_auto_regressive_rnn_lstm_cell_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_8AssignVariableOp>assignvariableop_8_adam_v_auto_regressive_rnn_lstm_cell_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:я
AssignVariableOp_9AssignVariableOpHassignvariableop_9_adam_m_auto_regressive_rnn_lstm_cell_recurrent_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:в
AssignVariableOp_10AssignVariableOpIassignvariableop_10_adam_v_auto_regressive_rnn_lstm_cell_recurrent_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:÷
AssignVariableOp_11AssignVariableOp=assignvariableop_11_adam_m_auto_regressive_rnn_lstm_cell_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:÷
AssignVariableOp_12AssignVariableOp=assignvariableop_12_adam_v_auto_regressive_rnn_lstm_cell_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_13AssignVariableOp9assignvariableop_13_adam_m_auto_regressive_dense_8_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_14AssignVariableOp9assignvariableop_14_adam_v_auto_regressive_dense_8_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:–
AssignVariableOp_15AssignVariableOp7assignvariableop_15_adam_m_auto_regressive_dense_8_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:–
AssignVariableOp_16AssignVariableOp7assignvariableop_16_adam_v_auto_regressive_dense_8_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 Э
Identity_21Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_22IdentityIdentity_21:output:0^NoOp_1*
T0*
_output_shapes
: ж
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_22Identity_22:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes.
,: : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_20AssignVariableOp_202(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:C?
=
_user_specified_name%#Adam/v/auto_regressive/dense_8/bias:C?
=
_user_specified_name%#Adam/m/auto_regressive/dense_8/bias:EA
?
_user_specified_name'%Adam/v/auto_regressive/dense_8/kernel:EA
?
_user_specified_name'%Adam/m/auto_regressive/dense_8/kernel:IE
C
_user_specified_name+)Adam/v/auto_regressive/rnn/lstm_cell/bias:IE
C
_user_specified_name+)Adam/m/auto_regressive/rnn/lstm_cell/bias:UQ
O
_user_specified_name75Adam/v/auto_regressive/rnn/lstm_cell/recurrent_kernel:U
Q
O
_user_specified_name75Adam/m/auto_regressive/rnn/lstm_cell/recurrent_kernel:K	G
E
_user_specified_name-+Adam/v/auto_regressive/rnn/lstm_cell/kernel:KG
E
_user_specified_name-+Adam/m/auto_regressive/rnn/lstm_cell/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:<8
6
_user_specified_nameauto_regressive/dense_8/bias:>:
8
_user_specified_name auto_regressive/dense_8/kernel:B>
<
_user_specified_name$"auto_regressive/rnn/lstm_cell/bias:NJ
H
_user_specified_name0.auto_regressive/rnn/lstm_cell/recurrent_kernel:D@
>
_user_specified_name&$auto_regressive/rnn/lstm_cell/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
ѓ
”
%auto_regressive_rnn_while_cond_180189D
@auto_regressive_rnn_while_auto_regressive_rnn_while_loop_counterJ
Fauto_regressive_rnn_while_auto_regressive_rnn_while_maximum_iterations)
%auto_regressive_rnn_while_placeholder+
'auto_regressive_rnn_while_placeholder_1+
'auto_regressive_rnn_while_placeholder_2+
'auto_regressive_rnn_while_placeholder_3F
Bauto_regressive_rnn_while_less_auto_regressive_rnn_strided_slice_1\
Xauto_regressive_rnn_while_auto_regressive_rnn_while_cond_180189___redundant_placeholder0\
Xauto_regressive_rnn_while_auto_regressive_rnn_while_cond_180189___redundant_placeholder1\
Xauto_regressive_rnn_while_auto_regressive_rnn_while_cond_180189___redundant_placeholder2\
Xauto_regressive_rnn_while_auto_regressive_rnn_while_cond_180189___redundant_placeholder3&
"auto_regressive_rnn_while_identity
≤
auto_regressive/rnn/while/LessLess%auto_regressive_rnn_while_placeholderBauto_regressive_rnn_while_less_auto_regressive_rnn_strided_slice_1*
T0*
_output_shapes
: s
"auto_regressive/rnn/while/IdentityIdentity"auto_regressive/rnn/while/Less:z:0*
T0
*
_output_shapes
: "Q
"auto_regressive_rnn_while_identity+auto_regressive/rnn/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::

_output_shapes
::[W

_output_shapes
: 
=
_user_specified_name%#auto_regressive/rnn/strided_slice_1:-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :d`

_output_shapes
: 
F
_user_specified_name.,auto_regressive/rnn/while/maximum_iterations:^ Z

_output_shapes
: 
@
_user_specified_name(&auto_regressive/rnn/while/loop_counter
¬	
√
while_cond_180859
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_180859___redundant_placeholder04
0while_while_cond_180859___redundant_placeholder14
0while_while_cond_180859___redundant_placeholder24
0while_while_cond_180859___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ѕ:
Х
?__inference_rnn_layer_call_and_return_conditional_losses_181620

inputs#
lstm_cell_181535:		А#
lstm_cell_181537:	 А
lstm_cell_181539:	А
identity

identity_1

identity_2ИҐ!lstm_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€	R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_maskж
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_181535lstm_cell_181537lstm_cell_181539*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_180993n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : С
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_181535lstm_cell_181537lstm_cell_181539*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_181549*
condR
while_cond_181548*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ _

Identity_1Identitywhile:output:4^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ _

Identity_2Identitywhile:output:5^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€	: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:&"
 
_user_specified_name181539:&"
 
_user_specified_name181537:&"
 
_user_specified_name181535:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ц	
ф
C__inference_dense_8_layer_call_and_return_conditional_losses_181280

inputs0
matmul_readvariableop_resource: 	-
biasadd_readvariableop_resource:	
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: 	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:	*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€	_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€	S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
є
у
*__inference_lstm_cell_layer_call_fn_182023

inputs
states_0
states_1
unknown:		А
	unknown_0:	 А
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCall•
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€	:€€€€€€€€€ :€€€€€€€€€ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name182015:&"
 
_user_specified_name182013:&"
 
_user_specified_name182011:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
џ№
Я
K__inference_auto_regressive_layer_call_and_return_conditional_losses_181502
input_1

rnn_181262:		А

rnn_181264:	 А

rnn_181266:	А 
dense_8_181281: 	
dense_8_181283:	
identityИҐdense_8/StatefulPartitionedCallҐ!dense_8/StatefulPartitionedCall_1Ґ"dense_8/StatefulPartitionedCall_10Ґ"dense_8/StatefulPartitionedCall_11Ґ"dense_8/StatefulPartitionedCall_12Ґ"dense_8/StatefulPartitionedCall_13Ґ"dense_8/StatefulPartitionedCall_14Ґ"dense_8/StatefulPartitionedCall_15Ґ"dense_8/StatefulPartitionedCall_16Ґ"dense_8/StatefulPartitionedCall_17Ґ"dense_8/StatefulPartitionedCall_18Ґ"dense_8/StatefulPartitionedCall_19Ґ!dense_8/StatefulPartitionedCall_2Ґ"dense_8/StatefulPartitionedCall_20Ґ!dense_8/StatefulPartitionedCall_3Ґ!dense_8/StatefulPartitionedCall_4Ґ!dense_8/StatefulPartitionedCall_5Ґ!dense_8/StatefulPartitionedCall_6Ґ!dense_8/StatefulPartitionedCall_7Ґ!dense_8/StatefulPartitionedCall_8Ґ!dense_8/StatefulPartitionedCall_9Ґ!lstm_cell/StatefulPartitionedCallҐ#lstm_cell/StatefulPartitionedCall_1Ґ$lstm_cell/StatefulPartitionedCall_10Ґ$lstm_cell/StatefulPartitionedCall_11Ґ$lstm_cell/StatefulPartitionedCall_12Ґ$lstm_cell/StatefulPartitionedCall_13Ґ$lstm_cell/StatefulPartitionedCall_14Ґ$lstm_cell/StatefulPartitionedCall_15Ґ$lstm_cell/StatefulPartitionedCall_16Ґ$lstm_cell/StatefulPartitionedCall_17Ґ$lstm_cell/StatefulPartitionedCall_18Ґ$lstm_cell/StatefulPartitionedCall_19Ґ#lstm_cell/StatefulPartitionedCall_2Ґ#lstm_cell/StatefulPartitionedCall_3Ґ#lstm_cell/StatefulPartitionedCall_4Ґ#lstm_cell/StatefulPartitionedCall_5Ґ#lstm_cell/StatefulPartitionedCall_6Ґ#lstm_cell/StatefulPartitionedCall_7Ґ#lstm_cell/StatefulPartitionedCall_8Ґ#lstm_cell/StatefulPartitionedCall_9Ґrnn/StatefulPartitionedCallУ
rnn/StatefulPartitionedCallStatefulPartitionedCallinput_1
rnn_181262
rnn_181264
rnn_181266*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_181261К
dense_8/StatefulPartitionedCallStatefulPartitionedCall$rnn/StatefulPartitionedCall:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280О
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0$rnn/StatefulPartitionedCall:output:1$rnn/StatefulPartitionedCall:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Т
!dense_8/StatefulPartitionedCall_1StatefulPartitionedCall*lstm_cell/StatefulPartitionedCall:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280Ю
#lstm_cell/StatefulPartitionedCall_1StatefulPartitionedCall*dense_8/StatefulPartitionedCall_1:output:0*lstm_cell/StatefulPartitionedCall:output:1*lstm_cell/StatefulPartitionedCall:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Ф
!dense_8/StatefulPartitionedCall_2StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_1:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280Ґ
#lstm_cell/StatefulPartitionedCall_2StatefulPartitionedCall*dense_8/StatefulPartitionedCall_2:output:0,lstm_cell/StatefulPartitionedCall_1:output:1,lstm_cell/StatefulPartitionedCall_1:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Ф
!dense_8/StatefulPartitionedCall_3StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_2:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280Ґ
#lstm_cell/StatefulPartitionedCall_3StatefulPartitionedCall*dense_8/StatefulPartitionedCall_3:output:0,lstm_cell/StatefulPartitionedCall_2:output:1,lstm_cell/StatefulPartitionedCall_2:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Ф
!dense_8/StatefulPartitionedCall_4StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_3:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280Ґ
#lstm_cell/StatefulPartitionedCall_4StatefulPartitionedCall*dense_8/StatefulPartitionedCall_4:output:0,lstm_cell/StatefulPartitionedCall_3:output:1,lstm_cell/StatefulPartitionedCall_3:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Ф
!dense_8/StatefulPartitionedCall_5StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_4:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280Ґ
#lstm_cell/StatefulPartitionedCall_5StatefulPartitionedCall*dense_8/StatefulPartitionedCall_5:output:0,lstm_cell/StatefulPartitionedCall_4:output:1,lstm_cell/StatefulPartitionedCall_4:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Ф
!dense_8/StatefulPartitionedCall_6StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_5:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280Ґ
#lstm_cell/StatefulPartitionedCall_6StatefulPartitionedCall*dense_8/StatefulPartitionedCall_6:output:0,lstm_cell/StatefulPartitionedCall_5:output:1,lstm_cell/StatefulPartitionedCall_5:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Ф
!dense_8/StatefulPartitionedCall_7StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_6:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280Ґ
#lstm_cell/StatefulPartitionedCall_7StatefulPartitionedCall*dense_8/StatefulPartitionedCall_7:output:0,lstm_cell/StatefulPartitionedCall_6:output:1,lstm_cell/StatefulPartitionedCall_6:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Ф
!dense_8/StatefulPartitionedCall_8StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_7:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280Ґ
#lstm_cell/StatefulPartitionedCall_8StatefulPartitionedCall*dense_8/StatefulPartitionedCall_8:output:0,lstm_cell/StatefulPartitionedCall_7:output:1,lstm_cell/StatefulPartitionedCall_7:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Ф
!dense_8/StatefulPartitionedCall_9StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_8:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280Ґ
#lstm_cell/StatefulPartitionedCall_9StatefulPartitionedCall*dense_8/StatefulPartitionedCall_9:output:0,lstm_cell/StatefulPartitionedCall_8:output:1,lstm_cell/StatefulPartitionedCall_8:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Х
"dense_8/StatefulPartitionedCall_10StatefulPartitionedCall,lstm_cell/StatefulPartitionedCall_9:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280§
$lstm_cell/StatefulPartitionedCall_10StatefulPartitionedCall+dense_8/StatefulPartitionedCall_10:output:0,lstm_cell/StatefulPartitionedCall_9:output:1,lstm_cell/StatefulPartitionedCall_9:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Ц
"dense_8/StatefulPartitionedCall_11StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_10:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280¶
$lstm_cell/StatefulPartitionedCall_11StatefulPartitionedCall+dense_8/StatefulPartitionedCall_11:output:0-lstm_cell/StatefulPartitionedCall_10:output:1-lstm_cell/StatefulPartitionedCall_10:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Ц
"dense_8/StatefulPartitionedCall_12StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_11:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280¶
$lstm_cell/StatefulPartitionedCall_12StatefulPartitionedCall+dense_8/StatefulPartitionedCall_12:output:0-lstm_cell/StatefulPartitionedCall_11:output:1-lstm_cell/StatefulPartitionedCall_11:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Ц
"dense_8/StatefulPartitionedCall_13StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_12:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280¶
$lstm_cell/StatefulPartitionedCall_13StatefulPartitionedCall+dense_8/StatefulPartitionedCall_13:output:0-lstm_cell/StatefulPartitionedCall_12:output:1-lstm_cell/StatefulPartitionedCall_12:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Ц
"dense_8/StatefulPartitionedCall_14StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_13:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280¶
$lstm_cell/StatefulPartitionedCall_14StatefulPartitionedCall+dense_8/StatefulPartitionedCall_14:output:0-lstm_cell/StatefulPartitionedCall_13:output:1-lstm_cell/StatefulPartitionedCall_13:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Ц
"dense_8/StatefulPartitionedCall_15StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_14:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280¶
$lstm_cell/StatefulPartitionedCall_15StatefulPartitionedCall+dense_8/StatefulPartitionedCall_15:output:0-lstm_cell/StatefulPartitionedCall_14:output:1-lstm_cell/StatefulPartitionedCall_14:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Ц
"dense_8/StatefulPartitionedCall_16StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_15:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280¶
$lstm_cell/StatefulPartitionedCall_16StatefulPartitionedCall+dense_8/StatefulPartitionedCall_16:output:0-lstm_cell/StatefulPartitionedCall_15:output:1-lstm_cell/StatefulPartitionedCall_15:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Ц
"dense_8/StatefulPartitionedCall_17StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_16:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280¶
$lstm_cell/StatefulPartitionedCall_17StatefulPartitionedCall+dense_8/StatefulPartitionedCall_17:output:0-lstm_cell/StatefulPartitionedCall_16:output:1-lstm_cell/StatefulPartitionedCall_16:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Ц
"dense_8/StatefulPartitionedCall_18StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_17:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280¶
$lstm_cell/StatefulPartitionedCall_18StatefulPartitionedCall+dense_8/StatefulPartitionedCall_18:output:0-lstm_cell/StatefulPartitionedCall_17:output:1-lstm_cell/StatefulPartitionedCall_17:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Ц
"dense_8/StatefulPartitionedCall_19StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_18:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280¶
$lstm_cell/StatefulPartitionedCall_19StatefulPartitionedCall+dense_8/StatefulPartitionedCall_19:output:0-lstm_cell/StatefulPartitionedCall_18:output:1-lstm_cell/StatefulPartitionedCall_18:output:2
rnn_181262
rnn_181264
rnn_181266*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_181317Ц
"dense_8/StatefulPartitionedCall_20StatefulPartitionedCall-lstm_cell/StatefulPartitionedCall_19:output:0dense_8_181281dense_8_181283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280с
stackPack(dense_8/StatefulPartitionedCall:output:0*dense_8/StatefulPartitionedCall_1:output:0*dense_8/StatefulPartitionedCall_2:output:0*dense_8/StatefulPartitionedCall_3:output:0*dense_8/StatefulPartitionedCall_4:output:0*dense_8/StatefulPartitionedCall_5:output:0*dense_8/StatefulPartitionedCall_6:output:0*dense_8/StatefulPartitionedCall_7:output:0*dense_8/StatefulPartitionedCall_8:output:0*dense_8/StatefulPartitionedCall_9:output:0+dense_8/StatefulPartitionedCall_10:output:0+dense_8/StatefulPartitionedCall_11:output:0+dense_8/StatefulPartitionedCall_12:output:0+dense_8/StatefulPartitionedCall_13:output:0+dense_8/StatefulPartitionedCall_14:output:0+dense_8/StatefulPartitionedCall_15:output:0+dense_8/StatefulPartitionedCall_16:output:0+dense_8/StatefulPartitionedCall_17:output:0+dense_8/StatefulPartitionedCall_18:output:0+dense_8/StatefulPartitionedCall_19:output:0+dense_8/StatefulPartitionedCall_20:output:0*
N*
T0*+
_output_shapes
:€€€€€€€€€	c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          u
	transpose	Transposestack:output:0transpose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€	`
IdentityIdentitytranspose:y:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	љ
NoOpNoOp ^dense_8/StatefulPartitionedCall"^dense_8/StatefulPartitionedCall_1#^dense_8/StatefulPartitionedCall_10#^dense_8/StatefulPartitionedCall_11#^dense_8/StatefulPartitionedCall_12#^dense_8/StatefulPartitionedCall_13#^dense_8/StatefulPartitionedCall_14#^dense_8/StatefulPartitionedCall_15#^dense_8/StatefulPartitionedCall_16#^dense_8/StatefulPartitionedCall_17#^dense_8/StatefulPartitionedCall_18#^dense_8/StatefulPartitionedCall_19"^dense_8/StatefulPartitionedCall_2#^dense_8/StatefulPartitionedCall_20"^dense_8/StatefulPartitionedCall_3"^dense_8/StatefulPartitionedCall_4"^dense_8/StatefulPartitionedCall_5"^dense_8/StatefulPartitionedCall_6"^dense_8/StatefulPartitionedCall_7"^dense_8/StatefulPartitionedCall_8"^dense_8/StatefulPartitionedCall_9"^lstm_cell/StatefulPartitionedCall$^lstm_cell/StatefulPartitionedCall_1%^lstm_cell/StatefulPartitionedCall_10%^lstm_cell/StatefulPartitionedCall_11%^lstm_cell/StatefulPartitionedCall_12%^lstm_cell/StatefulPartitionedCall_13%^lstm_cell/StatefulPartitionedCall_14%^lstm_cell/StatefulPartitionedCall_15%^lstm_cell/StatefulPartitionedCall_16%^lstm_cell/StatefulPartitionedCall_17%^lstm_cell/StatefulPartitionedCall_18%^lstm_cell/StatefulPartitionedCall_19$^lstm_cell/StatefulPartitionedCall_2$^lstm_cell/StatefulPartitionedCall_3$^lstm_cell/StatefulPartitionedCall_4$^lstm_cell/StatefulPartitionedCall_5$^lstm_cell/StatefulPartitionedCall_6$^lstm_cell/StatefulPartitionedCall_7$^lstm_cell/StatefulPartitionedCall_8$^lstm_cell/StatefulPartitionedCall_9^rnn/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€	: : : : : 2H
"dense_8/StatefulPartitionedCall_10"dense_8/StatefulPartitionedCall_102H
"dense_8/StatefulPartitionedCall_11"dense_8/StatefulPartitionedCall_112H
"dense_8/StatefulPartitionedCall_12"dense_8/StatefulPartitionedCall_122H
"dense_8/StatefulPartitionedCall_13"dense_8/StatefulPartitionedCall_132H
"dense_8/StatefulPartitionedCall_14"dense_8/StatefulPartitionedCall_142H
"dense_8/StatefulPartitionedCall_15"dense_8/StatefulPartitionedCall_152H
"dense_8/StatefulPartitionedCall_16"dense_8/StatefulPartitionedCall_162H
"dense_8/StatefulPartitionedCall_17"dense_8/StatefulPartitionedCall_172H
"dense_8/StatefulPartitionedCall_18"dense_8/StatefulPartitionedCall_182H
"dense_8/StatefulPartitionedCall_19"dense_8/StatefulPartitionedCall_192F
!dense_8/StatefulPartitionedCall_1!dense_8/StatefulPartitionedCall_12H
"dense_8/StatefulPartitionedCall_20"dense_8/StatefulPartitionedCall_202F
!dense_8/StatefulPartitionedCall_2!dense_8/StatefulPartitionedCall_22F
!dense_8/StatefulPartitionedCall_3!dense_8/StatefulPartitionedCall_32F
!dense_8/StatefulPartitionedCall_4!dense_8/StatefulPartitionedCall_42F
!dense_8/StatefulPartitionedCall_5!dense_8/StatefulPartitionedCall_52F
!dense_8/StatefulPartitionedCall_6!dense_8/StatefulPartitionedCall_62F
!dense_8/StatefulPartitionedCall_7!dense_8/StatefulPartitionedCall_72F
!dense_8/StatefulPartitionedCall_8!dense_8/StatefulPartitionedCall_82F
!dense_8/StatefulPartitionedCall_9!dense_8/StatefulPartitionedCall_92B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2L
$lstm_cell/StatefulPartitionedCall_10$lstm_cell/StatefulPartitionedCall_102L
$lstm_cell/StatefulPartitionedCall_11$lstm_cell/StatefulPartitionedCall_112L
$lstm_cell/StatefulPartitionedCall_12$lstm_cell/StatefulPartitionedCall_122L
$lstm_cell/StatefulPartitionedCall_13$lstm_cell/StatefulPartitionedCall_132L
$lstm_cell/StatefulPartitionedCall_14$lstm_cell/StatefulPartitionedCall_142L
$lstm_cell/StatefulPartitionedCall_15$lstm_cell/StatefulPartitionedCall_152L
$lstm_cell/StatefulPartitionedCall_16$lstm_cell/StatefulPartitionedCall_162L
$lstm_cell/StatefulPartitionedCall_17$lstm_cell/StatefulPartitionedCall_172L
$lstm_cell/StatefulPartitionedCall_18$lstm_cell/StatefulPartitionedCall_182L
$lstm_cell/StatefulPartitionedCall_19$lstm_cell/StatefulPartitionedCall_192J
#lstm_cell/StatefulPartitionedCall_1#lstm_cell/StatefulPartitionedCall_12J
#lstm_cell/StatefulPartitionedCall_2#lstm_cell/StatefulPartitionedCall_22J
#lstm_cell/StatefulPartitionedCall_3#lstm_cell/StatefulPartitionedCall_32J
#lstm_cell/StatefulPartitionedCall_4#lstm_cell/StatefulPartitionedCall_42J
#lstm_cell/StatefulPartitionedCall_5#lstm_cell/StatefulPartitionedCall_52J
#lstm_cell/StatefulPartitionedCall_6#lstm_cell/StatefulPartitionedCall_62J
#lstm_cell/StatefulPartitionedCall_7#lstm_cell/StatefulPartitionedCall_72J
#lstm_cell/StatefulPartitionedCall_8#lstm_cell/StatefulPartitionedCall_82J
#lstm_cell/StatefulPartitionedCall_9#lstm_cell/StatefulPartitionedCall_92F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2:
rnn/StatefulPartitionedCallrnn/StatefulPartitionedCall:&"
 
_user_specified_name181283:&"
 
_user_specified_name181281:&"
 
_user_specified_name181266:&"
 
_user_specified_name181264:&"
 
_user_specified_name181262:T P
+
_output_shapes
:€€€€€€€€€	
!
_user_specified_name	input_1
¬	
√
while_cond_182433
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_182433___redundant_placeholder04
0while_while_cond_182433___redundant_placeholder14
0while_while_cond_182433___redundant_placeholder24
0while_while_cond_182433___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
ВL
•
?__inference_rnn_layer_call_and_return_conditional_losses_182812

inputs;
(lstm_cell_matmul_readvariableop_resource:		А=
*lstm_cell_matmul_1_readvariableop_resource:	 А8
)lstm_cell_biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€	R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :‘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ b
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ s
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ _
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : №
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_182726*
condR
while_cond_182725*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ _

Identity_1Identitywhile:output:4^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ _

Identity_2Identitywhile:output:5^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ У
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€	: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
м
Х
(__inference_dense_8_layer_call_fn_182821

inputs
unknown: 	
	unknown_0:	
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€	*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_8_layer_call_and_return_conditional_losses_181280o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€	<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:€€€€€€€€€ : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name182817:&"
 
_user_specified_name182815:O K
'
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs
ё%
ќ
while_body_181190
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_181214_0:		А+
while_lstm_cell_181216_0:	 А'
while_lstm_cell_181218_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_181214:		А)
while_lstm_cell_181216:	 А%
while_lstm_cell_181218:	АИҐ'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype0§
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_181214_0while_lstm_cell_181216_0while_lstm_cell_181218_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_180845r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Н
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Н
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"2
while_lstm_cell_181214while_lstm_cell_181214_0"2
while_lstm_cell_181216while_lstm_cell_181216_0"2
while_lstm_cell_181218while_lstm_cell_181218_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:&
"
 
_user_specified_name181218:&	"
 
_user_specified_name181216:&"
 
_user_specified_name181214:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
¬	
√
while_cond_181548
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_181548___redundant_placeholder04
0while_while_cond_181548___redundant_placeholder14
0while_while_cond_181548___redundant_placeholder24
0while_while_cond_181548___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
т9
µ
while_body_182288
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:		АE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	 А@
1while_lstm_cell_biasadd_readvariableop_resource_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:		АC
0while_lstm_cell_matmul_1_readvariableop_resource:	 А>
/while_lstm_cell_biasadd_readvariableop_resource:	АИҐ&while/lstm_cell/BiasAdd/ReadVariableOpҐ%while/lstm_cell/MatMul/ReadVariableOpҐ'while/lstm_cell/MatMul_1/ReadVariableOpИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype0Ч
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:		А*
dtype0і
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЫ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	 А*
dtype0Ы
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:А*
dtype0Ю
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ж
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ А
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:€€€€€€€€€ n
while/lstm_cell/TanhTanhwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ Е
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0while/lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ Д
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ k
while/lstm_cell/Tanh_1Tanhwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Й
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0while/lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : к
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: v
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ £

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
є
у
*__inference_lstm_cell_layer_call_fn_182006

inputs
states_0
states_1
unknown:		А
	unknown_0:	 А
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCall•
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_180993o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€	:€€€€€€€€€ :€€€€€€€€€ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name181998:&"
 
_user_specified_name181996:&"
 
_user_specified_name181994:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ѕ:
Х
?__inference_rnn_layer_call_and_return_conditional_losses_181261

inputs#
lstm_cell_181176:		А#
lstm_cell_181178:	 А
lstm_cell_181180:	А
identity

identity_1

identity_2ИҐ!lstm_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€	R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_maskж
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_181176lstm_cell_181178lstm_cell_181180*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_180845n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : С
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_181176lstm_cell_181178lstm_cell_181180*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_181190*
condR
while_cond_181189*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ _

Identity_1Identitywhile:output:4^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ _

Identity_2Identitywhile:output:5^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€	: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:&"
 
_user_specified_name181180:&"
 
_user_specified_name181178:&"
 
_user_specified_name181176:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Ј
—
$__inference_rnn_layer_call_fn_182228

inputs
unknown:		А
	unknown_0:	 А
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_181620o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name182220:&"
 
_user_specified_name182218:&"
 
_user_specified_name182216:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Ј
—
$__inference_rnn_layer_call_fn_182213

inputs
unknown:		А
	unknown_0:	 А
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCallЙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_181261o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name182205:&"
 
_user_specified_name182203:&"
 
_user_specified_name182201:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Я
Г
E__inference_lstm_cell_layer_call_and_return_conditional_losses_182168

inputs
states_0
states_11
matmul_readvariableop_resource:		А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€	:€€€€€€€€€ :€€€€€€€€€ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
Я
Г
E__inference_lstm_cell_layer_call_and_return_conditional_losses_182104

inputs
states_0
states_11
matmul_readvariableop_resource:		А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€	:€€€€€€€€€ :€€€€€€€€€ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ВL
•
?__inference_rnn_layer_call_and_return_conditional_losses_182666

inputs;
(lstm_cell_matmul_readvariableop_resource:		А=
*lstm_cell_matmul_1_readvariableop_resource:	 А8
)lstm_cell_biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€	R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :‘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ b
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ s
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ _
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : №
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_182580*
condR
while_cond_182579*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ _

Identity_1Identitywhile:output:4^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ _

Identity_2Identitywhile:output:5^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ У
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€	: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:S O
+
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ё%
ќ
while_body_181008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_181032_0:		А+
while_lstm_cell_181034_0:	 А'
while_lstm_cell_181036_0:	А
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_181032:		А)
while_lstm_cell_181034:	 А%
while_lstm_cell_181036:	АИҐ'while/lstm_cell/StatefulPartitionedCallИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€	*
element_dtype0§
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_181032_0while_lstm_cell_181034_0while_lstm_cell_181036_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_180993r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : Б
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:йи“M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: Ж
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: Н
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Н
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:€€€€€€€€€ R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 "-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0")
while_identitywhile/Identity:output:0"2
while_lstm_cell_181032while_lstm_cell_181032_0"2
while_lstm_cell_181034while_lstm_cell_181034_0"2
while_lstm_cell_181036while_lstm_cell_181036_0"0
while_strided_slice_1while_strided_slice_1_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:&
"
 
_user_specified_name181036:&	"
 
_user_specified_name181034:&"
 
_user_specified_name181032:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
к:
Х
?__inference_rnn_layer_call_and_return_conditional_losses_181079

inputs#
lstm_cell_180994:		А#
lstm_cell_180996:	 А
lstm_cell_180998:	А
identity

identity_1

identity_2ИҐ!lstm_cell/StatefulPartitionedCallҐwhileI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_maskж
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_180994lstm_cell_180996lstm_cell_180998*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_180993n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : С
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_180994lstm_cell_180996lstm_cell_180998*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_181008*
condR
while_cond_181007*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ _

Identity_1Identitywhile:output:4^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ _

Identity_2Identitywhile:output:5^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€	: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:&"
 
_user_specified_name180998:&"
 
_user_specified_name180996:&"
 
_user_specified_name180994:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	
 
_user_specified_nameinputs
Я
Г
E__inference_lstm_cell_layer_call_and_return_conditional_losses_182072

inputs
states_0
states_11
matmul_readvariableop_resource:		А3
 matmul_1_readvariableop_resource:	 А.
biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpҐMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:		А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ґ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:€€€€€€€€€ U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:€€€€€€€€€ N
TanhTanhsplit:output:2*
T0*'
_output_shapes
:€€€€€€€€€ U
mul_1MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:€€€€€€€€€ K
Tanh_1Tanh	add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ Y
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:€€€€€€€€€	:€€€€€€€€€ :€€€€€€€€€ : : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_1:QM
'
_output_shapes
:€€€€€€€€€ 
"
_user_specified_name
states_0:O K
'
_output_shapes
:€€€€€€€€€	
 
_user_specified_nameinputs
ѕ
”
$__inference_rnn_layer_call_fn_182183
inputs_0
unknown:		А
	unknown_0:	 А
	unknown_1:	А
identity

identity_1

identity_2ИҐStatefulPartitionedCallЛ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *H
fCRA
?__inference_rnn_layer_call_and_return_conditional_losses_180931o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€	: : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name182175:&"
 
_user_specified_name182173:&"
 
_user_specified_name182171:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	
"
_user_specified_name
inputs_0
¬	
√
while_cond_182287
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_182287___redundant_placeholder04
0while_while_cond_182287___redundant_placeholder14
0while_while_cond_182287___redundant_placeholder24
0while_while_cond_182287___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
Нѓ
І
__inference__traced_save_182979
file_prefixN
;read_disablecopyonread_auto_regressive_rnn_lstm_cell_kernel:		АZ
Gread_1_disablecopyonread_auto_regressive_rnn_lstm_cell_recurrent_kernel:	 АJ
;read_2_disablecopyonread_auto_regressive_rnn_lstm_cell_bias:	АI
7read_3_disablecopyonread_auto_regressive_dense_8_kernel: 	C
5read_4_disablecopyonread_auto_regressive_dense_8_bias:	,
"read_5_disablecopyonread_iteration:	 0
&read_6_disablecopyonread_learning_rate: W
Dread_7_disablecopyonread_adam_m_auto_regressive_rnn_lstm_cell_kernel:		АW
Dread_8_disablecopyonread_adam_v_auto_regressive_rnn_lstm_cell_kernel:		Аa
Nread_9_disablecopyonread_adam_m_auto_regressive_rnn_lstm_cell_recurrent_kernel:	 Аb
Oread_10_disablecopyonread_adam_v_auto_regressive_rnn_lstm_cell_recurrent_kernel:	 АR
Cread_11_disablecopyonread_adam_m_auto_regressive_rnn_lstm_cell_bias:	АR
Cread_12_disablecopyonread_adam_v_auto_regressive_rnn_lstm_cell_bias:	АQ
?read_13_disablecopyonread_adam_m_auto_regressive_dense_8_kernel: 	Q
?read_14_disablecopyonread_adam_v_auto_regressive_dense_8_kernel: 	K
=read_15_disablecopyonread_adam_m_auto_regressive_dense_8_bias:	K
=read_16_disablecopyonread_adam_v_auto_regressive_dense_8_bias:	+
!read_17_disablecopyonread_total_1: +
!read_18_disablecopyonread_count_1: )
read_19_disablecopyonread_total: )
read_20_disablecopyonread_count: 
savev2_const
identity_43ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Н
Read/DisableCopyOnReadDisableCopyOnRead;read_disablecopyonread_auto_regressive_rnn_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 Є
Read/ReadVariableOpReadVariableOp;read_disablecopyonread_auto_regressive_rnn_lstm_cell_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:		А*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:		Аb

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:		АЫ
Read_1/DisableCopyOnReadDisableCopyOnReadGread_1_disablecopyonread_auto_regressive_rnn_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 »
Read_1/ReadVariableOpReadVariableOpGread_1_disablecopyonread_auto_regressive_rnn_lstm_cell_recurrent_kernel^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	 А*
dtype0n

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	 Аd

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:	 АП
Read_2/DisableCopyOnReadDisableCopyOnRead;read_2_disablecopyonread_auto_regressive_rnn_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Є
Read_2/ReadVariableOpReadVariableOp;read_2_disablecopyonread_auto_regressive_rnn_lstm_cell_bias^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0j

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:А`

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЛ
Read_3/DisableCopyOnReadDisableCopyOnRead7read_3_disablecopyonread_auto_regressive_dense_8_kernel"/device:CPU:0*
_output_shapes
 Ј
Read_3/ReadVariableOpReadVariableOp7read_3_disablecopyonread_auto_regressive_dense_8_kernel^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: 	*
dtype0m

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: 	c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

: 	Й
Read_4/DisableCopyOnReadDisableCopyOnRead5read_4_disablecopyonread_auto_regressive_dense_8_bias"/device:CPU:0*
_output_shapes
 ±
Read_4/ReadVariableOpReadVariableOp5read_4_disablecopyonread_auto_regressive_dense_8_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:	v
Read_5/DisableCopyOnReadDisableCopyOnRead"read_5_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ъ
Read_5/ReadVariableOpReadVariableOp"read_5_disablecopyonread_iteration^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_6/DisableCopyOnReadDisableCopyOnRead&read_6_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 Ю
Read_6/ReadVariableOpReadVariableOp&read_6_disablecopyonread_learning_rate^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
: Ш
Read_7/DisableCopyOnReadDisableCopyOnReadDread_7_disablecopyonread_adam_m_auto_regressive_rnn_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ≈
Read_7/ReadVariableOpReadVariableOpDread_7_disablecopyonread_adam_m_auto_regressive_rnn_lstm_cell_kernel^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:		А*
dtype0o
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:		Аf
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:		АШ
Read_8/DisableCopyOnReadDisableCopyOnReadDread_8_disablecopyonread_adam_v_auto_regressive_rnn_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ≈
Read_8/ReadVariableOpReadVariableOpDread_8_disablecopyonread_adam_v_auto_regressive_rnn_lstm_cell_kernel^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:		А*
dtype0o
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:		Аf
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:		АҐ
Read_9/DisableCopyOnReadDisableCopyOnReadNread_9_disablecopyonread_adam_m_auto_regressive_rnn_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ѕ
Read_9/ReadVariableOpReadVariableOpNread_9_disablecopyonread_adam_m_auto_regressive_rnn_lstm_cell_recurrent_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	 А*
dtype0o
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	 Аf
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:	 А§
Read_10/DisableCopyOnReadDisableCopyOnReadOread_10_disablecopyonread_adam_v_auto_regressive_rnn_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 “
Read_10/ReadVariableOpReadVariableOpOread_10_disablecopyonread_adam_v_auto_regressive_rnn_lstm_cell_recurrent_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	 А*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	 Аf
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	 АШ
Read_11/DisableCopyOnReadDisableCopyOnReadCread_11_disablecopyonread_adam_m_auto_regressive_rnn_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ¬
Read_11/ReadVariableOpReadVariableOpCread_11_disablecopyonread_adam_m_auto_regressive_rnn_lstm_cell_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes	
:АШ
Read_12/DisableCopyOnReadDisableCopyOnReadCread_12_disablecopyonread_adam_v_auto_regressive_rnn_lstm_cell_bias"/device:CPU:0*
_output_shapes
 ¬
Read_12/ReadVariableOpReadVariableOpCread_12_disablecopyonread_adam_v_auto_regressive_rnn_lstm_cell_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes	
:АФ
Read_13/DisableCopyOnReadDisableCopyOnRead?read_13_disablecopyonread_adam_m_auto_regressive_dense_8_kernel"/device:CPU:0*
_output_shapes
 Ѕ
Read_13/ReadVariableOpReadVariableOp?read_13_disablecopyonread_adam_m_auto_regressive_dense_8_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: 	*
dtype0o
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: 	e
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes

: 	Ф
Read_14/DisableCopyOnReadDisableCopyOnRead?read_14_disablecopyonread_adam_v_auto_regressive_dense_8_kernel"/device:CPU:0*
_output_shapes
 Ѕ
Read_14/ReadVariableOpReadVariableOp?read_14_disablecopyonread_adam_v_auto_regressive_dense_8_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: 	*
dtype0o
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: 	e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

: 	Т
Read_15/DisableCopyOnReadDisableCopyOnRead=read_15_disablecopyonread_adam_m_auto_regressive_dense_8_bias"/device:CPU:0*
_output_shapes
 ї
Read_15/ReadVariableOpReadVariableOp=read_15_disablecopyonread_adam_m_auto_regressive_dense_8_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0k
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	a
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes
:	Т
Read_16/DisableCopyOnReadDisableCopyOnRead=read_16_disablecopyonread_adam_v_auto_regressive_dense_8_bias"/device:CPU:0*
_output_shapes
 ї
Read_16/ReadVariableOpReadVariableOp=read_16_disablecopyonread_adam_v_auto_regressive_dense_8_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0k
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	a
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:	v
Read_17/DisableCopyOnReadDisableCopyOnRead!read_17_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 Ы
Read_17/ReadVariableOpReadVariableOp!read_17_disablecopyonread_total_1^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_18/DisableCopyOnReadDisableCopyOnRead!read_18_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 Ы
Read_18/ReadVariableOpReadVariableOp!read_18_disablecopyonread_count_1^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_19/DisableCopyOnReadDisableCopyOnReadread_19_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_19/ReadVariableOpReadVariableOpread_19_disablecopyonread_total^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_20/DisableCopyOnReadDisableCopyOnReadread_20_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_20/ReadVariableOpReadVariableOpread_20_disablecopyonread_count^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
: Р	
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*є
valueѓBђB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЩ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value6B4B B B B B B B B B B B B B B B B B B B B B B ґ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *$
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_42Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_43IdentityIdentity_42:output:0^NoOp*
T0*
_output_shapes
: ш
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_43Identity_43:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_20/ReadVariableOpRead_20/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
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
Read_9/ReadVariableOpRead_9/ReadVariableOp:=9

_output_shapes
: 

_user_specified_nameConst:%!

_user_specified_namecount:%!

_user_specified_nametotal:'#
!
_user_specified_name	count_1:'#
!
_user_specified_name	total_1:C?
=
_user_specified_name%#Adam/v/auto_regressive/dense_8/bias:C?
=
_user_specified_name%#Adam/m/auto_regressive/dense_8/bias:EA
?
_user_specified_name'%Adam/v/auto_regressive/dense_8/kernel:EA
?
_user_specified_name'%Adam/m/auto_regressive/dense_8/kernel:IE
C
_user_specified_name+)Adam/v/auto_regressive/rnn/lstm_cell/bias:IE
C
_user_specified_name+)Adam/m/auto_regressive/rnn/lstm_cell/bias:UQ
O
_user_specified_name75Adam/v/auto_regressive/rnn/lstm_cell/recurrent_kernel:U
Q
O
_user_specified_name75Adam/m/auto_regressive/rnn/lstm_cell/recurrent_kernel:K	G
E
_user_specified_name-+Adam/v/auto_regressive/rnn/lstm_cell/kernel:KG
E
_user_specified_name-+Adam/m/auto_regressive/rnn/lstm_cell/kernel:-)
'
_user_specified_namelearning_rate:)%
#
_user_specified_name	iteration:<8
6
_user_specified_nameauto_regressive/dense_8/bias:>:
8
_user_specified_name auto_regressive/dense_8/kernel:B>
<
_user_specified_name$"auto_regressive/rnn/lstm_cell/bias:NJ
H
_user_specified_name0.auto_regressive/rnn/lstm_cell/recurrent_kernel:D@
>
_user_specified_name&$auto_regressive/rnn/lstm_cell/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
¬	
√
while_cond_182725
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_182725___redundant_placeholder04
0while_while_cond_182725___redundant_placeholder14
0while_while_cond_182725___redundant_placeholder24
0while_while_cond_182725___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :€€€€€€€€€ :€€€€€€€€€ : :::::

_output_shapes
::GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:-)
'
_output_shapes
:€€€€€€€€€ :-)
'
_output_shapes
:€€€€€€€€€ :

_output_shapes
: :

_output_shapes
: :PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter
•L
І
?__inference_rnn_layer_call_and_return_conditional_losses_182374
inputs_0;
(lstm_cell_matmul_readvariableop_resource:		А=
*lstm_cell_matmul_1_readvariableop_resource:	 А8
)lstm_cell_biasadd_readvariableop_resource:	А
identity

identity_1

identity_2ИҐ lstm_cell/BiasAdd/ReadVariableOpҐlstm_cell/MatMul/ReadVariableOpҐ!lstm_cell/MatMul_1/ReadVariableOpҐwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:—
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B : w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€ c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::нѕ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:џ
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€і
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€	   а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:й
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€	*
shrink_axis_maskЙ
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:		А*
dtype0Р
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АН
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	 А*
dtype0К
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АГ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0М
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :‘
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ :€€€€€€€€€ *
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:€€€€€€€€€ q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€ b
lstm_cell/TanhTanhlstm_cell/split:output:2*
T0*'
_output_shapes
:€€€€€€€€€ s
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Tanh:y:0*
T0*'
_output_shapes
:€€€€€€€€€ r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:€€€€€€€€€ _
lstm_cell/Tanh_1Tanhlstm_cell/add_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€ w
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Tanh_1:y:0*
T0*'
_output_shapes
:€€€€€€€€€ n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : №
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_182288*
condR
while_cond_182287*K
output_shapes:
8: : : : :€€€€€€€€€ :€€€€€€€€€ : : : : : *
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ÷
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:€€€€€€€€€ *
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ _

Identity_1Identitywhile:output:4^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ _

Identity_2Identitywhile:output:5^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ У
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€	: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€	
"
_user_specified_name
inputs_0
К

ф
0__inference_auto_regressive_layer_call_fn_181866
input_1
unknown:		А
	unknown_0:	 А
	unknown_1:	А
	unknown_2: 	
	unknown_3:	
identityИҐStatefulPartitionedCallМ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€	*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8В *T
fORM
K__inference_auto_regressive_layer_call_and_return_conditional_losses_181502s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€	<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:€€€€€€€€€	: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:&"
 
_user_specified_name181862:&"
 
_user_specified_name181860:&"
 
_user_specified_name181858:&"
 
_user_specified_name181856:&"
 
_user_specified_name181854:T P
+
_output_shapes
:€€€€€€€€€	
!
_user_specified_name	input_1"нL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*≥
serving_defaultЯ
?
input_14
serving_default_input_1:0€€€€€€€€€	@
output_14
StatefulPartitionedCall:0€€€€€€€€€	tensorflow/serving/predict:Х¶
Й
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	lstm_cell
	lstm_rnn
	
dense
	optimizer

signatures"
_tf_keras_model
C
0
1
2
3
4"
trackable_list_wrapper
C
0
1
2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
 
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
«
trace_0
trace_12Р
0__inference_auto_regressive_layer_call_fn_181866
0__inference_auto_regressive_layer_call_fn_181881©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 ztrace_0ztrace_1
э
trace_0
trace_12∆
K__inference_auto_regressive_layer_call_and_return_conditional_losses_181502
K__inference_auto_regressive_layer_call_and_return_conditional_losses_181851©
Ґ≤Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 ztrace_0ztrace_1
ћB…
!__inference__wrapped_model_180783input_1"Ш
С≤Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ш
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses
!_random_generator
"
state_size

kernel
recurrent_kernel
bias"
_tf_keras_layer
√
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
cell
)
state_spec"
_tf_keras_rnn_layer
ї
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
Ь
0
_variables
1_iterations
2_learning_rate
3_index_dict
4
_momentums
5_velocities
6_update_step_xla"
experimentalOptimizer
,
7serving_default"
signature_map
7:5		А2$auto_regressive/rnn/lstm_cell/kernel
A:?	 А2.auto_regressive/rnn/lstm_cell/recurrent_kernel
1:/А2"auto_regressive/rnn/lstm_cell/bias
0:. 	2auto_regressive/dense_8/kernel
*:(	2auto_regressive/dense_8/bias
 "
trackable_list_wrapper
5
0
	1

2"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
зBд
0__inference_auto_regressive_layer_call_fn_181866input_1"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
зBд
0__inference_auto_regressive_layer_call_fn_181881input_1"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ВB€
K__inference_auto_regressive_layer_call_and_return_conditional_losses_181502input_1"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ВB€
K__inference_auto_regressive_layer_call_and_return_conditional_losses_181851input_1"§
Э≤Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
—
?trace_0
@trace_1
Atrace_2
Btrace_32ж
*__inference_lstm_cell_layer_call_fn_181989
*__inference_lstm_cell_layer_call_fn_182006
*__inference_lstm_cell_layer_call_fn_182023
*__inference_lstm_cell_layer_call_fn_182040≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z?trace_0z@trace_1zAtrace_2zBtrace_3
љ
Ctrace_0
Dtrace_1
Etrace_2
Ftrace_32“
E__inference_lstm_cell_layer_call_and_return_conditional_losses_182072
E__inference_lstm_cell_layer_call_and_return_conditional_losses_182104
E__inference_lstm_cell_layer_call_and_return_conditional_losses_182136
E__inference_lstm_cell_layer_call_and_return_conditional_losses_182168≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zCtrace_0zDtrace_1zEtrace_2zFtrace_3
"
_generic_user_object
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
є

Gstates
Hnon_trainable_variables

Ilayers
Jmetrics
Klayer_regularization_losses
Llayer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
б
Mtrace_0
Ntrace_1
Otrace_2
Ptrace_32ц
$__inference_rnn_layer_call_fn_182183
$__inference_rnn_layer_call_fn_182198
$__inference_rnn_layer_call_fn_182213
$__inference_rnn_layer_call_fn_182228џ
‘≤–
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsҐ

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zMtrace_0zNtrace_1zOtrace_2zPtrace_3
Ќ
Qtrace_0
Rtrace_1
Strace_2
Ttrace_32в
?__inference_rnn_layer_call_and_return_conditional_losses_182374
?__inference_rnn_layer_call_and_return_conditional_losses_182520
?__inference_rnn_layer_call_and_return_conditional_losses_182666
?__inference_rnn_layer_call_and_return_conditional_losses_182812џ
‘≤–
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaultsҐ

 
p 

 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zQtrace_0zRtrace_1zStrace_2zTtrace_3
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
в
Ztrace_02≈
(__inference_dense_8_layer_call_fn_182821Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zZtrace_0
э
[trace_02а
C__inference_dense_8_layer_call_and_return_conditional_losses_182831Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z[trace_0
n
10
\1
]2
^3
_4
`5
a6
b7
c8
d9
e10"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
C
\0
^1
`2
b3
d4"
trackable_list_wrapper
C
]0
_1
a2
c3
e4"
trackable_list_wrapper
µ2≤ѓ
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
–BЌ
$__inference_signature_wrapper_181972input_1"Щ
Т≤О
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ
	jinput_1
kwonlydefaults
 
annotations™ *
 
N
f	variables
g	keras_api
	htotal
	icount"
_tf_keras_metric
^
j	variables
k	keras_api
	ltotal
	mcount
n
_fn_kwargs"
_tf_keras_metric
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
юBы
*__inference_lstm_cell_layer_call_fn_181989inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
юBы
*__inference_lstm_cell_layer_call_fn_182006inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
юBы
*__inference_lstm_cell_layer_call_fn_182023inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
юBы
*__inference_lstm_cell_layer_call_fn_182040inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЩBЦ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_182072inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЩBЦ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_182104inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЩBЦ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_182136inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЩBЦ
E__inference_lstm_cell_layer_call_and_return_conditional_losses_182168inputsstates_0states_1"Ѓ
І≤£
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ВB€
$__inference_rnn_layer_call_fn_182183inputs_0" 
√≤њ
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ВB€
$__inference_rnn_layer_call_fn_182198inputs_0" 
√≤њ
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
$__inference_rnn_layer_call_fn_182213inputs" 
√≤њ
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
АBэ
$__inference_rnn_layer_call_fn_182228inputs" 
√≤њ
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЭBЪ
?__inference_rnn_layer_call_and_return_conditional_losses_182374inputs_0" 
√≤њ
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЭBЪ
?__inference_rnn_layer_call_and_return_conditional_losses_182520inputs_0" 
√≤њ
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЫBШ
?__inference_rnn_layer_call_and_return_conditional_losses_182666inputs" 
√≤њ
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЫBШ
?__inference_rnn_layer_call_and_return_conditional_losses_182812inputs" 
√≤њ
FullArgSpecG
args?Ъ<
jinputs
jmask

jtraining
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
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
“Bѕ
(__inference_dense_8_layer_call_fn_182821inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
нBк
C__inference_dense_8_layer_call_and_return_conditional_losses_182831inputs"Ш
С≤Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
<::		А2+Adam/m/auto_regressive/rnn/lstm_cell/kernel
<::		А2+Adam/v/auto_regressive/rnn/lstm_cell/kernel
F:D	 А25Adam/m/auto_regressive/rnn/lstm_cell/recurrent_kernel
F:D	 А25Adam/v/auto_regressive/rnn/lstm_cell/recurrent_kernel
6:4А2)Adam/m/auto_regressive/rnn/lstm_cell/bias
6:4А2)Adam/v/auto_regressive/rnn/lstm_cell/bias
5:3 	2%Adam/m/auto_regressive/dense_8/kernel
5:3 	2%Adam/v/auto_regressive/dense_8/kernel
/:-	2#Adam/m/auto_regressive/dense_8/bias
/:-	2#Adam/v/auto_regressive/dense_8/bias
.
h0
i1"
trackable_list_wrapper
-
f	variables"
_generic_user_object
:  (2total
:  (2count
.
l0
m1"
trackable_list_wrapper
-
j	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapperЫ
!__inference__wrapped_model_180783v4Ґ1
*Ґ'
%К"
input_1€€€€€€€€€	
™ "7™4
2
output_1&К#
output_1€€€€€€€€€	¬
K__inference_auto_regressive_layer_call_and_return_conditional_losses_181502s8Ґ5
.Ґ+
%К"
input_1€€€€€€€€€	
p
™ "0Ґ-
&К#
tensor_0€€€€€€€€€	
Ъ ¬
K__inference_auto_regressive_layer_call_and_return_conditional_losses_181851s8Ґ5
.Ґ+
%К"
input_1€€€€€€€€€	
p 
™ "0Ґ-
&К#
tensor_0€€€€€€€€€	
Ъ Ь
0__inference_auto_regressive_layer_call_fn_181866h8Ґ5
.Ґ+
%К"
input_1€€€€€€€€€	
p
™ "%К"
unknown€€€€€€€€€	Ь
0__inference_auto_regressive_layer_call_fn_181881h8Ґ5
.Ґ+
%К"
input_1€€€€€€€€€	
p 
™ "%К"
unknown€€€€€€€€€	™
C__inference_dense_8_layer_call_and_return_conditional_losses_182831c/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ ",Ґ)
"К
tensor_0€€€€€€€€€	
Ъ Д
(__inference_dense_8_layer_call_fn_182821X/Ґ,
%Ґ"
 К
inputs€€€€€€€€€ 
™ "!К
unknown€€€€€€€€€	ё
E__inference_lstm_cell_layer_call_and_return_conditional_losses_182072ФАҐ}
vҐs
 К
inputs€€€€€€€€€	
KҐH
"К
states_0€€€€€€€€€ 
"К
states_1€€€€€€€€€ 
p
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€ 
SЪP
&К#
tensor_0_1_0€€€€€€€€€ 
&К#
tensor_0_1_1€€€€€€€€€ 
Ъ ё
E__inference_lstm_cell_layer_call_and_return_conditional_losses_182104ФАҐ}
vҐs
 К
inputs€€€€€€€€€	
KҐH
"К
states_0€€€€€€€€€ 
"К
states_1€€€€€€€€€ 
p 
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€ 
SЪP
&К#
tensor_0_1_0€€€€€€€€€ 
&К#
tensor_0_1_1€€€€€€€€€ 
Ъ ё
E__inference_lstm_cell_layer_call_and_return_conditional_losses_182136ФАҐ}
vҐs
 К
inputs€€€€€€€€€	
KЪH
"К
states_0€€€€€€€€€ 
"К
states_1€€€€€€€€€ 
p
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€ 
SЪP
&К#
tensor_0_1_0€€€€€€€€€ 
&К#
tensor_0_1_1€€€€€€€€€ 
Ъ ё
E__inference_lstm_cell_layer_call_and_return_conditional_losses_182168ФАҐ}
vҐs
 К
inputs€€€€€€€€€	
KЪH
"К
states_0€€€€€€€€€ 
"К
states_1€€€€€€€€€ 
p 
™ "ЙҐЕ
~Ґ{
$К!

tensor_0_0€€€€€€€€€ 
SЪP
&К#
tensor_0_1_0€€€€€€€€€ 
&К#
tensor_0_1_1€€€€€€€€€ 
Ъ ±
*__inference_lstm_cell_layer_call_fn_181989ВАҐ}
vҐs
 К
inputs€€€€€€€€€	
KҐH
"К
states_0€€€€€€€€€ 
"К
states_1€€€€€€€€€ 
p
™ "xҐu
"К
tensor_0€€€€€€€€€ 
OЪL
$К!

tensor_1_0€€€€€€€€€ 
$К!

tensor_1_1€€€€€€€€€ ±
*__inference_lstm_cell_layer_call_fn_182006ВАҐ}
vҐs
 К
inputs€€€€€€€€€	
KҐH
"К
states_0€€€€€€€€€ 
"К
states_1€€€€€€€€€ 
p 
™ "xҐu
"К
tensor_0€€€€€€€€€ 
OЪL
$К!

tensor_1_0€€€€€€€€€ 
$К!

tensor_1_1€€€€€€€€€ ±
*__inference_lstm_cell_layer_call_fn_182023ВАҐ}
vҐs
 К
inputs€€€€€€€€€	
KЪH
"К
states_0€€€€€€€€€ 
"К
states_1€€€€€€€€€ 
p
™ "xҐu
"К
tensor_0€€€€€€€€€ 
OЪL
$К!

tensor_1_0€€€€€€€€€ 
$К!

tensor_1_1€€€€€€€€€ ±
*__inference_lstm_cell_layer_call_fn_182040ВАҐ}
vҐs
 К
inputs€€€€€€€€€	
KЪH
"К
states_0€€€€€€€€€ 
"К
states_1€€€€€€€€€ 
p 
™ "xҐu
"К
tensor_0€€€€€€€€€ 
OЪL
$К!

tensor_1_0€€€€€€€€€ 
$К!

tensor_1_1€€€€€€€€€ Я
?__inference_rnn_layer_call_and_return_conditional_losses_182374џSҐP
IҐF
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€	

 
p

 

 
™ "Ґ|
uЪr
$К!

tensor_0_0€€€€€€€€€ 
$К!

tensor_0_1€€€€€€€€€ 
$К!

tensor_0_2€€€€€€€€€ 
Ъ Я
?__inference_rnn_layer_call_and_return_conditional_losses_182520џSҐP
IҐF
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€	

 
p 

 

 
™ "Ґ|
uЪr
$К!

tensor_0_0€€€€€€€€€ 
$К!

tensor_0_1€€€€€€€€€ 
$К!

tensor_0_2€€€€€€€€€ 
Ъ П
?__inference_rnn_layer_call_and_return_conditional_losses_182666ЋCҐ@
9Ґ6
$К!
inputs€€€€€€€€€	

 
p

 

 
™ "Ґ|
uЪr
$К!

tensor_0_0€€€€€€€€€ 
$К!

tensor_0_1€€€€€€€€€ 
$К!

tensor_0_2€€€€€€€€€ 
Ъ П
?__inference_rnn_layer_call_and_return_conditional_losses_182812ЋCҐ@
9Ґ6
$К!
inputs€€€€€€€€€	

 
p 

 

 
™ "Ґ|
uЪr
$К!

tensor_0_0€€€€€€€€€ 
$К!

tensor_0_1€€€€€€€€€ 
$К!

tensor_0_2€€€€€€€€€ 
Ъ ф
$__inference_rnn_layer_call_fn_182183ЋSҐP
IҐF
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€	

 
p

 

 
™ "oЪl
"К
tensor_0€€€€€€€€€ 
"К
tensor_1€€€€€€€€€ 
"К
tensor_2€€€€€€€€€ ф
$__inference_rnn_layer_call_fn_182198ЋSҐP
IҐF
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€	

 
p 

 

 
™ "oЪl
"К
tensor_0€€€€€€€€€ 
"К
tensor_1€€€€€€€€€ 
"К
tensor_2€€€€€€€€€ д
$__inference_rnn_layer_call_fn_182213їCҐ@
9Ґ6
$К!
inputs€€€€€€€€€	

 
p

 

 
™ "oЪl
"К
tensor_0€€€€€€€€€ 
"К
tensor_1€€€€€€€€€ 
"К
tensor_2€€€€€€€€€ д
$__inference_rnn_layer_call_fn_182228їCҐ@
9Ґ6
$К!
inputs€€€€€€€€€	

 
p 

 

 
™ "oЪl
"К
tensor_0€€€€€€€€€ 
"К
tensor_1€€€€€€€€€ 
"К
tensor_2€€€€€€€€€ ™
$__inference_signature_wrapper_181972Б?Ґ<
Ґ 
5™2
0
input_1%К"
input_1€€€€€€€€€	"7™4
2
output_1&К#
output_1€€€€€€€€€	