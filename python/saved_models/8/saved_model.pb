Љм-
Ш о
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
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
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
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
њ
ExtractImagePatches
images"T
patches"T"
ksizes	list(int)(0"
strides	list(int)(0"
rates	list(int)(0"
Ttype:
2	
""
paddingstring:
SAMEVALID
≠
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
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
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
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
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2		
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
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
Т
ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
•
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
-
Sqrt
x"T
y"T"
Ttype:

2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	Р
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
2
StopGradient

input"T
output"T"	
Ttype
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
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
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.8.02v2.8.0-0-g3f878cff5b68≤№)
С
layer_normalization_22/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_namelayer_normalization_22/gamma
К
0layer_normalization_22/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_22/gamma*
_output_shapes	
:А*
dtype0
П
layer_normalization_22/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namelayer_normalization_22/beta
И
/layer_normalization_22/beta/Read/ReadVariableOpReadVariableOplayer_normalization_22/beta*
_output_shapes	
:А*
dtype0
С
layer_normalization_23/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_namelayer_normalization_23/gamma
К
0layer_normalization_23/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_23/gamma*
_output_shapes	
:А*
dtype0
П
layer_normalization_23/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namelayer_normalization_23/beta
И
/layer_normalization_23/beta/Read/ReadVariableOpReadVariableOplayer_normalization_23/beta*
_output_shapes	
:А*
dtype0
|
dense_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА* 
shared_namedense_32/kernel
u
#dense_32/kernel/Read/ReadVariableOpReadVariableOpdense_32/kernel* 
_output_shapes
:
АА*
dtype0
s
dense_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_32/bias
l
!dense_32/bias/Read/ReadVariableOpReadVariableOpdense_32/bias*
_output_shapes	
:А*
dtype0
|
dense_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА* 
shared_namedense_33/kernel
u
#dense_33/kernel/Read/ReadVariableOpReadVariableOpdense_33/kernel* 
_output_shapes
:
АА*
dtype0
s
dense_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_33/bias
l
!dense_33/bias/Read/ReadVariableOpReadVariableOpdense_33/bias*
_output_shapes	
:А*
dtype0
}
dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АƒА* 
shared_namedense_34/kernel
v
#dense_34/kernel/Read/ReadVariableOpReadVariableOpdense_34/kernel*!
_output_shapes
:АƒА*
dtype0
s
dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_34/bias
l
!dense_34/bias/Read/ReadVariableOpReadVariableOpdense_34/bias*
_output_shapes	
:А*
dtype0
{
dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А* 
shared_namedense_35/kernel
t
#dense_35/kernel/Read/ReadVariableOpReadVariableOpdense_35/kernel*
_output_shapes
:	А*
dtype0
r
dense_35/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_35/bias
k
!dense_35/bias/Read/ReadVariableOpReadVariableOpdense_35/bias*
_output_shapes
:*
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
А
normalization_3/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_namenormalization_3/mean
y
(normalization_3/mean/Read/ReadVariableOpReadVariableOpnormalization_3/mean*
_output_shapes
:*
dtype0
И
normalization_3/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namenormalization_3/variance
Б
,normalization_3/variance/Read/ReadVariableOpReadVariableOpnormalization_3/variance*
_output_shapes
:*
dtype0
~
normalization_3/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *&
shared_namenormalization_3/count
w
)normalization_3/count/Read/ReadVariableOpReadVariableOpnormalization_3/count*
_output_shapes
: *
dtype0	
Ь
patch_encoder_3/dense_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*0
shared_name!patch_encoder_3/dense_31/kernel
Х
3patch_encoder_3/dense_31/kernel/Read/ReadVariableOpReadVariableOppatch_encoder_3/dense_31/kernel* 
_output_shapes
:
АА*
dtype0
У
patch_encoder_3/dense_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*.
shared_namepatch_encoder_3/dense_31/bias
М
1patch_encoder_3/dense_31/bias/Read/ReadVariableOpReadVariableOppatch_encoder_3/dense_31/bias*
_output_shapes	
:А*
dtype0
™
&patch_encoder_3/embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ƒА*7
shared_name(&patch_encoder_3/embedding_3/embeddings
£
:patch_encoder_3/embedding_3/embeddings/Read/ReadVariableOpReadVariableOp&patch_encoder_3/embedding_3/embeddings* 
_output_shapes
:
ƒА*
dtype0
™
$multi_head_attention_11/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*5
shared_name&$multi_head_attention_11/query/kernel
£
8multi_head_attention_11/query/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_11/query/kernel*$
_output_shapes
:АА*
dtype0
°
"multi_head_attention_11/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*3
shared_name$"multi_head_attention_11/query/bias
Ъ
6multi_head_attention_11/query/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_11/query/bias*
_output_shapes
:	А*
dtype0
¶
"multi_head_attention_11/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*3
shared_name$"multi_head_attention_11/key/kernel
Я
6multi_head_attention_11/key/kernel/Read/ReadVariableOpReadVariableOp"multi_head_attention_11/key/kernel*$
_output_shapes
:АА*
dtype0
Э
 multi_head_attention_11/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*1
shared_name" multi_head_attention_11/key/bias
Ц
4multi_head_attention_11/key/bias/Read/ReadVariableOpReadVariableOp multi_head_attention_11/key/bias*
_output_shapes
:	А*
dtype0
™
$multi_head_attention_11/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*5
shared_name&$multi_head_attention_11/value/kernel
£
8multi_head_attention_11/value/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_11/value/kernel*$
_output_shapes
:АА*
dtype0
°
"multi_head_attention_11/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*3
shared_name$"multi_head_attention_11/value/bias
Ъ
6multi_head_attention_11/value/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_11/value/bias*
_output_shapes
:	А*
dtype0
ј
/multi_head_attention_11/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*@
shared_name1/multi_head_attention_11/attention_output/kernel
є
Cmulti_head_attention_11/attention_output/kernel/Read/ReadVariableOpReadVariableOp/multi_head_attention_11/attention_output/kernel*$
_output_shapes
:АА*
dtype0
≥
-multi_head_attention_11/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*>
shared_name/-multi_head_attention_11/attention_output/bias
ђ
Amulti_head_attention_11/attention_output/bias/Read/ReadVariableOpReadVariableOp-multi_head_attention_11/attention_output/bias*
_output_shapes	
:А*
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
Є
0model_3/Data_Augmentation/random_flip_3/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*A
shared_name20model_3/Data_Augmentation/random_flip_3/StateVar
±
Dmodel_3/Data_Augmentation/random_flip_3/StateVar/Read/ReadVariableOpReadVariableOp0model_3/Data_Augmentation/random_flip_3/StateVar*
_output_shapes
:*
dtype0	
ј
4model_3/Data_Augmentation/random_rotation_3/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*E
shared_name64model_3/Data_Augmentation/random_rotation_3/StateVar
є
Hmodel_3/Data_Augmentation/random_rotation_3/StateVar/Read/ReadVariableOpReadVariableOp4model_3/Data_Augmentation/random_rotation_3/StateVar*
_output_shapes
:*
dtype0	
Є
0model_3/Data_Augmentation/random_zoom_3/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*A
shared_name20model_3/Data_Augmentation/random_zoom_3/StateVar
±
Dmodel_3/Data_Augmentation/random_zoom_3/StateVar/Read/ReadVariableOpReadVariableOp0model_3/Data_Augmentation/random_zoom_3/StateVar*
_output_shapes
:*
dtype0	
Я
#Adam/layer_normalization_22/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#Adam/layer_normalization_22/gamma/m
Ш
7Adam/layer_normalization_22/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_22/gamma/m*
_output_shapes	
:А*
dtype0
Э
"Adam/layer_normalization_22/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/layer_normalization_22/beta/m
Ц
6Adam/layer_normalization_22/beta/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_22/beta/m*
_output_shapes	
:А*
dtype0
Я
#Adam/layer_normalization_23/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#Adam/layer_normalization_23/gamma/m
Ш
7Adam/layer_normalization_23/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_23/gamma/m*
_output_shapes	
:А*
dtype0
Э
"Adam/layer_normalization_23/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/layer_normalization_23/beta/m
Ц
6Adam/layer_normalization_23/beta/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_23/beta/m*
_output_shapes	
:А*
dtype0
К
Adam/dense_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*'
shared_nameAdam/dense_32/kernel/m
Г
*Adam/dense_32/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_32/kernel/m* 
_output_shapes
:
АА*
dtype0
Б
Adam/dense_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_32/bias/m
z
(Adam/dense_32/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_32/bias/m*
_output_shapes	
:А*
dtype0
К
Adam/dense_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*'
shared_nameAdam/dense_33/kernel/m
Г
*Adam/dense_33/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_33/kernel/m* 
_output_shapes
:
АА*
dtype0
Б
Adam/dense_33/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_33/bias/m
z
(Adam/dense_33/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_33/bias/m*
_output_shapes	
:А*
dtype0
Л
Adam/dense_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АƒА*'
shared_nameAdam/dense_34/kernel/m
Д
*Adam/dense_34/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_34/kernel/m*!
_output_shapes
:АƒА*
dtype0
Б
Adam/dense_34/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_34/bias/m
z
(Adam/dense_34/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_34/bias/m*
_output_shapes	
:А*
dtype0
Й
Adam/dense_35/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*'
shared_nameAdam/dense_35/kernel/m
В
*Adam/dense_35/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_35/kernel/m*
_output_shapes
:	А*
dtype0
А
Adam/dense_35/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_35/bias/m
y
(Adam/dense_35/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_35/bias/m*
_output_shapes
:*
dtype0
™
&Adam/patch_encoder_3/dense_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*7
shared_name(&Adam/patch_encoder_3/dense_31/kernel/m
£
:Adam/patch_encoder_3/dense_31/kernel/m/Read/ReadVariableOpReadVariableOp&Adam/patch_encoder_3/dense_31/kernel/m* 
_output_shapes
:
АА*
dtype0
°
$Adam/patch_encoder_3/dense_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*5
shared_name&$Adam/patch_encoder_3/dense_31/bias/m
Ъ
8Adam/patch_encoder_3/dense_31/bias/m/Read/ReadVariableOpReadVariableOp$Adam/patch_encoder_3/dense_31/bias/m*
_output_shapes	
:А*
dtype0
Є
-Adam/patch_encoder_3/embedding_3/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ƒА*>
shared_name/-Adam/patch_encoder_3/embedding_3/embeddings/m
±
AAdam/patch_encoder_3/embedding_3/embeddings/m/Read/ReadVariableOpReadVariableOp-Adam/patch_encoder_3/embedding_3/embeddings/m* 
_output_shapes
:
ƒА*
dtype0
Є
+Adam/multi_head_attention_11/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*<
shared_name-+Adam/multi_head_attention_11/query/kernel/m
±
?Adam/multi_head_attention_11/query/kernel/m/Read/ReadVariableOpReadVariableOp+Adam/multi_head_attention_11/query/kernel/m*$
_output_shapes
:АА*
dtype0
ѓ
)Adam/multi_head_attention_11/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*:
shared_name+)Adam/multi_head_attention_11/query/bias/m
®
=Adam/multi_head_attention_11/query/bias/m/Read/ReadVariableOpReadVariableOp)Adam/multi_head_attention_11/query/bias/m*
_output_shapes
:	А*
dtype0
і
)Adam/multi_head_attention_11/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*:
shared_name+)Adam/multi_head_attention_11/key/kernel/m
≠
=Adam/multi_head_attention_11/key/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/multi_head_attention_11/key/kernel/m*$
_output_shapes
:АА*
dtype0
Ђ
'Adam/multi_head_attention_11/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*8
shared_name)'Adam/multi_head_attention_11/key/bias/m
§
;Adam/multi_head_attention_11/key/bias/m/Read/ReadVariableOpReadVariableOp'Adam/multi_head_attention_11/key/bias/m*
_output_shapes
:	А*
dtype0
Є
+Adam/multi_head_attention_11/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*<
shared_name-+Adam/multi_head_attention_11/value/kernel/m
±
?Adam/multi_head_attention_11/value/kernel/m/Read/ReadVariableOpReadVariableOp+Adam/multi_head_attention_11/value/kernel/m*$
_output_shapes
:АА*
dtype0
ѓ
)Adam/multi_head_attention_11/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*:
shared_name+)Adam/multi_head_attention_11/value/bias/m
®
=Adam/multi_head_attention_11/value/bias/m/Read/ReadVariableOpReadVariableOp)Adam/multi_head_attention_11/value/bias/m*
_output_shapes
:	А*
dtype0
ќ
6Adam/multi_head_attention_11/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*G
shared_name86Adam/multi_head_attention_11/attention_output/kernel/m
«
JAdam/multi_head_attention_11/attention_output/kernel/m/Read/ReadVariableOpReadVariableOp6Adam/multi_head_attention_11/attention_output/kernel/m*$
_output_shapes
:АА*
dtype0
Ѕ
4Adam/multi_head_attention_11/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*E
shared_name64Adam/multi_head_attention_11/attention_output/bias/m
Ї
HAdam/multi_head_attention_11/attention_output/bias/m/Read/ReadVariableOpReadVariableOp4Adam/multi_head_attention_11/attention_output/bias/m*
_output_shapes	
:А*
dtype0
Я
#Adam/layer_normalization_22/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#Adam/layer_normalization_22/gamma/v
Ш
7Adam/layer_normalization_22/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_22/gamma/v*
_output_shapes	
:А*
dtype0
Э
"Adam/layer_normalization_22/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/layer_normalization_22/beta/v
Ц
6Adam/layer_normalization_22/beta/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_22/beta/v*
_output_shapes	
:А*
dtype0
Я
#Adam/layer_normalization_23/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*4
shared_name%#Adam/layer_normalization_23/gamma/v
Ш
7Adam/layer_normalization_23/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_23/gamma/v*
_output_shapes	
:А*
dtype0
Э
"Adam/layer_normalization_23/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"Adam/layer_normalization_23/beta/v
Ц
6Adam/layer_normalization_23/beta/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_23/beta/v*
_output_shapes	
:А*
dtype0
К
Adam/dense_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*'
shared_nameAdam/dense_32/kernel/v
Г
*Adam/dense_32/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_32/kernel/v* 
_output_shapes
:
АА*
dtype0
Б
Adam/dense_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_32/bias/v
z
(Adam/dense_32/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_32/bias/v*
_output_shapes	
:А*
dtype0
К
Adam/dense_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*'
shared_nameAdam/dense_33/kernel/v
Г
*Adam/dense_33/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_33/kernel/v* 
_output_shapes
:
АА*
dtype0
Б
Adam/dense_33/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_33/bias/v
z
(Adam/dense_33/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_33/bias/v*
_output_shapes	
:А*
dtype0
Л
Adam/dense_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АƒА*'
shared_nameAdam/dense_34/kernel/v
Д
*Adam/dense_34/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_34/kernel/v*!
_output_shapes
:АƒА*
dtype0
Б
Adam/dense_34/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/dense_34/bias/v
z
(Adam/dense_34/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_34/bias/v*
_output_shapes	
:А*
dtype0
Й
Adam/dense_35/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*'
shared_nameAdam/dense_35/kernel/v
В
*Adam/dense_35/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_35/kernel/v*
_output_shapes
:	А*
dtype0
А
Adam/dense_35/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_35/bias/v
y
(Adam/dense_35/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_35/bias/v*
_output_shapes
:*
dtype0
™
&Adam/patch_encoder_3/dense_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*7
shared_name(&Adam/patch_encoder_3/dense_31/kernel/v
£
:Adam/patch_encoder_3/dense_31/kernel/v/Read/ReadVariableOpReadVariableOp&Adam/patch_encoder_3/dense_31/kernel/v* 
_output_shapes
:
АА*
dtype0
°
$Adam/patch_encoder_3/dense_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*5
shared_name&$Adam/patch_encoder_3/dense_31/bias/v
Ъ
8Adam/patch_encoder_3/dense_31/bias/v/Read/ReadVariableOpReadVariableOp$Adam/patch_encoder_3/dense_31/bias/v*
_output_shapes	
:А*
dtype0
Є
-Adam/patch_encoder_3/embedding_3/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ƒА*>
shared_name/-Adam/patch_encoder_3/embedding_3/embeddings/v
±
AAdam/patch_encoder_3/embedding_3/embeddings/v/Read/ReadVariableOpReadVariableOp-Adam/patch_encoder_3/embedding_3/embeddings/v* 
_output_shapes
:
ƒА*
dtype0
Є
+Adam/multi_head_attention_11/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*<
shared_name-+Adam/multi_head_attention_11/query/kernel/v
±
?Adam/multi_head_attention_11/query/kernel/v/Read/ReadVariableOpReadVariableOp+Adam/multi_head_attention_11/query/kernel/v*$
_output_shapes
:АА*
dtype0
ѓ
)Adam/multi_head_attention_11/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*:
shared_name+)Adam/multi_head_attention_11/query/bias/v
®
=Adam/multi_head_attention_11/query/bias/v/Read/ReadVariableOpReadVariableOp)Adam/multi_head_attention_11/query/bias/v*
_output_shapes
:	А*
dtype0
і
)Adam/multi_head_attention_11/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*:
shared_name+)Adam/multi_head_attention_11/key/kernel/v
≠
=Adam/multi_head_attention_11/key/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/multi_head_attention_11/key/kernel/v*$
_output_shapes
:АА*
dtype0
Ђ
'Adam/multi_head_attention_11/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*8
shared_name)'Adam/multi_head_attention_11/key/bias/v
§
;Adam/multi_head_attention_11/key/bias/v/Read/ReadVariableOpReadVariableOp'Adam/multi_head_attention_11/key/bias/v*
_output_shapes
:	А*
dtype0
Є
+Adam/multi_head_attention_11/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*<
shared_name-+Adam/multi_head_attention_11/value/kernel/v
±
?Adam/multi_head_attention_11/value/kernel/v/Read/ReadVariableOpReadVariableOp+Adam/multi_head_attention_11/value/kernel/v*$
_output_shapes
:АА*
dtype0
ѓ
)Adam/multi_head_attention_11/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*:
shared_name+)Adam/multi_head_attention_11/value/bias/v
®
=Adam/multi_head_attention_11/value/bias/v/Read/ReadVariableOpReadVariableOp)Adam/multi_head_attention_11/value/bias/v*
_output_shapes
:	А*
dtype0
ќ
6Adam/multi_head_attention_11/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:АА*G
shared_name86Adam/multi_head_attention_11/attention_output/kernel/v
«
JAdam/multi_head_attention_11/attention_output/kernel/v/Read/ReadVariableOpReadVariableOp6Adam/multi_head_attention_11/attention_output/kernel/v*$
_output_shapes
:АА*
dtype0
Ѕ
4Adam/multi_head_attention_11/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*E
shared_name64Adam/multi_head_attention_11/attention_output/bias/v
Ї
HAdam/multi_head_attention_11/attention_output/bias/v/Read/ReadVariableOpReadVariableOp4Adam/multi_head_attention_11/attention_output/bias/v*
_output_shapes	
:А*
dtype0
j
ConstConst*&
_output_shapes
:*
dtype0*%
valueB*    
l
Const_1Const*&
_output_shapes
:*
dtype0*%
valueB*  А?

NoOpNoOp
св
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*©в
valueЮвBЪв BТв
®
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
layer-12
layer-13
layer-14
layer_with_weights-7
layer-15
layer-16
layer_with_weights-8
layer-17
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
®
layer-0
layer-1
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses* 
ё
$layer_with_weights-0
$layer-0
%layer-1
&layer-2
'layer-3
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses*
О
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses* 
Є
4
projection
5position_embedding
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses*
ѓ
<axis
	=gamma
>beta
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses*
щ
E_query_dense
F
_key_dense
G_value_dense
H_softmax
I_dropout_layer
J_output_dense
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses*
О
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses* 
ѓ
Waxis
	Xgamma
Ybeta
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses*
¶

`kernel
abias
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses*
•
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l_random_generator
m__call__
*n&call_and_return_all_conditional_losses* 
¶

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses*
•
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{_random_generator
|__call__
*}&call_and_return_all_conditional_losses* 
Т
~	variables
trainable_variables
Аregularization_losses
Б	keras_api
В__call__
+Г&call_and_return_all_conditional_losses* 
Ф
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses* 
Ѓ
Кkernel
	Лbias
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses*
ђ
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц_random_generator
Ч__call__
+Ш&call_and_return_all_conditional_losses* 
Ѓ
Щkernel
	Ъbias
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+†&call_and_return_all_conditional_losses*
≥
	°iter
Ґbeta_1
£beta_2

§decay
•learning_rate=mј>mЅXm¬Ym√`mƒam≈om∆pm«	Кm»	Лm…	Щm 	ЪmЋ	©mћ	™mЌ	Ђmќ	ђmѕ	≠m–	Ѓm—	ѓm“	∞m”	±m‘	≤m’	≥m÷=v„>vЎXvўYvЏ`vџav№ovЁpvё	Кvя	Лvа	Щvб	Ъvв	©vг	™vд	Ђvе	ђvж	≠vз	Ѓvи	ѓvй	∞vк	±vл	≤vм	≥vн*
№
¶0
І1
®2
©3
™4
Ђ5
=6
>7
ђ8
≠9
Ѓ10
ѓ11
∞12
±13
≤14
≥15
X16
Y17
`18
a19
o20
p21
К22
Л23
Щ24
Ъ25*
Ѕ
©0
™1
Ђ2
=3
>4
ђ5
≠6
Ѓ7
ѓ8
∞9
±10
≤11
≥12
X13
Y14
`15
a16
o17
p18
К19
Л20
Щ21
Ъ22*
* 
µ
іnon_trainable_variables
µlayers
ґmetrics
 Јlayer_regularization_losses
Єlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

єserving_default* 
Ф
Ї	variables
їtrainable_variables
Љregularization_losses
љ	keras_api
Њ__call__
+њ&call_and_return_all_conditional_losses* 
Ф
ј	variables
Ѕtrainable_variables
¬regularization_losses
√	keras_api
ƒ__call__
+≈&call_and_return_all_conditional_losses* 
* 
* 
* 
Ц
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 
* 
* 
≥
Ћ
_keep_axis
ћ_reduce_axis
Ќ_reduce_axis_mask
ќ_broadcast_shape
	¶mean
¶
adapt_mean
Іvariance
Іadapt_variance

®count
ѕ	keras_api*
Ѓ
–	variables
—trainable_variables
“regularization_losses
”	keras_api
‘_random_generator
’__call__
+÷&call_and_return_all_conditional_losses*
Ѓ
„	variables
Ўtrainable_variables
ўregularization_losses
Џ	keras_api
џ_random_generator
№__call__
+Ё&call_and_return_all_conditional_losses*
Ѓ
ё	variables
яtrainable_variables
аregularization_losses
б	keras_api
в_random_generator
г__call__
+д&call_and_return_all_conditional_losses*

¶0
І1
®2*
* 
* 
Ш
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 
* 
* 
Ѓ
©kernel
	™bias
п	variables
рtrainable_variables
сregularization_losses
т	keras_api
у__call__
+ф&call_and_return_all_conditional_losses*
І
Ђ
embeddings
х	variables
цtrainable_variables
чregularization_losses
ш	keras_api
щ__call__
+ъ&call_and_return_all_conditional_losses*

©0
™1
Ђ2*

©0
™1
Ђ2*
* 
Ш
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
€layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*
* 
* 
* 
ke
VARIABLE_VALUElayer_normalization_22/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_22/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*

=0
>1*

=0
>1*
* 
Ш
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*
* 
* 
б
Еpartial_output_shape
Жfull_output_shape
ђkernel
	≠bias
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses*
б
Нpartial_output_shape
Оfull_output_shape
Ѓkernel
	ѓbias
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses*
б
Хpartial_output_shape
Цfull_output_shape
∞kernel
	±bias
Ч	variables
Шtrainable_variables
Щregularization_losses
Ъ	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses*
Ф
Э	variables
Юtrainable_variables
Яregularization_losses
†	keras_api
°__call__
+Ґ&call_and_return_all_conditional_losses* 
ђ
£	variables
§trainable_variables
•regularization_losses
¶	keras_api
І_random_generator
®__call__
+©&call_and_return_all_conditional_losses* 
б
™partial_output_shape
Ђfull_output_shape
≤kernel
	≥bias
ђ	variables
≠trainable_variables
Ѓregularization_losses
ѓ	keras_api
∞__call__
+±&call_and_return_all_conditional_losses*
D
ђ0
≠1
Ѓ2
ѓ3
∞4
±5
≤6
≥7*
D
ђ0
≠1
Ѓ2
ѓ3
∞4
±5
≤6
≥7*
* 
Ш
≤non_trainable_variables
≥layers
іmetrics
 µlayer_regularization_losses
ґlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
Јnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses* 
* 
* 
* 
ke
VARIABLE_VALUElayer_normalization_23/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_23/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*

X0
Y1*

X0
Y1*
* 
Ш
Љnon_trainable_variables
љlayers
Њmetrics
 њlayer_regularization_losses
јlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_32/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_32/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

`0
a1*

`0
a1*
* 
Ш
Ѕnon_trainable_variables
¬layers
√metrics
 ƒlayer_regularization_losses
≈layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
h	variables
itrainable_variables
jregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_33/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_33/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

o0
p1*

o0
p1*
* 
Ш
Ћnon_trainable_variables
ћlayers
Ќmetrics
 ќlayer_regularization_losses
ѕlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ц
–non_trainable_variables
—layers
“metrics
 ”layer_regularization_losses
‘layer_metrics
w	variables
xtrainable_variables
yregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
Ъ
’non_trainable_variables
÷layers
„metrics
 Ўlayer_regularization_losses
ўlayer_metrics
~	variables
trainable_variables
Аregularization_losses
В__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ь
Џnon_trainable_variables
џlayers
№metrics
 Ёlayer_regularization_losses
ёlayer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_34/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_34/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

К0
Л1*

К0
Л1*
* 
Ю
яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_35/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_35/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

Щ0
Ъ1*

Щ0
Ъ1*
* 
Ю
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+†&call_and_return_all_conditional_losses
'†"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
TN
VARIABLE_VALUEnormalization_3/mean&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEnormalization_3/variance&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEnormalization_3/count&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEpatch_encoder_3/dense_31/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEpatch_encoder_3/dense_31/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&patch_encoder_3/embedding_3/embeddings&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$multi_head_attention_11/query/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE"multi_head_attention_11/query/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_11/key/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE multi_head_attention_11/key/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE$multi_head_attention_11/value/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE"multi_head_attention_11/value/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/multi_head_attention_11/attention_output/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-multi_head_attention_11/attention_output/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*

¶0
І1
®2*
К
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
13
14
15
16
17*

о0
п1*
* 
* 
* 
* 
* 
* 
Ь
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
Ї	variables
їtrainable_variables
Љregularization_losses
Њ__call__
+њ&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ь
хnon_trainable_variables
цlayers
чmetrics
 шlayer_regularization_losses
щlayer_metrics
ј	variables
Ѕtrainable_variables
¬regularization_losses
ƒ__call__
+≈&call_and_return_all_conditional_losses
'≈"call_and_return_conditional_losses* 
* 
* 
* 

0
1* 
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
Ь
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
–	variables
—trainable_variables
“regularization_losses
’__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses* 

€
_generator*
* 
* 
* 
* 
* 
Ь
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
„	variables
Ўtrainable_variables
ўregularization_losses
№__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses* 

Е
_generator*
* 
* 
* 
* 
* 
Ь
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
ё	variables
яtrainable_variables
аregularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses* 

Л
_generator*
* 
* 

¶0
І1
®2*
 
$0
%1
&2
'3*
* 
* 
* 
* 
* 
* 
* 
* 

©0
™1*

©0
™1*
* 
Ю
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
п	variables
рtrainable_variables
сregularization_losses
у__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses*
* 
* 

Ђ0*

Ђ0*
* 
Ю
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
х	variables
цtrainable_variables
чregularization_losses
щ__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses*
* 
* 
* 

40
51*
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

ђ0
≠1*

ђ0
≠1*
* 
Ю
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses*
* 
* 
* 
* 

Ѓ0
ѓ1*

Ѓ0
ѓ1*
* 
Ю
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses*
* 
* 
* 
* 

∞0
±1*

∞0
±1*
* 
Ю
†non_trainable_variables
°layers
Ґmetrics
 £layer_regularization_losses
§layer_metrics
Ч	variables
Шtrainable_variables
Щregularization_losses
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
Ь
•non_trainable_variables
¶layers
Іmetrics
 ®layer_regularization_losses
©layer_metrics
Э	variables
Юtrainable_variables
Яregularization_losses
°__call__
+Ґ&call_and_return_all_conditional_losses
'Ґ"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
Ь
™non_trainable_variables
Ђlayers
ђmetrics
 ≠layer_regularization_losses
Ѓlayer_metrics
£	variables
§trainable_variables
•regularization_losses
®__call__
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

≤0
≥1*

≤0
≥1*
* 
Ю
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
ђ	variables
≠trainable_variables
Ѓregularization_losses
∞__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses*
* 
* 
* 
.
E0
F1
G2
H3
I4
J5*
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
* 
* 
* 
* 
<

іtotal

µcount
ґ	variables
Ј	keras_api*
M

Єtotal

єcount
Ї
_fn_kwargs
ї	variables
Љ	keras_api*
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

љ
_state_var*
* 
* 
* 
* 
* 

Њ
_state_var*
* 
* 
* 
* 
* 

њ
_state_var*
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
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

і0
µ1*

ґ	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Є0
є1*

ї	variables*
™£
VARIABLE_VALUE0model_3/Data_Augmentation/random_flip_3/StateVar_layer_with_weights-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
ЃІ
VARIABLE_VALUE4model_3/Data_Augmentation/random_rotation_3/StateVar_layer_with_weights-0/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
™£
VARIABLE_VALUE0model_3/Data_Augmentation/random_zoom_3/StateVar_layer_with_weights-0/layer-3/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/layer_normalization_22/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/layer_normalization_22/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/layer_normalization_23/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/layer_normalization_23/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_32/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_32/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_33/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_33/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_34/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_34/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_35/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_35/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE&Adam/patch_encoder_3/dense_31/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE$Adam/patch_encoder_3/dense_31/bias/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
КГ
VARIABLE_VALUE-Adam/patch_encoder_3/embedding_3/embeddings/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ИБ
VARIABLE_VALUE+Adam/multi_head_attention_11/query/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUE)Adam/multi_head_attention_11/query/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUE)Adam/multi_head_attention_11/key/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUE'Adam/multi_head_attention_11/key/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЙВ
VARIABLE_VALUE+Adam/multi_head_attention_11/value/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUE)Adam/multi_head_attention_11/value/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ФН
VARIABLE_VALUE6Adam/multi_head_attention_11/attention_output/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ТЛ
VARIABLE_VALUE4Adam/multi_head_attention_11/attention_output/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/layer_normalization_22/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/layer_normalization_22/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE#Adam/layer_normalization_23/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
НЖ
VARIABLE_VALUE"Adam/layer_normalization_23/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_32/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_32/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_33/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_33/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_34/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_34/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/dense_35/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_35/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUE&Adam/patch_encoder_3/dense_31/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUE$Adam/patch_encoder_3/dense_31/bias/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
КГ
VARIABLE_VALUE-Adam/patch_encoder_3/embedding_3/embeddings/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ИБ
VARIABLE_VALUE+Adam/multi_head_attention_11/query/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Е
VARIABLE_VALUE)Adam/multi_head_attention_11/query/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUE)Adam/multi_head_attention_11/key/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUE'Adam/multi_head_attention_11/key/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЙВ
VARIABLE_VALUE+Adam/multi_head_attention_11/value/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЗА
VARIABLE_VALUE)Adam/multi_head_attention_11/value/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ФН
VARIABLE_VALUE6Adam/multi_head_attention_11/attention_output/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ТЛ
VARIABLE_VALUE4Adam/multi_head_attention_11/attention_output/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
О
serving_default_input_4Placeholder*1
_output_shapes
:€€€€€€€€€аа*
dtype0*&
shape:€€€€€€€€€аа
Й
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_4ConstConst_1patch_encoder_3/dense_31/kernelpatch_encoder_3/dense_31/bias&patch_encoder_3/embedding_3/embeddingslayer_normalization_22/gammalayer_normalization_22/beta$multi_head_attention_11/query/kernel"multi_head_attention_11/query/bias"multi_head_attention_11/key/kernel multi_head_attention_11/key/bias$multi_head_attention_11/value/kernel"multi_head_attention_11/value/bias/multi_head_attention_11/attention_output/kernel-multi_head_attention_11/attention_output/biaslayer_normalization_23/gammalayer_normalization_23/betadense_32/kerneldense_32/biasdense_33/kerneldense_33/biasdense_34/kerneldense_34/biasdense_35/kerneldense_35/bias*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference_signature_wrapper_58906
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
–$
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename0layer_normalization_22/gamma/Read/ReadVariableOp/layer_normalization_22/beta/Read/ReadVariableOp0layer_normalization_23/gamma/Read/ReadVariableOp/layer_normalization_23/beta/Read/ReadVariableOp#dense_32/kernel/Read/ReadVariableOp!dense_32/bias/Read/ReadVariableOp#dense_33/kernel/Read/ReadVariableOp!dense_33/bias/Read/ReadVariableOp#dense_34/kernel/Read/ReadVariableOp!dense_34/bias/Read/ReadVariableOp#dense_35/kernel/Read/ReadVariableOp!dense_35/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp(normalization_3/mean/Read/ReadVariableOp,normalization_3/variance/Read/ReadVariableOp)normalization_3/count/Read/ReadVariableOp3patch_encoder_3/dense_31/kernel/Read/ReadVariableOp1patch_encoder_3/dense_31/bias/Read/ReadVariableOp:patch_encoder_3/embedding_3/embeddings/Read/ReadVariableOp8multi_head_attention_11/query/kernel/Read/ReadVariableOp6multi_head_attention_11/query/bias/Read/ReadVariableOp6multi_head_attention_11/key/kernel/Read/ReadVariableOp4multi_head_attention_11/key/bias/Read/ReadVariableOp8multi_head_attention_11/value/kernel/Read/ReadVariableOp6multi_head_attention_11/value/bias/Read/ReadVariableOpCmulti_head_attention_11/attention_output/kernel/Read/ReadVariableOpAmulti_head_attention_11/attention_output/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpDmodel_3/Data_Augmentation/random_flip_3/StateVar/Read/ReadVariableOpHmodel_3/Data_Augmentation/random_rotation_3/StateVar/Read/ReadVariableOpDmodel_3/Data_Augmentation/random_zoom_3/StateVar/Read/ReadVariableOp7Adam/layer_normalization_22/gamma/m/Read/ReadVariableOp6Adam/layer_normalization_22/beta/m/Read/ReadVariableOp7Adam/layer_normalization_23/gamma/m/Read/ReadVariableOp6Adam/layer_normalization_23/beta/m/Read/ReadVariableOp*Adam/dense_32/kernel/m/Read/ReadVariableOp(Adam/dense_32/bias/m/Read/ReadVariableOp*Adam/dense_33/kernel/m/Read/ReadVariableOp(Adam/dense_33/bias/m/Read/ReadVariableOp*Adam/dense_34/kernel/m/Read/ReadVariableOp(Adam/dense_34/bias/m/Read/ReadVariableOp*Adam/dense_35/kernel/m/Read/ReadVariableOp(Adam/dense_35/bias/m/Read/ReadVariableOp:Adam/patch_encoder_3/dense_31/kernel/m/Read/ReadVariableOp8Adam/patch_encoder_3/dense_31/bias/m/Read/ReadVariableOpAAdam/patch_encoder_3/embedding_3/embeddings/m/Read/ReadVariableOp?Adam/multi_head_attention_11/query/kernel/m/Read/ReadVariableOp=Adam/multi_head_attention_11/query/bias/m/Read/ReadVariableOp=Adam/multi_head_attention_11/key/kernel/m/Read/ReadVariableOp;Adam/multi_head_attention_11/key/bias/m/Read/ReadVariableOp?Adam/multi_head_attention_11/value/kernel/m/Read/ReadVariableOp=Adam/multi_head_attention_11/value/bias/m/Read/ReadVariableOpJAdam/multi_head_attention_11/attention_output/kernel/m/Read/ReadVariableOpHAdam/multi_head_attention_11/attention_output/bias/m/Read/ReadVariableOp7Adam/layer_normalization_22/gamma/v/Read/ReadVariableOp6Adam/layer_normalization_22/beta/v/Read/ReadVariableOp7Adam/layer_normalization_23/gamma/v/Read/ReadVariableOp6Adam/layer_normalization_23/beta/v/Read/ReadVariableOp*Adam/dense_32/kernel/v/Read/ReadVariableOp(Adam/dense_32/bias/v/Read/ReadVariableOp*Adam/dense_33/kernel/v/Read/ReadVariableOp(Adam/dense_33/bias/v/Read/ReadVariableOp*Adam/dense_34/kernel/v/Read/ReadVariableOp(Adam/dense_34/bias/v/Read/ReadVariableOp*Adam/dense_35/kernel/v/Read/ReadVariableOp(Adam/dense_35/bias/v/Read/ReadVariableOp:Adam/patch_encoder_3/dense_31/kernel/v/Read/ReadVariableOp8Adam/patch_encoder_3/dense_31/bias/v/Read/ReadVariableOpAAdam/patch_encoder_3/embedding_3/embeddings/v/Read/ReadVariableOp?Adam/multi_head_attention_11/query/kernel/v/Read/ReadVariableOp=Adam/multi_head_attention_11/query/bias/v/Read/ReadVariableOp=Adam/multi_head_attention_11/key/kernel/v/Read/ReadVariableOp;Adam/multi_head_attention_11/key/bias/v/Read/ReadVariableOp?Adam/multi_head_attention_11/value/kernel/v/Read/ReadVariableOp=Adam/multi_head_attention_11/value/bias/v/Read/ReadVariableOpJAdam/multi_head_attention_11/attention_output/kernel/v/Read/ReadVariableOpHAdam/multi_head_attention_11/attention_output/bias/v/Read/ReadVariableOpConst_2*a
TinZ
X2V					*
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
GPU 2J 8В *'
f"R 
__inference__traced_save_60525
є
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer_normalization_22/gammalayer_normalization_22/betalayer_normalization_23/gammalayer_normalization_23/betadense_32/kerneldense_32/biasdense_33/kerneldense_33/biasdense_34/kerneldense_34/biasdense_35/kerneldense_35/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratenormalization_3/meannormalization_3/variancenormalization_3/countpatch_encoder_3/dense_31/kernelpatch_encoder_3/dense_31/bias&patch_encoder_3/embedding_3/embeddings$multi_head_attention_11/query/kernel"multi_head_attention_11/query/bias"multi_head_attention_11/key/kernel multi_head_attention_11/key/bias$multi_head_attention_11/value/kernel"multi_head_attention_11/value/bias/multi_head_attention_11/attention_output/kernel-multi_head_attention_11/attention_output/biastotalcounttotal_1count_10model_3/Data_Augmentation/random_flip_3/StateVar4model_3/Data_Augmentation/random_rotation_3/StateVar0model_3/Data_Augmentation/random_zoom_3/StateVar#Adam/layer_normalization_22/gamma/m"Adam/layer_normalization_22/beta/m#Adam/layer_normalization_23/gamma/m"Adam/layer_normalization_23/beta/mAdam/dense_32/kernel/mAdam/dense_32/bias/mAdam/dense_33/kernel/mAdam/dense_33/bias/mAdam/dense_34/kernel/mAdam/dense_34/bias/mAdam/dense_35/kernel/mAdam/dense_35/bias/m&Adam/patch_encoder_3/dense_31/kernel/m$Adam/patch_encoder_3/dense_31/bias/m-Adam/patch_encoder_3/embedding_3/embeddings/m+Adam/multi_head_attention_11/query/kernel/m)Adam/multi_head_attention_11/query/bias/m)Adam/multi_head_attention_11/key/kernel/m'Adam/multi_head_attention_11/key/bias/m+Adam/multi_head_attention_11/value/kernel/m)Adam/multi_head_attention_11/value/bias/m6Adam/multi_head_attention_11/attention_output/kernel/m4Adam/multi_head_attention_11/attention_output/bias/m#Adam/layer_normalization_22/gamma/v"Adam/layer_normalization_22/beta/v#Adam/layer_normalization_23/gamma/v"Adam/layer_normalization_23/beta/vAdam/dense_32/kernel/vAdam/dense_32/bias/vAdam/dense_33/kernel/vAdam/dense_33/bias/vAdam/dense_34/kernel/vAdam/dense_34/bias/vAdam/dense_35/kernel/vAdam/dense_35/bias/v&Adam/patch_encoder_3/dense_31/kernel/v$Adam/patch_encoder_3/dense_31/bias/v-Adam/patch_encoder_3/embedding_3/embeddings/v+Adam/multi_head_attention_11/query/kernel/v)Adam/multi_head_attention_11/query/bias/v)Adam/multi_head_attention_11/key/kernel/v'Adam/multi_head_attention_11/key/bias/v+Adam/multi_head_attention_11/value/kernel/v)Adam/multi_head_attention_11/value/bias/v6Adam/multi_head_attention_11/attention_output/kernel/v4Adam/multi_head_attention_11/attention_output/bias/v*`
TinY
W2U*
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
GPU 2J 8В **
f%R#
!__inference__traced_restore_60787жн%
ж)
З
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_59539	
query	
valueC
+query_einsum_einsum_readvariableop_resource:АА4
!query_add_readvariableop_resource:	АA
)key_einsum_einsum_readvariableop_resource:АА2
key_add_readvariableop_resource:	АC
+value_einsum_einsum_readvariableop_resource:АА4
!value_add_readvariableop_resource:	АN
6attention_output_einsum_einsum_readvariableop_resource:АА;
,attention_output_add_readvariableop_resource:	А
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpФ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0≤
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0О
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАР
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Ѓ
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	А*
dtype0И
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАФ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0≤
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0О
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *уµ=e
MulMulquery/add:z:0Mul/y:output:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАС
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒƒ*
equationaecd,abcd->acben
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*1
_output_shapes
:€€€€€€€€€ƒƒІ
einsum_1/EinsumEinsumsoftmax/Softmax:softmax:0value/add:z:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationacbe,aecd->abcd™
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0„
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:€€€€€€€€€ƒА*
equationabcd,cde->abeН
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0Ђ
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАm
IdentityIdentityattention_output/add:z:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒАЎ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:€€€€€€€€€ƒА:€€€€€€€€€ƒА: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:T P
-
_output_shapes
:€€€€€€€€€ƒА

_user_specified_namequery:TP
-
_output_shapes
:€€€€€€€€€ƒА

_user_specified_namevalue
н
T
.__inference_Resize_Rescale_layer_call_fn_56343
resizing_3_input
identity»
PartitionedCallPartitionedCallresizing_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56340j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:c _
1
_output_shapes
:€€€€€€€€€аа
*
_user_specified_nameresizing_3_input
£

d
E__inference_dropout_26_layer_call_and_return_conditional_losses_59716

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Т
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=ђ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАu
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:€€€€€€€€€ƒАo
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА_
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€ƒА:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
фV
—
B__inference_model_3_layer_call_and_return_conditional_losses_57956
input_4
data_augmentation_57883
data_augmentation_57885%
data_augmentation_57887:	%
data_augmentation_57889:	%
data_augmentation_57891:	)
patch_encoder_3_57895:
АА$
patch_encoder_3_57897:	А)
patch_encoder_3_57899:
ƒА+
layer_normalization_22_57902:	А+
layer_normalization_22_57904:	А5
multi_head_attention_11_57907:АА0
multi_head_attention_11_57909:	А5
multi_head_attention_11_57911:АА0
multi_head_attention_11_57913:	А5
multi_head_attention_11_57915:АА0
multi_head_attention_11_57917:	А5
multi_head_attention_11_57919:АА,
multi_head_attention_11_57921:	А+
layer_normalization_23_57925:	А+
layer_normalization_23_57927:	А"
dense_32_57930:
АА
dense_32_57932:	А"
dense_33_57936:
АА
dense_33_57938:	А#
dense_34_57944:АƒА
dense_34_57946:	А!
dense_35_57950:	А
dense_35_57952:
identityИҐ)Data_Augmentation/StatefulPartitionedCallҐ dense_32/StatefulPartitionedCallҐ dense_33/StatefulPartitionedCallҐ dense_34/StatefulPartitionedCallҐ dense_35/StatefulPartitionedCallҐ"dropout_25/StatefulPartitionedCallҐ"dropout_26/StatefulPartitionedCallҐ"dropout_27/StatefulPartitionedCallҐ.layer_normalization_22/StatefulPartitionedCallҐ.layer_normalization_23/StatefulPartitionedCallҐ/multi_head_attention_11/StatefulPartitionedCallҐ'patch_encoder_3/StatefulPartitionedCallќ
Resize_Rescale/PartitionedCallPartitionedCallinput_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56368Ж
)Data_Augmentation/StatefulPartitionedCallStatefulPartitionedCall'Resize_Rescale/PartitionedCall:output:0data_augmentation_57883data_augmentation_57885data_augmentation_57887data_augmentation_57889data_augmentation_57891*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56853у
patches_7/PartitionedCallPartitionedCall2Data_Augmentation/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_patches_7_layer_call_and_return_conditional_losses_56942ƒ
'patch_encoder_3/StatefulPartitionedCallStatefulPartitionedCall"patches_7/PartitionedCall:output:0patch_encoder_3_57895patch_encoder_3_57897patch_encoder_3_57899*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_patch_encoder_3_layer_call_and_return_conditional_losses_56984’
.layer_normalization_22/StatefulPartitionedCallStatefulPartitionedCall0patch_encoder_3/StatefulPartitionedCall:output:0layer_normalization_22_57902layer_normalization_22_57904*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_57014а
/multi_head_attention_11/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_22/StatefulPartitionedCall:output:07layer_normalization_22/StatefulPartitionedCall:output:0multi_head_attention_11_57907multi_head_attention_11_57909multi_head_attention_11_57911multi_head_attention_11_57913multi_head_attention_11_57915multi_head_attention_11_57917multi_head_attention_11_57919multi_head_attention_11_57921*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_57507Ю
add_22/PartitionedCallPartitionedCall8multi_head_attention_11/StatefulPartitionedCall:output:00patch_encoder_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_add_22_layer_call_and_return_conditional_losses_57079ƒ
.layer_normalization_23/StatefulPartitionedCallStatefulPartitionedCalladd_22/PartitionedCall:output:0layer_normalization_23_57925layer_normalization_23_57927*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_57103§
 dense_32/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_23/StatefulPartitionedCall:output:0dense_32_57930dense_32_57932*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_32_layer_call_and_return_conditional_losses_57140ф
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_57417Ш
 dense_33/StatefulPartitionedCallStatefulPartitionedCall+dropout_25/StatefulPartitionedCall:output:0dense_33_57936dense_33_57938*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_57184Щ
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall)dense_33/StatefulPartitionedCall:output:0#^dropout_25/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_26_layer_call_and_return_conditional_losses_57384А
add_23/PartitionedCallPartitionedCall+dropout_26/StatefulPartitionedCall:output:0add_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_add_23_layer_call_and_return_conditional_losses_57203‘
flatten_3/PartitionedCallPartitionedCalladd_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€Аƒ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_57211К
 dense_34/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_34_57944dense_34_57946*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_57224Ф
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0#^dropout_26/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_27_layer_call_and_return_conditional_losses_57338Т
 dense_35/StatefulPartitionedCallStatefulPartitionedCall+dropout_27/StatefulPartitionedCall:output:0dense_35_57950dense_35_57952*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_57248x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ђ
NoOpNoOp*^Data_Augmentation/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall#^dropout_27/StatefulPartitionedCall/^layer_normalization_22/StatefulPartitionedCall/^layer_normalization_23/StatefulPartitionedCall0^multi_head_attention_11/StatefulPartitionedCall(^patch_encoder_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*И
_input_shapesw
u:€€€€€€€€€аа::: : : : : : : : : : : : : : : : : : : : : : : : : : 2V
)Data_Augmentation/StatefulPartitionedCall)Data_Augmentation/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2H
"dropout_26/StatefulPartitionedCall"dropout_26/StatefulPartitionedCall2H
"dropout_27/StatefulPartitionedCall"dropout_27/StatefulPartitionedCall2`
.layer_normalization_22/StatefulPartitionedCall.layer_normalization_22/StatefulPartitionedCall2`
.layer_normalization_23/StatefulPartitionedCall.layer_normalization_23/StatefulPartitionedCall2b
/multi_head_attention_11/StatefulPartitionedCall/multi_head_attention_11/StatefulPartitionedCall2R
'patch_encoder_3/StatefulPartitionedCall'patch_encoder_3/StatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€аа
!
_user_specified_name	input_4:,(
&
_output_shapes
::,(
&
_output_shapes
:
§У
©
B__inference_model_3_layer_call_and_return_conditional_losses_58282

inputs+
'data_augmentation_normalization_3_sub_y,
(data_augmentation_normalization_3_sqrt_xN
:patch_encoder_3_dense_31_tensordot_readvariableop_resource:
ААG
8patch_encoder_3_dense_31_biasadd_readvariableop_resource:	АF
2patch_encoder_3_embedding_3_embedding_lookup_58134:
ƒАK
<layer_normalization_22_batchnorm_mul_readvariableop_resource:	АG
8layer_normalization_22_batchnorm_readvariableop_resource:	А[
Cmulti_head_attention_11_query_einsum_einsum_readvariableop_resource:ААL
9multi_head_attention_11_query_add_readvariableop_resource:	АY
Amulti_head_attention_11_key_einsum_einsum_readvariableop_resource:ААJ
7multi_head_attention_11_key_add_readvariableop_resource:	А[
Cmulti_head_attention_11_value_einsum_einsum_readvariableop_resource:ААL
9multi_head_attention_11_value_add_readvariableop_resource:	Аf
Nmulti_head_attention_11_attention_output_einsum_einsum_readvariableop_resource:ААS
Dmulti_head_attention_11_attention_output_add_readvariableop_resource:	АK
<layer_normalization_23_batchnorm_mul_readvariableop_resource:	АG
8layer_normalization_23_batchnorm_readvariableop_resource:	А>
*dense_32_tensordot_readvariableop_resource:
АА7
(dense_32_biasadd_readvariableop_resource:	А>
*dense_33_tensordot_readvariableop_resource:
АА7
(dense_33_biasadd_readvariableop_resource:	А<
'dense_34_matmul_readvariableop_resource:АƒА7
(dense_34_biasadd_readvariableop_resource:	А:
'dense_35_matmul_readvariableop_resource:	А6
(dense_35_biasadd_readvariableop_resource:
identityИҐdense_32/BiasAdd/ReadVariableOpҐ!dense_32/Tensordot/ReadVariableOpҐdense_33/BiasAdd/ReadVariableOpҐ!dense_33/Tensordot/ReadVariableOpҐdense_34/BiasAdd/ReadVariableOpҐdense_34/MatMul/ReadVariableOpҐdense_35/BiasAdd/ReadVariableOpҐdense_35/MatMul/ReadVariableOpҐ/layer_normalization_22/batchnorm/ReadVariableOpҐ3layer_normalization_22/batchnorm/mul/ReadVariableOpҐ/layer_normalization_23/batchnorm/ReadVariableOpҐ3layer_normalization_23/batchnorm/mul/ReadVariableOpҐ;multi_head_attention_11/attention_output/add/ReadVariableOpҐEmulti_head_attention_11/attention_output/einsum/Einsum/ReadVariableOpҐ.multi_head_attention_11/key/add/ReadVariableOpҐ8multi_head_attention_11/key/einsum/Einsum/ReadVariableOpҐ0multi_head_attention_11/query/add/ReadVariableOpҐ:multi_head_attention_11/query/einsum/Einsum/ReadVariableOpҐ0multi_head_attention_11/value/add/ReadVariableOpҐ:multi_head_attention_11/value/einsum/Einsum/ReadVariableOpҐ/patch_encoder_3/dense_31/BiasAdd/ReadVariableOpҐ1patch_encoder_3/dense_31/Tensordot/ReadVariableOpҐ,patch_encoder_3/embedding_3/embedding_lookupv
%Resize_Rescale/resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"а   а   ѕ
/Resize_Rescale/resizing_3/resize/ResizeBilinearResizeBilinearinputs.Resize_Rescale/resizing_3/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа*
half_pixel_centers(f
!Resize_Rescale/rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;h
#Resize_Rescale/rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ѕ
Resize_Rescale/rescaling_3/mulMul@Resize_Rescale/resizing_3/resize/ResizeBilinear:resized_images:0*Resize_Rescale/rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааµ
Resize_Rescale/rescaling_3/addAddV2"Resize_Rescale/rescaling_3/mul:z:0,Resize_Rescale/rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааµ
%Data_Augmentation/normalization_3/subSub"Resize_Rescale/rescaling_3/add:z:0'data_augmentation_normalization_3_sub_y*
T0*1
_output_shapes
:€€€€€€€€€ааЙ
&Data_Augmentation/normalization_3/SqrtSqrt(data_augmentation_normalization_3_sqrt_x*
T0*&
_output_shapes
:p
+Data_Augmentation/normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3«
)Data_Augmentation/normalization_3/MaximumMaximum*Data_Augmentation/normalization_3/Sqrt:y:04Data_Augmentation/normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
: 
)Data_Augmentation/normalization_3/truedivRealDiv)Data_Augmentation/normalization_3/sub:z:0-Data_Augmentation/normalization_3/Maximum:z:0*
T0*1
_output_shapes
:€€€€€€€€€ааl
patches_7/ShapeShape-Data_Augmentation/normalization_3/truediv:z:0*
T0*
_output_shapes
:g
patches_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
patches_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
patches_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
patches_7/strided_sliceStridedSlicepatches_7/Shape:output:0&patches_7/strided_slice/stack:output:0(patches_7/strided_slice/stack_1:output:0(patches_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskо
patches_7/ExtractImagePatchesExtractImagePatches-Data_Augmentation/normalization_3/truediv:z:0*
T0*0
_output_shapes
:€€€€€€€€€А*
ksizes
*
paddingVALID*
rates
*
strides
d
patches_7/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€\
patches_7/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :АЈ
patches_7/Reshape/shapePack patches_7/strided_slice:output:0"patches_7/Reshape/shape/1:output:0"patches_7/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:І
patches_7/ReshapeReshape'patches_7/ExtractImagePatches:patches:0 patches_7/Reshape/shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А]
patch_encoder_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : ^
patch_encoder_3/range/limitConst*
_output_shapes
: *
dtype0*
value
B :ƒ]
patch_encoder_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :≠
patch_encoder_3/rangeRange$patch_encoder_3/range/start:output:0$patch_encoder_3/range/limit:output:0$patch_encoder_3/range/delta:output:0*
_output_shapes	
:ƒЃ
1patch_encoder_3/dense_31/Tensordot/ReadVariableOpReadVariableOp:patch_encoder_3_dense_31_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0q
'patch_encoder_3/dense_31/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:x
'patch_encoder_3/dense_31/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       r
(patch_encoder_3/dense_31/Tensordot/ShapeShapepatches_7/Reshape:output:0*
T0*
_output_shapes
:r
0patch_encoder_3/dense_31/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Я
+patch_encoder_3/dense_31/Tensordot/GatherV2GatherV21patch_encoder_3/dense_31/Tensordot/Shape:output:00patch_encoder_3/dense_31/Tensordot/free:output:09patch_encoder_3/dense_31/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:t
2patch_encoder_3/dense_31/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : £
-patch_encoder_3/dense_31/Tensordot/GatherV2_1GatherV21patch_encoder_3/dense_31/Tensordot/Shape:output:00patch_encoder_3/dense_31/Tensordot/axes:output:0;patch_encoder_3/dense_31/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
(patch_encoder_3/dense_31/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: є
'patch_encoder_3/dense_31/Tensordot/ProdProd4patch_encoder_3/dense_31/Tensordot/GatherV2:output:01patch_encoder_3/dense_31/Tensordot/Const:output:0*
T0*
_output_shapes
: t
*patch_encoder_3/dense_31/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: њ
)patch_encoder_3/dense_31/Tensordot/Prod_1Prod6patch_encoder_3/dense_31/Tensordot/GatherV2_1:output:03patch_encoder_3/dense_31/Tensordot/Const_1:output:0*
T0*
_output_shapes
: p
.patch_encoder_3/dense_31/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : А
)patch_encoder_3/dense_31/Tensordot/concatConcatV20patch_encoder_3/dense_31/Tensordot/free:output:00patch_encoder_3/dense_31/Tensordot/axes:output:07patch_encoder_3/dense_31/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ƒ
(patch_encoder_3/dense_31/Tensordot/stackPack0patch_encoder_3/dense_31/Tensordot/Prod:output:02patch_encoder_3/dense_31/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:…
,patch_encoder_3/dense_31/Tensordot/transpose	Transposepatches_7/Reshape:output:02patch_encoder_3/dense_31/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А’
*patch_encoder_3/dense_31/Tensordot/ReshapeReshape0patch_encoder_3/dense_31/Tensordot/transpose:y:01patch_encoder_3/dense_31/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€÷
)patch_encoder_3/dense_31/Tensordot/MatMulMatMul3patch_encoder_3/dense_31/Tensordot/Reshape:output:09patch_encoder_3/dense_31/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аu
*patch_encoder_3/dense_31/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аr
0patch_encoder_3/dense_31/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Л
+patch_encoder_3/dense_31/Tensordot/concat_1ConcatV24patch_encoder_3/dense_31/Tensordot/GatherV2:output:03patch_encoder_3/dense_31/Tensordot/Const_2:output:09patch_encoder_3/dense_31/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ў
"patch_encoder_3/dense_31/TensordotReshape3patch_encoder_3/dense_31/Tensordot/MatMul:product:04patch_encoder_3/dense_31/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
/patch_encoder_3/dense_31/BiasAdd/ReadVariableOpReadVariableOp8patch_encoder_3_dense_31_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0—
 patch_encoder_3/dense_31/BiasAddBiasAdd+patch_encoder_3/dense_31/Tensordot:output:07patch_encoder_3/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АШ
,patch_encoder_3/embedding_3/embedding_lookupResourceGather2patch_encoder_3_embedding_3_embedding_lookup_58134patch_encoder_3/range:output:0*
Tindices0*E
_class;
97loc:@patch_encoder_3/embedding_3/embedding_lookup/58134* 
_output_shapes
:
ƒА*
dtype0к
5patch_encoder_3/embedding_3/embedding_lookup/IdentityIdentity5patch_encoder_3/embedding_3/embedding_lookup:output:0*
T0*E
_class;
97loc:@patch_encoder_3/embedding_3/embedding_lookup/58134* 
_output_shapes
:
ƒАЃ
7patch_encoder_3/embedding_3/embedding_lookup/Identity_1Identity>patch_encoder_3/embedding_3/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
ƒАЅ
patch_encoder_3/addAddV2)patch_encoder_3/dense_31/BiasAdd:output:0@patch_encoder_3/embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА
5layer_normalization_22/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ћ
#layer_normalization_22/moments/meanMeanpatch_encoder_3/add:z:0>layer_normalization_22/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(†
+layer_normalization_22/moments/StopGradientStopGradient,layer_normalization_22/moments/mean:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒћ
0layer_normalization_22/moments/SquaredDifferenceSquaredDifferencepatch_encoder_3/add:z:04layer_normalization_22/moments/StopGradient:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАГ
9layer_normalization_22/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:с
'layer_normalization_22/moments/varianceMean4layer_normalization_22/moments/SquaredDifference:z:0Blayer_normalization_22/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(k
&layer_normalization_22/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5«
$layer_normalization_22/batchnorm/addAddV20layer_normalization_22/moments/variance:output:0/layer_normalization_22/batchnorm/add/y:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒР
&layer_normalization_22/batchnorm/RsqrtRsqrt(layer_normalization_22/batchnorm/add:z:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ≠
3layer_normalization_22/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_22_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0ћ
$layer_normalization_22/batchnorm/mulMul*layer_normalization_22/batchnorm/Rsqrt:y:0;layer_normalization_22/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА®
&layer_normalization_22/batchnorm/mul_1Mulpatch_encoder_3/add:z:0(layer_normalization_22/batchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАљ
&layer_normalization_22/batchnorm/mul_2Mul,layer_normalization_22/moments/mean:output:0(layer_normalization_22/batchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА•
/layer_normalization_22/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_22_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0»
$layer_normalization_22/batchnorm/subSub7layer_normalization_22/batchnorm/ReadVariableOp:value:0*layer_normalization_22/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАљ
&layer_normalization_22/batchnorm/add_1AddV2*layer_normalization_22/batchnorm/mul_1:z:0(layer_normalization_22/batchnorm/sub:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАƒ
:multi_head_attention_11/query/einsum/Einsum/ReadVariableOpReadVariableOpCmulti_head_attention_11_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0З
+multi_head_attention_11/query/einsum/EinsumEinsum*layer_normalization_22/batchnorm/add_1:z:0Bmulti_head_attention_11/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abdeЂ
0multi_head_attention_11/query/add/ReadVariableOpReadVariableOp9multi_head_attention_11_query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0÷
!multi_head_attention_11/query/addAddV24multi_head_attention_11/query/einsum/Einsum:output:08multi_head_attention_11/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАј
8multi_head_attention_11/key/einsum/Einsum/ReadVariableOpReadVariableOpAmulti_head_attention_11_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Г
)multi_head_attention_11/key/einsum/EinsumEinsum*layer_normalization_22/batchnorm/add_1:z:0@multi_head_attention_11/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abdeІ
.multi_head_attention_11/key/add/ReadVariableOpReadVariableOp7multi_head_attention_11_key_add_readvariableop_resource*
_output_shapes
:	А*
dtype0–
multi_head_attention_11/key/addAddV22multi_head_attention_11/key/einsum/Einsum:output:06multi_head_attention_11/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАƒ
:multi_head_attention_11/value/einsum/Einsum/ReadVariableOpReadVariableOpCmulti_head_attention_11_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0З
+multi_head_attention_11/value/einsum/EinsumEinsum*layer_normalization_22/batchnorm/add_1:z:0Bmulti_head_attention_11/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abdeЂ
0multi_head_attention_11/value/add/ReadVariableOpReadVariableOp9multi_head_attention_11_value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0÷
!multi_head_attention_11/value/addAddV24multi_head_attention_11/value/einsum/Einsum:output:08multi_head_attention_11/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАb
multi_head_attention_11/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *уµ=≠
multi_head_attention_11/MulMul%multi_head_attention_11/query/add:z:0&multi_head_attention_11/Mul/y:output:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАў
%multi_head_attention_11/einsum/EinsumEinsum#multi_head_attention_11/key/add:z:0multi_head_attention_11/Mul:z:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒƒ*
equationaecd,abcd->acbeЮ
'multi_head_attention_11/softmax/SoftmaxSoftmax.multi_head_attention_11/einsum/Einsum:output:0*
T0*1
_output_shapes
:€€€€€€€€€ƒƒ£
(multi_head_attention_11/dropout/IdentityIdentity1multi_head_attention_11/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:€€€€€€€€€ƒƒп
'multi_head_attention_11/einsum_1/EinsumEinsum1multi_head_attention_11/dropout/Identity:output:0%multi_head_attention_11/value/add:z:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationacbe,aecd->abcdЏ
Emulti_head_attention_11/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpNmulti_head_attention_11_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Я
6multi_head_attention_11/attention_output/einsum/EinsumEinsum0multi_head_attention_11/einsum_1/Einsum:output:0Mmulti_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:€€€€€€€€€ƒА*
equationabcd,cde->abeљ
;multi_head_attention_11/attention_output/add/ReadVariableOpReadVariableOpDmulti_head_attention_11_attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0у
,multi_head_attention_11/attention_output/addAddV2?multi_head_attention_11/attention_output/einsum/Einsum:output:0Cmulti_head_attention_11/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАЦ

add_22/addAddV20multi_head_attention_11/attention_output/add:z:0patch_encoder_3/add:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА
5layer_normalization_23/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:√
#layer_normalization_23/moments/meanMeanadd_22/add:z:0>layer_normalization_23/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(†
+layer_normalization_23/moments/StopGradientStopGradient,layer_normalization_23/moments/mean:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ√
0layer_normalization_23/moments/SquaredDifferenceSquaredDifferenceadd_22/add:z:04layer_normalization_23/moments/StopGradient:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАГ
9layer_normalization_23/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:с
'layer_normalization_23/moments/varianceMean4layer_normalization_23/moments/SquaredDifference:z:0Blayer_normalization_23/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(k
&layer_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5«
$layer_normalization_23/batchnorm/addAddV20layer_normalization_23/moments/variance:output:0/layer_normalization_23/batchnorm/add/y:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒР
&layer_normalization_23/batchnorm/RsqrtRsqrt(layer_normalization_23/batchnorm/add:z:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ≠
3layer_normalization_23/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_23_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0ћ
$layer_normalization_23/batchnorm/mulMul*layer_normalization_23/batchnorm/Rsqrt:y:0;layer_normalization_23/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАЯ
&layer_normalization_23/batchnorm/mul_1Muladd_22/add:z:0(layer_normalization_23/batchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАљ
&layer_normalization_23/batchnorm/mul_2Mul,layer_normalization_23/moments/mean:output:0(layer_normalization_23/batchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА•
/layer_normalization_23/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_23_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0»
$layer_normalization_23/batchnorm/subSub7layer_normalization_23/batchnorm/ReadVariableOp:value:0*layer_normalization_23/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАљ
&layer_normalization_23/batchnorm/add_1AddV2*layer_normalization_23/batchnorm/mul_1:z:0(layer_normalization_23/batchnorm/sub:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАО
!dense_32/Tensordot/ReadVariableOpReadVariableOp*dense_32_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0a
dense_32/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_32/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       r
dense_32/Tensordot/ShapeShape*layer_normalization_23/batchnorm/add_1:z:0*
T0*
_output_shapes
:b
 dense_32/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_32/Tensordot/GatherV2GatherV2!dense_32/Tensordot/Shape:output:0 dense_32/Tensordot/free:output:0)dense_32/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_32/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_32/Tensordot/GatherV2_1GatherV2!dense_32/Tensordot/Shape:output:0 dense_32/Tensordot/axes:output:0+dense_32/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_32/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_32/Tensordot/ProdProd$dense_32/Tensordot/GatherV2:output:0!dense_32/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_32/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_32/Tensordot/Prod_1Prod&dense_32/Tensordot/GatherV2_1:output:0#dense_32/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_32/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_32/Tensordot/concatConcatV2 dense_32/Tensordot/free:output:0 dense_32/Tensordot/axes:output:0'dense_32/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_32/Tensordot/stackPack dense_32/Tensordot/Prod:output:0"dense_32/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:±
dense_32/Tensordot/transpose	Transpose*layer_normalization_23/batchnorm/add_1:z:0"dense_32/Tensordot/concat:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА•
dense_32/Tensordot/ReshapeReshape dense_32/Tensordot/transpose:y:0!dense_32/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€¶
dense_32/Tensordot/MatMulMatMul#dense_32/Tensordot/Reshape:output:0)dense_32/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
dense_32/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аb
 dense_32/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_32/Tensordot/concat_1ConcatV2$dense_32/Tensordot/GatherV2:output:0#dense_32/Tensordot/Const_2:output:0)dense_32/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:†
dense_32/TensordotReshape#dense_32/Tensordot/MatMul:product:0$dense_32/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАЕ
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
dense_32/BiasAddBiasAdddense_32/Tensordot:output:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАh
dense_32/ReluReludense_32/BiasAdd:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАt
dropout_25/IdentityIdentitydense_32/Relu:activations:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАО
!dense_33/Tensordot/ReadVariableOpReadVariableOp*dense_33_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0a
dense_33/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_33/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       d
dense_33/Tensordot/ShapeShapedropout_25/Identity:output:0*
T0*
_output_shapes
:b
 dense_33/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_33/Tensordot/GatherV2GatherV2!dense_33/Tensordot/Shape:output:0 dense_33/Tensordot/free:output:0)dense_33/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_33/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_33/Tensordot/GatherV2_1GatherV2!dense_33/Tensordot/Shape:output:0 dense_33/Tensordot/axes:output:0+dense_33/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_33/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_33/Tensordot/ProdProd$dense_33/Tensordot/GatherV2:output:0!dense_33/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_33/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_33/Tensordot/Prod_1Prod&dense_33/Tensordot/GatherV2_1:output:0#dense_33/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_33/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_33/Tensordot/concatConcatV2 dense_33/Tensordot/free:output:0 dense_33/Tensordot/axes:output:0'dense_33/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_33/Tensordot/stackPack dense_33/Tensordot/Prod:output:0"dense_33/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:£
dense_33/Tensordot/transpose	Transposedropout_25/Identity:output:0"dense_33/Tensordot/concat:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА•
dense_33/Tensordot/ReshapeReshape dense_33/Tensordot/transpose:y:0!dense_33/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€¶
dense_33/Tensordot/MatMulMatMul#dense_33/Tensordot/Reshape:output:0)dense_33/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
dense_33/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аb
 dense_33/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_33/Tensordot/concat_1ConcatV2$dense_33/Tensordot/GatherV2:output:0#dense_33/Tensordot/Const_2:output:0)dense_33/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:†
dense_33/TensordotReshape#dense_33/Tensordot/MatMul:product:0$dense_33/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАЕ
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
dense_33/BiasAddBiasAdddense_33/Tensordot:output:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАh
dense_33/ReluReludense_33/BiasAdd:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАt
dropout_26/IdentityIdentitydense_33/Relu:activations:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАy

add_23/addAddV2dropout_26/Identity:output:0add_22/add:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ b  z
flatten_3/ReshapeReshapeadd_23/add:z:0flatten_3/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€АƒЙ
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*!
_output_shapes
:АƒА*
dtype0Р
dense_34/MatMulMatMulflatten_3/Reshape:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
dense_34/ReluReludense_34/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аo
dropout_27/IdentityIdentitydense_34/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0С
dense_35/MatMulMatMuldropout_27/Identity:output:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€h
dense_35/SoftmaxSoftmaxdense_35/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€i
IdentityIdentitydense_35/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€П	
NoOpNoOp ^dense_32/BiasAdd/ReadVariableOp"^dense_32/Tensordot/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp"^dense_33/Tensordot/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp0^layer_normalization_22/batchnorm/ReadVariableOp4^layer_normalization_22/batchnorm/mul/ReadVariableOp0^layer_normalization_23/batchnorm/ReadVariableOp4^layer_normalization_23/batchnorm/mul/ReadVariableOp<^multi_head_attention_11/attention_output/add/ReadVariableOpF^multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp/^multi_head_attention_11/key/add/ReadVariableOp9^multi_head_attention_11/key/einsum/Einsum/ReadVariableOp1^multi_head_attention_11/query/add/ReadVariableOp;^multi_head_attention_11/query/einsum/Einsum/ReadVariableOp1^multi_head_attention_11/value/add/ReadVariableOp;^multi_head_attention_11/value/einsum/Einsum/ReadVariableOp0^patch_encoder_3/dense_31/BiasAdd/ReadVariableOp2^patch_encoder_3/dense_31/Tensordot/ReadVariableOp-^patch_encoder_3/embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*В
_input_shapesq
o:€€€€€€€€€аа::: : : : : : : : : : : : : : : : : : : : : : : 2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2F
!dense_32/Tensordot/ReadVariableOp!dense_32/Tensordot/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2F
!dense_33/Tensordot/ReadVariableOp!dense_33/Tensordot/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp2b
/layer_normalization_22/batchnorm/ReadVariableOp/layer_normalization_22/batchnorm/ReadVariableOp2j
3layer_normalization_22/batchnorm/mul/ReadVariableOp3layer_normalization_22/batchnorm/mul/ReadVariableOp2b
/layer_normalization_23/batchnorm/ReadVariableOp/layer_normalization_23/batchnorm/ReadVariableOp2j
3layer_normalization_23/batchnorm/mul/ReadVariableOp3layer_normalization_23/batchnorm/mul/ReadVariableOp2z
;multi_head_attention_11/attention_output/add/ReadVariableOp;multi_head_attention_11/attention_output/add/ReadVariableOp2О
Emulti_head_attention_11/attention_output/einsum/Einsum/ReadVariableOpEmulti_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp2`
.multi_head_attention_11/key/add/ReadVariableOp.multi_head_attention_11/key/add/ReadVariableOp2t
8multi_head_attention_11/key/einsum/Einsum/ReadVariableOp8multi_head_attention_11/key/einsum/Einsum/ReadVariableOp2d
0multi_head_attention_11/query/add/ReadVariableOp0multi_head_attention_11/query/add/ReadVariableOp2x
:multi_head_attention_11/query/einsum/Einsum/ReadVariableOp:multi_head_attention_11/query/einsum/Einsum/ReadVariableOp2d
0multi_head_attention_11/value/add/ReadVariableOp0multi_head_attention_11/value/add/ReadVariableOp2x
:multi_head_attention_11/value/einsum/Einsum/ReadVariableOp:multi_head_attention_11/value/einsum/Einsum/ReadVariableOp2b
/patch_encoder_3/dense_31/BiasAdd/ReadVariableOp/patch_encoder_3/dense_31/BiasAdd/ReadVariableOp2f
1patch_encoder_3/dense_31/Tensordot/ReadVariableOp1patch_encoder_3/dense_31/Tensordot/ReadVariableOp2\
,patch_encoder_3/embedding_3/embedding_lookup,patch_encoder_3/embedding_3/embedding_lookup:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
•	
e
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_58936

inputs
identityg
resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"а   а   ±
 resizing_3/resize/ResizeBilinearResizeBilinearinputsresizing_3/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа*
half_pixel_centers(W
rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;Y
rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Ґ
rescaling_3/mulMul1resizing_3/resize/ResizeBilinear:resized_images:0rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааИ
rescaling_3/addAddV2rescaling_3/mul:z:0rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааe
IdentityIdentityrescaling_3/add:z:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
ƒ
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_57211

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ b  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:€€€€€€€€€АƒZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:€€€€€€€€€Аƒ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€ƒА:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
Й
c
*__inference_dropout_26_layer_call_fn_59699

inputs
identityИҐStatefulPartitionedCall∆
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_26_layer_call_and_return_conditional_losses_57384u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€ƒА22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
Є
э
C__inference_dense_33_layer_call_and_return_conditional_losses_57184

inputs5
!tensordot_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Л
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:АY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Е
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАV
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАg
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒАz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€ƒА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
р
c
E__inference_dropout_26_layer_call_and_return_conditional_losses_59704

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:€€€€€€€€€ƒАa

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€ƒА:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
ЧА
≈
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_56693

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *џIјY
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *џI@`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ґ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Л
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ч
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @П
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @У
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ў
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :£
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :О
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    °
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€аа*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ааh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€аа: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
Ќ
I
-__inference_random_flip_3_layer_call_fn_59835

inputs
identityљ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_56406j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
Л
Т
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_57103

inputs4
%batchnorm_mul_readvariableop_resource:	А0
!batchnorm_readvariableop_resource:	А
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Н
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒН
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5В
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒb
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0З
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАi
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАx
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0Г
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАx
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАh
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒАА
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€ƒА: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
£

х
C__inference_dense_35_layer_call_and_return_conditional_losses_57248

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
–	
Я
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_58971

inputs
normalization_3_sub_y
normalization_3_sqrt_x
identityu
normalization_3/subSubinputsnormalization_3_sub_y*
T0*1
_output_shapes
:€€€€€€€€€ааe
normalization_3/SqrtSqrtnormalization_3_sqrt_x*
T0*&
_output_shapes
:^
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3С
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:Ф
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*1
_output_shapes
:€€€€€€€€€ааm
IdentityIdentitynormalization_3/truediv:z:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€аа:::Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
Ј
F
*__inference_dropout_25_layer_call_fn_59627

inputs
identityґ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_57151f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€ƒА:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
Ъ
h
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_59973

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
™

ш
C__inference_dense_34_layer_call_and_return_conditional_losses_57224

inputs3
matmul_readvariableop_resource:АƒА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:АƒА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€Аƒ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:€€€€€€€€€Аƒ
 
_user_specified_nameinputs
Ъ
h
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_56412

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
д
e
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56340

inputs
identity≈
resizing_3/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_resizing_3_layer_call_and_return_conditional_losses_56327д
rescaling_3/PartitionedCallPartitionedCall#resizing_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_rescaling_3_layer_call_and_return_conditional_losses_56337v
IdentityIdentity$rescaling_3/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
д
e
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56368

inputs
identity≈
resizing_3/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_resizing_3_layer_call_and_return_conditional_losses_56327д
rescaling_3/PartitionedCallPartitionedCall#resizing_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_rescaling_3_layer_call_and_return_conditional_losses_56337v
IdentityIdentity$rescaling_3/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
£

d
E__inference_dropout_26_layer_call_and_return_conditional_losses_57384

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Т
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=ђ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАu
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:€€€€€€€€€ƒАo
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА_
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€ƒА:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
ј
R
&__inference_add_22_layer_call_fn_59545
inputs_0
inputs_1
identityњ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_add_22_layer_call_and_return_conditional_losses_57079f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:€€€€€€€€€ƒА:€€€€€€€€€ƒА:W S
-
_output_shapes
:€€€€€€€€€ƒА
"
_user_specified_name
inputs/0:WS
-
_output_shapes
:€€€€€€€€€ƒА
"
_user_specified_name
inputs/1
Щ
ш
7__inference_multi_head_attention_11_layer_call_fn_59470	
query	
value
unknown:АА
	unknown_0:	А!
	unknown_1:АА
	unknown_2:	А!
	unknown_3:АА
	unknown_4:	А!
	unknown_5:АА
	unknown_6:	А
identityИҐStatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_57507u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:€€€€€€€€€ƒА:€€€€€€€€€ƒА: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
-
_output_shapes
:€€€€€€€€€ƒА

_user_specified_namequery:TP
-
_output_shapes
:€€€€€€€€€ƒА

_user_specified_namevalue
Ц
d
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_60107

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
н
T
.__inference_Resize_Rescale_layer_call_fn_56376
resizing_3_input
identity»
PartitionedCallPartitionedCallresizing_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56368j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:c _
1
_output_shapes
:€€€€€€€€€аа
*
_user_specified_nameresizing_3_input
а
`
D__inference_patches_7_layer_call_and_return_conditional_losses_56942

images
identity;
ShapeShapeimages*
T0*
_output_shapes
:]
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
shrink_axis_maskљ
ExtractImagePatchesExtractImagePatchesimages*
T0*0
_output_shapes
:€€€€€€€€€А*
ksizes
*
paddingVALID*
rates
*
strides
Z
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€R
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :АП
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:Й
ReshapeReshapeExtractImagePatches:patches:0Reshape/shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аf
IdentityIdentityReshape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameimages
х
c
*__inference_dropout_27_layer_call_fn_59769

inputs
identityИҐStatefulPartitionedCallЅ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_27_layer_call_and_return_conditional_losses_57338p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ІЎ
д;
!__inference__traced_restore_60787
file_prefix<
-assignvariableop_layer_normalization_22_gamma:	А=
.assignvariableop_1_layer_normalization_22_beta:	А>
/assignvariableop_2_layer_normalization_23_gamma:	А=
.assignvariableop_3_layer_normalization_23_beta:	А6
"assignvariableop_4_dense_32_kernel:
АА/
 assignvariableop_5_dense_32_bias:	А6
"assignvariableop_6_dense_33_kernel:
АА/
 assignvariableop_7_dense_33_bias:	А7
"assignvariableop_8_dense_34_kernel:АƒА/
 assignvariableop_9_dense_34_bias:	А6
#assignvariableop_10_dense_35_kernel:	А/
!assignvariableop_11_dense_35_bias:'
assignvariableop_12_adam_iter:	 )
assignvariableop_13_adam_beta_1: )
assignvariableop_14_adam_beta_2: (
assignvariableop_15_adam_decay: 0
&assignvariableop_16_adam_learning_rate: 6
(assignvariableop_17_normalization_3_mean::
,assignvariableop_18_normalization_3_variance:3
)assignvariableop_19_normalization_3_count:	 G
3assignvariableop_20_patch_encoder_3_dense_31_kernel:
АА@
1assignvariableop_21_patch_encoder_3_dense_31_bias:	АN
:assignvariableop_22_patch_encoder_3_embedding_3_embeddings:
ƒАP
8assignvariableop_23_multi_head_attention_11_query_kernel:ААI
6assignvariableop_24_multi_head_attention_11_query_bias:	АN
6assignvariableop_25_multi_head_attention_11_key_kernel:ААG
4assignvariableop_26_multi_head_attention_11_key_bias:	АP
8assignvariableop_27_multi_head_attention_11_value_kernel:ААI
6assignvariableop_28_multi_head_attention_11_value_bias:	А[
Cassignvariableop_29_multi_head_attention_11_attention_output_kernel:ААP
Aassignvariableop_30_multi_head_attention_11_attention_output_bias:	А#
assignvariableop_31_total: #
assignvariableop_32_count: %
assignvariableop_33_total_1: %
assignvariableop_34_count_1: R
Dassignvariableop_35_model_3_data_augmentation_random_flip_3_statevar:	V
Hassignvariableop_36_model_3_data_augmentation_random_rotation_3_statevar:	R
Dassignvariableop_37_model_3_data_augmentation_random_zoom_3_statevar:	F
7assignvariableop_38_adam_layer_normalization_22_gamma_m:	АE
6assignvariableop_39_adam_layer_normalization_22_beta_m:	АF
7assignvariableop_40_adam_layer_normalization_23_gamma_m:	АE
6assignvariableop_41_adam_layer_normalization_23_beta_m:	А>
*assignvariableop_42_adam_dense_32_kernel_m:
АА7
(assignvariableop_43_adam_dense_32_bias_m:	А>
*assignvariableop_44_adam_dense_33_kernel_m:
АА7
(assignvariableop_45_adam_dense_33_bias_m:	А?
*assignvariableop_46_adam_dense_34_kernel_m:АƒА7
(assignvariableop_47_adam_dense_34_bias_m:	А=
*assignvariableop_48_adam_dense_35_kernel_m:	А6
(assignvariableop_49_adam_dense_35_bias_m:N
:assignvariableop_50_adam_patch_encoder_3_dense_31_kernel_m:
ААG
8assignvariableop_51_adam_patch_encoder_3_dense_31_bias_m:	АU
Aassignvariableop_52_adam_patch_encoder_3_embedding_3_embeddings_m:
ƒАW
?assignvariableop_53_adam_multi_head_attention_11_query_kernel_m:ААP
=assignvariableop_54_adam_multi_head_attention_11_query_bias_m:	АU
=assignvariableop_55_adam_multi_head_attention_11_key_kernel_m:ААN
;assignvariableop_56_adam_multi_head_attention_11_key_bias_m:	АW
?assignvariableop_57_adam_multi_head_attention_11_value_kernel_m:ААP
=assignvariableop_58_adam_multi_head_attention_11_value_bias_m:	Аb
Jassignvariableop_59_adam_multi_head_attention_11_attention_output_kernel_m:ААW
Hassignvariableop_60_adam_multi_head_attention_11_attention_output_bias_m:	АF
7assignvariableop_61_adam_layer_normalization_22_gamma_v:	АE
6assignvariableop_62_adam_layer_normalization_22_beta_v:	АF
7assignvariableop_63_adam_layer_normalization_23_gamma_v:	АE
6assignvariableop_64_adam_layer_normalization_23_beta_v:	А>
*assignvariableop_65_adam_dense_32_kernel_v:
АА7
(assignvariableop_66_adam_dense_32_bias_v:	А>
*assignvariableop_67_adam_dense_33_kernel_v:
АА7
(assignvariableop_68_adam_dense_33_bias_v:	А?
*assignvariableop_69_adam_dense_34_kernel_v:АƒА7
(assignvariableop_70_adam_dense_34_bias_v:	А=
*assignvariableop_71_adam_dense_35_kernel_v:	А6
(assignvariableop_72_adam_dense_35_bias_v:N
:assignvariableop_73_adam_patch_encoder_3_dense_31_kernel_v:
ААG
8assignvariableop_74_adam_patch_encoder_3_dense_31_bias_v:	АU
Aassignvariableop_75_adam_patch_encoder_3_embedding_3_embeddings_v:
ƒАW
?assignvariableop_76_adam_multi_head_attention_11_query_kernel_v:ААP
=assignvariableop_77_adam_multi_head_attention_11_query_bias_v:	АU
=assignvariableop_78_adam_multi_head_attention_11_key_kernel_v:ААN
;assignvariableop_79_adam_multi_head_attention_11_key_bias_v:	АW
?assignvariableop_80_adam_multi_head_attention_11_value_kernel_v:ААP
=assignvariableop_81_adam_multi_head_attention_11_value_bias_v:	Аb
Jassignvariableop_82_adam_multi_head_attention_11_attention_output_kernel_v:ААW
Hassignvariableop_83_adam_multi_head_attention_11_attention_output_bias_v:	А
identity_85ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_25ҐAssignVariableOp_26ҐAssignVariableOp_27ҐAssignVariableOp_28ҐAssignVariableOp_29ҐAssignVariableOp_3ҐAssignVariableOp_30ҐAssignVariableOp_31ҐAssignVariableOp_32ҐAssignVariableOp_33ҐAssignVariableOp_34ҐAssignVariableOp_35ҐAssignVariableOp_36ҐAssignVariableOp_37ҐAssignVariableOp_38ҐAssignVariableOp_39ҐAssignVariableOp_4ҐAssignVariableOp_40ҐAssignVariableOp_41ҐAssignVariableOp_42ҐAssignVariableOp_43ҐAssignVariableOp_44ҐAssignVariableOp_45ҐAssignVariableOp_46ҐAssignVariableOp_47ҐAssignVariableOp_48ҐAssignVariableOp_49ҐAssignVariableOp_5ҐAssignVariableOp_50ҐAssignVariableOp_51ҐAssignVariableOp_52ҐAssignVariableOp_53ҐAssignVariableOp_54ҐAssignVariableOp_55ҐAssignVariableOp_56ҐAssignVariableOp_57ҐAssignVariableOp_58ҐAssignVariableOp_59ҐAssignVariableOp_6ҐAssignVariableOp_60ҐAssignVariableOp_61ҐAssignVariableOp_62ҐAssignVariableOp_63ҐAssignVariableOp_64ҐAssignVariableOp_65ҐAssignVariableOp_66ҐAssignVariableOp_67ҐAssignVariableOp_68ҐAssignVariableOp_69ҐAssignVariableOp_7ҐAssignVariableOp_70ҐAssignVariableOp_71ҐAssignVariableOp_72ҐAssignVariableOp_73ҐAssignVariableOp_74ҐAssignVariableOp_75ҐAssignVariableOp_76ҐAssignVariableOp_77ҐAssignVariableOp_78ҐAssignVariableOp_79ҐAssignVariableOp_8ҐAssignVariableOp_80ҐAssignVariableOp_81ҐAssignVariableOp_82ҐAssignVariableOp_83ҐAssignVariableOp_9Ё+
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*Г+
valueщ*Bц*UB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-0/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-0/layer-3/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЭ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*њ
valueµB≤UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B  
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*к
_output_shapes„
‘:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*c
dtypesY
W2U					[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Ш
AssignVariableOpAssignVariableOp-assignvariableop_layer_normalization_22_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_1AssignVariableOp.assignvariableop_1_layer_normalization_22_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Ю
AssignVariableOp_2AssignVariableOp/assignvariableop_2_layer_normalization_23_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_3AssignVariableOp.assignvariableop_3_layer_normalization_23_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_32_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_32_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_33_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_33_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_34_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_34_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_35_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_35_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_17AssignVariableOp(assignvariableop_17_normalization_3_meanIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_18AssignVariableOp,assignvariableop_18_normalization_3_varianceIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0	*
_output_shapes
:Ъ
AssignVariableOp_19AssignVariableOp)assignvariableop_19_normalization_3_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_20AssignVariableOp3assignvariableop_20_patch_encoder_3_dense_31_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ґ
AssignVariableOp_21AssignVariableOp1assignvariableop_21_patch_encoder_3_dense_31_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_22AssignVariableOp:assignvariableop_22_patch_encoder_3_embedding_3_embeddingsIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_23AssignVariableOp8assignvariableop_23_multi_head_attention_11_query_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_24AssignVariableOp6assignvariableop_24_multi_head_attention_11_query_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_25AssignVariableOp6assignvariableop_25_multi_head_attention_11_key_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:•
AssignVariableOp_26AssignVariableOp4assignvariableop_26_multi_head_attention_11_key_biasIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_27AssignVariableOp8assignvariableop_27_multi_head_attention_11_value_kernelIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_28AssignVariableOp6assignvariableop_28_multi_head_attention_11_value_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:і
AssignVariableOp_29AssignVariableOpCassignvariableop_29_multi_head_attention_11_attention_output_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_30AssignVariableOpAassignvariableop_30_multi_head_attention_11_attention_output_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_31AssignVariableOpassignvariableop_31_totalIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_32AssignVariableOpassignvariableop_32_countIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_33AssignVariableOpassignvariableop_33_total_1Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_34AssignVariableOpassignvariableop_34_count_1Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0	*
_output_shapes
:µ
AssignVariableOp_35AssignVariableOpDassignvariableop_35_model_3_data_augmentation_random_flip_3_statevarIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0	*
_output_shapes
:є
AssignVariableOp_36AssignVariableOpHassignvariableop_36_model_3_data_augmentation_random_rotation_3_statevarIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0	*
_output_shapes
:µ
AssignVariableOp_37AssignVariableOpDassignvariableop_37_model_3_data_augmentation_random_zoom_3_statevarIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_38AssignVariableOp7assignvariableop_38_adam_layer_normalization_22_gamma_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_layer_normalization_22_beta_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_40AssignVariableOp7assignvariableop_40_adam_layer_normalization_23_gamma_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_41AssignVariableOp6assignvariableop_41_adam_layer_normalization_23_beta_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_dense_32_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_dense_32_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_dense_33_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_45AssignVariableOp(assignvariableop_45_adam_dense_33_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adam_dense_34_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_47AssignVariableOp(assignvariableop_47_adam_dense_34_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_48AssignVariableOp*assignvariableop_48_adam_dense_35_kernel_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_dense_35_bias_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_50AssignVariableOp:assignvariableop_50_adam_patch_encoder_3_dense_31_kernel_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_51AssignVariableOp8assignvariableop_51_adam_patch_encoder_3_dense_31_bias_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_52AssignVariableOpAassignvariableop_52_adam_patch_encoder_3_embedding_3_embeddings_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:∞
AssignVariableOp_53AssignVariableOp?assignvariableop_53_adam_multi_head_attention_11_query_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_54AssignVariableOp=assignvariableop_54_adam_multi_head_attention_11_query_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_55AssignVariableOp=assignvariableop_55_adam_multi_head_attention_11_key_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:ђ
AssignVariableOp_56AssignVariableOp;assignvariableop_56_adam_multi_head_attention_11_key_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:∞
AssignVariableOp_57AssignVariableOp?assignvariableop_57_adam_multi_head_attention_11_value_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_58AssignVariableOp=assignvariableop_58_adam_multi_head_attention_11_value_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_59AssignVariableOpJassignvariableop_59_adam_multi_head_attention_11_attention_output_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_60AssignVariableOpHassignvariableop_60_adam_multi_head_attention_11_attention_output_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_61AssignVariableOp7assignvariableop_61_adam_layer_normalization_22_gamma_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_62AssignVariableOp6assignvariableop_62_adam_layer_normalization_22_beta_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:®
AssignVariableOp_63AssignVariableOp7assignvariableop_63_adam_layer_normalization_23_gamma_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:І
AssignVariableOp_64AssignVariableOp6assignvariableop_64_adam_layer_normalization_23_beta_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_65AssignVariableOp*assignvariableop_65_adam_dense_32_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_66AssignVariableOp(assignvariableop_66_adam_dense_32_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_67AssignVariableOp*assignvariableop_67_adam_dense_33_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_68AssignVariableOp(assignvariableop_68_adam_dense_33_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_69AssignVariableOp*assignvariableop_69_adam_dense_34_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_70AssignVariableOp(assignvariableop_70_adam_dense_34_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_71AssignVariableOp*assignvariableop_71_adam_dense_35_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_72AssignVariableOp(assignvariableop_72_adam_dense_35_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:Ђ
AssignVariableOp_73AssignVariableOp:assignvariableop_73_adam_patch_encoder_3_dense_31_kernel_vIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_74AssignVariableOp8assignvariableop_74_adam_patch_encoder_3_dense_31_bias_vIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_75AssignVariableOpAassignvariableop_75_adam_patch_encoder_3_embedding_3_embeddings_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:∞
AssignVariableOp_76AssignVariableOp?assignvariableop_76_adam_multi_head_attention_11_query_kernel_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_77AssignVariableOp=assignvariableop_77_adam_multi_head_attention_11_query_bias_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_78AssignVariableOp=assignvariableop_78_adam_multi_head_attention_11_key_kernel_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:ђ
AssignVariableOp_79AssignVariableOp;assignvariableop_79_adam_multi_head_attention_11_key_bias_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:∞
AssignVariableOp_80AssignVariableOp?assignvariableop_80_adam_multi_head_attention_11_value_kernel_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:Ѓ
AssignVariableOp_81AssignVariableOp=assignvariableop_81_adam_multi_head_attention_11_value_bias_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:ї
AssignVariableOp_82AssignVariableOpJassignvariableop_82_adam_multi_head_attention_11_attention_output_kernel_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:є
AssignVariableOp_83AssignVariableOpHassignvariableop_83_adam_multi_head_attention_11_attention_output_bias_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 З
Identity_84Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_85IdentityIdentity_84:output:0^NoOp_1*
T0*
_output_shapes
: ф
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_85Identity_85:output:0*њ
_input_shapes≠
™: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
¬
}
-__inference_random_flip_3_layer_call_fn_59842

inputs
unknown:	
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_56817y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аа`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€аа: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
Ц
d
H__inference_random_flip_3_layer_call_and_return_conditional_losses_59846

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
ѓ
a
E__inference_resizing_3_layer_call_and_return_conditional_losses_56327

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"а   а   Ы
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
Ћ
ь
'__inference_model_3_layer_call_fn_57808
input_4
unknown
	unknown_0
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:
АА
	unknown_5:	А
	unknown_6:
ƒА
	unknown_7:	А
	unknown_8:	А!
	unknown_9:АА

unknown_10:	А"

unknown_11:АА

unknown_12:	А"

unknown_13:АА

unknown_14:	А"

unknown_15:АА

unknown_16:	А

unknown_17:	А

unknown_18:	А

unknown_19:
АА

unknown_20:	А

unknown_21:
АА

unknown_22:	А

unknown_23:АƒА

unknown_24:	А

unknown_25:	А

unknown_26:
identityИҐStatefulPartitionedCallґ
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_57688o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*И
_input_shapesw
u:€€€€€€€€€аа::: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€аа
!
_user_specified_name	input_4:,(
&
_output_shapes
::,(
&
_output_shapes
:
 
Щ
(__inference_dense_34_layer_call_fn_59748

inputs
unknown:АƒА
	unknown_0:	А
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_57224p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€Аƒ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:€€€€€€€€€Аƒ
 
_user_specified_nameinputs
Ќ
≠
'__inference_model_3_layer_call_fn_58017

inputs
unknown
	unknown_0
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
ƒА
	unknown_4:	А
	unknown_5:	А!
	unknown_6:АА
	unknown_7:	А!
	unknown_8:АА
	unknown_9:	А"

unknown_10:АА

unknown_11:	А"

unknown_12:АА

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:
АА

unknown_17:	А

unknown_18:
АА

unknown_19:	А

unknown_20:АƒА

unknown_21:	А

unknown_22:	А

unknown_23:
identityИҐStatefulPartitionedCallО
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_57255o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*В
_input_shapesq
o:€€€€€€€€€аа::: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
√
Ц
(__inference_dense_35_layer_call_fn_59795

inputs
unknown:	А
	unknown_0:
identityИҐStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_57248o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
ы	
d
E__inference_dropout_27_layer_call_and_return_conditional_losses_59786

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
џ
Ш
(__inference_dense_33_layer_call_fn_59658

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_57184u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€ƒА: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
сV
–
B__inference_model_3_layer_call_and_return_conditional_losses_57688

inputs
data_augmentation_57615
data_augmentation_57617%
data_augmentation_57619:	%
data_augmentation_57621:	%
data_augmentation_57623:	)
patch_encoder_3_57627:
АА$
patch_encoder_3_57629:	А)
patch_encoder_3_57631:
ƒА+
layer_normalization_22_57634:	А+
layer_normalization_22_57636:	А5
multi_head_attention_11_57639:АА0
multi_head_attention_11_57641:	А5
multi_head_attention_11_57643:АА0
multi_head_attention_11_57645:	А5
multi_head_attention_11_57647:АА0
multi_head_attention_11_57649:	А5
multi_head_attention_11_57651:АА,
multi_head_attention_11_57653:	А+
layer_normalization_23_57657:	А+
layer_normalization_23_57659:	А"
dense_32_57662:
АА
dense_32_57664:	А"
dense_33_57668:
АА
dense_33_57670:	А#
dense_34_57676:АƒА
dense_34_57678:	А!
dense_35_57682:	А
dense_35_57684:
identityИҐ)Data_Augmentation/StatefulPartitionedCallҐ dense_32/StatefulPartitionedCallҐ dense_33/StatefulPartitionedCallҐ dense_34/StatefulPartitionedCallҐ dense_35/StatefulPartitionedCallҐ"dropout_25/StatefulPartitionedCallҐ"dropout_26/StatefulPartitionedCallҐ"dropout_27/StatefulPartitionedCallҐ.layer_normalization_22/StatefulPartitionedCallҐ.layer_normalization_23/StatefulPartitionedCallҐ/multi_head_attention_11/StatefulPartitionedCallҐ'patch_encoder_3/StatefulPartitionedCallЌ
Resize_Rescale/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56368Ж
)Data_Augmentation/StatefulPartitionedCallStatefulPartitionedCall'Resize_Rescale/PartitionedCall:output:0data_augmentation_57615data_augmentation_57617data_augmentation_57619data_augmentation_57621data_augmentation_57623*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56853у
patches_7/PartitionedCallPartitionedCall2Data_Augmentation/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_patches_7_layer_call_and_return_conditional_losses_56942ƒ
'patch_encoder_3/StatefulPartitionedCallStatefulPartitionedCall"patches_7/PartitionedCall:output:0patch_encoder_3_57627patch_encoder_3_57629patch_encoder_3_57631*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_patch_encoder_3_layer_call_and_return_conditional_losses_56984’
.layer_normalization_22/StatefulPartitionedCallStatefulPartitionedCall0patch_encoder_3/StatefulPartitionedCall:output:0layer_normalization_22_57634layer_normalization_22_57636*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_57014а
/multi_head_attention_11/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_22/StatefulPartitionedCall:output:07layer_normalization_22/StatefulPartitionedCall:output:0multi_head_attention_11_57639multi_head_attention_11_57641multi_head_attention_11_57643multi_head_attention_11_57645multi_head_attention_11_57647multi_head_attention_11_57649multi_head_attention_11_57651multi_head_attention_11_57653*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_57507Ю
add_22/PartitionedCallPartitionedCall8multi_head_attention_11/StatefulPartitionedCall:output:00patch_encoder_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_add_22_layer_call_and_return_conditional_losses_57079ƒ
.layer_normalization_23/StatefulPartitionedCallStatefulPartitionedCalladd_22/PartitionedCall:output:0layer_normalization_23_57657layer_normalization_23_57659*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_57103§
 dense_32/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_23/StatefulPartitionedCall:output:0dense_32_57662dense_32_57664*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_32_layer_call_and_return_conditional_losses_57140ф
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_57417Ш
 dense_33/StatefulPartitionedCallStatefulPartitionedCall+dropout_25/StatefulPartitionedCall:output:0dense_33_57668dense_33_57670*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_57184Щ
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall)dense_33/StatefulPartitionedCall:output:0#^dropout_25/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_26_layer_call_and_return_conditional_losses_57384А
add_23/PartitionedCallPartitionedCall+dropout_26/StatefulPartitionedCall:output:0add_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_add_23_layer_call_and_return_conditional_losses_57203‘
flatten_3/PartitionedCallPartitionedCalladd_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€Аƒ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_57211К
 dense_34/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_34_57676dense_34_57678*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_57224Ф
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0#^dropout_26/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_27_layer_call_and_return_conditional_losses_57338Т
 dense_35/StatefulPartitionedCallStatefulPartitionedCall+dropout_27/StatefulPartitionedCall:output:0dense_35_57682dense_35_57684*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_57248x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Ђ
NoOpNoOp*^Data_Augmentation/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall#^dropout_27/StatefulPartitionedCall/^layer_normalization_22/StatefulPartitionedCall/^layer_normalization_23/StatefulPartitionedCall0^multi_head_attention_11/StatefulPartitionedCall(^patch_encoder_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*И
_input_shapesw
u:€€€€€€€€€аа::: : : : : : : : : : : : : : : : : : : : : : : : : : 2V
)Data_Augmentation/StatefulPartitionedCall)Data_Augmentation/StatefulPartitionedCall2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2H
"dropout_25/StatefulPartitionedCall"dropout_25/StatefulPartitionedCall2H
"dropout_26/StatefulPartitionedCall"dropout_26/StatefulPartitionedCall2H
"dropout_27/StatefulPartitionedCall"dropout_27/StatefulPartitionedCall2`
.layer_normalization_22/StatefulPartitionedCall.layer_normalization_22/StatefulPartitionedCall2`
.layer_normalization_23/StatefulPartitionedCall.layer_normalization_23/StatefulPartitionedCall2b
/multi_head_attention_11/StatefulPartitionedCall/multi_head_attention_11/StatefulPartitionedCall2R
'patch_encoder_3/StatefulPartitionedCall'patch_encoder_3/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
в
m
A__inference_add_23_layer_call_and_return_conditional_losses_59728
inputs_0
inputs_1
identityX
addAddV2inputs_0inputs_1*
T0*-
_output_shapes
:€€€€€€€€€ƒАU
IdentityIdentityadd:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:€€€€€€€€€ƒА:€€€€€€€€€ƒА:W S
-
_output_shapes
:€€€€€€€€€ƒА
"
_user_specified_name
inputs/0:WS
-
_output_shapes
:€€€€€€€€€ƒА
"
_user_specified_name
inputs/1
Л
Т
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_59582

inputs4
%batchnorm_mul_readvariableop_resource:	А0
!batchnorm_readvariableop_resource:	А
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Н
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒН
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5В
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒb
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0З
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАi
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАx
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0Г
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАx
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАh
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒАА
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€ƒА: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
Џ
k
A__inference_add_22_layer_call_and_return_conditional_losses_57079

inputs
inputs_1
identityV
addAddV2inputsinputs_1*
T0*-
_output_shapes
:€€€€€€€€€ƒАU
IdentityIdentityadd:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:€€€€€€€€€ƒА:€€€€€€€€€ƒА:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs:UQ
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
’
M
1__inference_random_rotation_3_layer_call_fn_59962

inputs
identityЅ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_56412j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
л
Л
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56853

inputs
normalization_3_sub_y
normalization_3_sqrt_x!
random_flip_3_56843:	%
random_rotation_3_56846:	!
random_zoom_3_56849:	
identityИҐ%random_flip_3/StatefulPartitionedCallҐ)random_rotation_3/StatefulPartitionedCallҐ%random_zoom_3/StatefulPartitionedCallu
normalization_3/subSubinputsnormalization_3_sub_y*
T0*1
_output_shapes
:€€€€€€€€€ааe
normalization_3/SqrtSqrtnormalization_3_sqrt_x*
T0*&
_output_shapes
:^
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3С
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:Ф
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*1
_output_shapes
:€€€€€€€€€ааЖ
%random_flip_3/StatefulPartitionedCallStatefulPartitionedCallnormalization_3/truediv:z:0random_flip_3_56843*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_56817•
)random_rotation_3/StatefulPartitionedCallStatefulPartitionedCall.random_flip_3/StatefulPartitionedCall:output:0random_rotation_3_56846*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_56693Э
%random_zoom_3/StatefulPartitionedCallStatefulPartitionedCall2random_rotation_3/StatefulPartitionedCall:output:0random_zoom_3_56849*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_56562З
IdentityIdentity.random_zoom_3/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аа¬
NoOpNoOp&^random_flip_3/StatefulPartitionedCall*^random_rotation_3/StatefulPartitionedCall&^random_zoom_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€аа::: : : 2N
%random_flip_3/StatefulPartitionedCall%random_flip_3/StatefulPartitionedCall2V
)random_rotation_3/StatefulPartitionedCall)random_rotation_3/StatefulPartitionedCall2N
%random_zoom_3/StatefulPartitionedCall%random_zoom_3/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
Щ
Ъ
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56915
normalization_3_input
normalization_3_sub_y
normalization_3_sqrt_x!
random_flip_3_56905:	%
random_rotation_3_56908:	!
random_zoom_3_56911:	
identityИҐ%random_flip_3/StatefulPartitionedCallҐ)random_rotation_3/StatefulPartitionedCallҐ%random_zoom_3/StatefulPartitionedCallД
normalization_3/subSubnormalization_3_inputnormalization_3_sub_y*
T0*1
_output_shapes
:€€€€€€€€€ааe
normalization_3/SqrtSqrtnormalization_3_sqrt_x*
T0*&
_output_shapes
:^
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3С
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:Ф
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*1
_output_shapes
:€€€€€€€€€ааЖ
%random_flip_3/StatefulPartitionedCallStatefulPartitionedCallnormalization_3/truediv:z:0random_flip_3_56905*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_56817•
)random_rotation_3/StatefulPartitionedCallStatefulPartitionedCall.random_flip_3/StatefulPartitionedCall:output:0random_rotation_3_56908*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_56693Э
%random_zoom_3/StatefulPartitionedCallStatefulPartitionedCall2random_rotation_3/StatefulPartitionedCall:output:0random_zoom_3_56911*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_56562З
IdentityIdentity.random_zoom_3/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аа¬
NoOpNoOp&^random_flip_3/StatefulPartitionedCall*^random_rotation_3/StatefulPartitionedCall&^random_zoom_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€аа::: : : 2N
%random_flip_3/StatefulPartitionedCall%random_flip_3/StatefulPartitionedCall2V
)random_rotation_3/StatefulPartitionedCall)random_rotation_3/StatefulPartitionedCall2N
%random_zoom_3/StatefulPartitionedCall%random_zoom_3/StatefulPartitionedCall:h d
1
_output_shapes
:€€€€€€€€€аа
/
_user_specified_namenormalization_3_input:,(
&
_output_shapes
::,(
&
_output_shapes
:
Й
c
*__inference_dropout_25_layer_call_fn_59632

inputs
identityИҐStatefulPartitionedCall∆
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_57417u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€ƒА22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
Є
э
C__inference_dense_32_layer_call_and_return_conditional_losses_59622

inputs5
!tensordot_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Л
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:АY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Е
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАV
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАg
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒАz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€ƒА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
Л
Т
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_57014

inputs4
%batchnorm_mul_readvariableop_resource:	А0
!batchnorm_readvariableop_resource:	А
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Н
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒН
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5В
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒb
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0З
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАi
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАx
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0Г
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАx
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАh
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒАА
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€ƒА: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
Ќ
E
)__inference_patches_7_layer_call_fn_59330

images
identityљ
PartitionedCallPartitionedCallimages*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_patches_7_layer_call_and_return_conditional_losses_56942n
IdentityIdentityPartitionedCall:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameimages
љК
е
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_60233

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkipҐ!stateful_uniform_1/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :З
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff¶?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ґ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :П
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ы
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€Д
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€\
stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Л
stateful_uniform_1/shapePackstrided_slice:output:0#stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:[
stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?[
stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff¶?b
stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
stateful_uniform_1/ProdProd!stateful_uniform_1/shape:output:0!stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: [
stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :s
stateful_uniform_1/Cast_1Cast stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ё
!stateful_uniform_1/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource"stateful_uniform_1/Cast/x:output:0stateful_uniform_1/Cast_1:y:0 ^stateful_uniform/RngReadAndSkip*
_output_shapes
:p
&stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ґ
 stateful_uniform_1/strided_sliceStridedSlice)stateful_uniform_1/RngReadAndSkip:value:0/stateful_uniform_1/strided_slice/stack:output:01stateful_uniform_1/strided_slice/stack_1:output:01stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskБ
stateful_uniform_1/BitcastBitcast)stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0r
(stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
"stateful_uniform_1/strided_slice_1StridedSlice)stateful_uniform_1/RngReadAndSkip:value:01stateful_uniform_1/strided_slice_1/stack:output:03stateful_uniform_1/strided_slice_1/stack_1:output:03stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Е
stateful_uniform_1/Bitcast_1Bitcast+stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0q
/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Щ
+stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2!stateful_uniform_1/shape:output:0%stateful_uniform_1/Bitcast_1:output:0#stateful_uniform_1/Bitcast:output:08stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€А
stateful_uniform_1/subSubstateful_uniform_1/max:output:0stateful_uniform_1/min:output:0*
T0*
_output_shapes
: °
stateful_uniform_1/mulMul4stateful_uniform_1/StatelessRandomUniformV2:output:0stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
stateful_uniform_1AddV2stateful_uniform_1/mul:z:0stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :С
concatConcatV2stateful_uniform_1:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€P
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ч
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Р
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ћ
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€аа*
dtype0*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ааМ
NoOpNoOp ^stateful_uniform/RngReadAndSkip"^stateful_uniform_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€аа: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip2F
!stateful_uniform_1/RngReadAndSkip!stateful_uniform_1/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
“≥
И
 __inference__wrapped_model_56314
input_43
/model_3_data_augmentation_normalization_3_sub_y4
0model_3_data_augmentation_normalization_3_sqrt_xV
Bmodel_3_patch_encoder_3_dense_31_tensordot_readvariableop_resource:
ААO
@model_3_patch_encoder_3_dense_31_biasadd_readvariableop_resource:	АN
:model_3_patch_encoder_3_embedding_3_embedding_lookup_56166:
ƒАS
Dmodel_3_layer_normalization_22_batchnorm_mul_readvariableop_resource:	АO
@model_3_layer_normalization_22_batchnorm_readvariableop_resource:	Аc
Kmodel_3_multi_head_attention_11_query_einsum_einsum_readvariableop_resource:ААT
Amodel_3_multi_head_attention_11_query_add_readvariableop_resource:	Аa
Imodel_3_multi_head_attention_11_key_einsum_einsum_readvariableop_resource:ААR
?model_3_multi_head_attention_11_key_add_readvariableop_resource:	Аc
Kmodel_3_multi_head_attention_11_value_einsum_einsum_readvariableop_resource:ААT
Amodel_3_multi_head_attention_11_value_add_readvariableop_resource:	Аn
Vmodel_3_multi_head_attention_11_attention_output_einsum_einsum_readvariableop_resource:АА[
Lmodel_3_multi_head_attention_11_attention_output_add_readvariableop_resource:	АS
Dmodel_3_layer_normalization_23_batchnorm_mul_readvariableop_resource:	АO
@model_3_layer_normalization_23_batchnorm_readvariableop_resource:	АF
2model_3_dense_32_tensordot_readvariableop_resource:
АА?
0model_3_dense_32_biasadd_readvariableop_resource:	АF
2model_3_dense_33_tensordot_readvariableop_resource:
АА?
0model_3_dense_33_biasadd_readvariableop_resource:	АD
/model_3_dense_34_matmul_readvariableop_resource:АƒА?
0model_3_dense_34_biasadd_readvariableop_resource:	АB
/model_3_dense_35_matmul_readvariableop_resource:	А>
0model_3_dense_35_biasadd_readvariableop_resource:
identityИҐ'model_3/dense_32/BiasAdd/ReadVariableOpҐ)model_3/dense_32/Tensordot/ReadVariableOpҐ'model_3/dense_33/BiasAdd/ReadVariableOpҐ)model_3/dense_33/Tensordot/ReadVariableOpҐ'model_3/dense_34/BiasAdd/ReadVariableOpҐ&model_3/dense_34/MatMul/ReadVariableOpҐ'model_3/dense_35/BiasAdd/ReadVariableOpҐ&model_3/dense_35/MatMul/ReadVariableOpҐ7model_3/layer_normalization_22/batchnorm/ReadVariableOpҐ;model_3/layer_normalization_22/batchnorm/mul/ReadVariableOpҐ7model_3/layer_normalization_23/batchnorm/ReadVariableOpҐ;model_3/layer_normalization_23/batchnorm/mul/ReadVariableOpҐCmodel_3/multi_head_attention_11/attention_output/add/ReadVariableOpҐMmodel_3/multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOpҐ6model_3/multi_head_attention_11/key/add/ReadVariableOpҐ@model_3/multi_head_attention_11/key/einsum/Einsum/ReadVariableOpҐ8model_3/multi_head_attention_11/query/add/ReadVariableOpҐBmodel_3/multi_head_attention_11/query/einsum/Einsum/ReadVariableOpҐ8model_3/multi_head_attention_11/value/add/ReadVariableOpҐBmodel_3/multi_head_attention_11/value/einsum/Einsum/ReadVariableOpҐ7model_3/patch_encoder_3/dense_31/BiasAdd/ReadVariableOpҐ9model_3/patch_encoder_3/dense_31/Tensordot/ReadVariableOpҐ4model_3/patch_encoder_3/embedding_3/embedding_lookup~
-model_3/Resize_Rescale/resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"а   а   а
7model_3/Resize_Rescale/resizing_3/resize/ResizeBilinearResizeBilinearinput_46model_3/Resize_Rescale/resizing_3/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа*
half_pixel_centers(n
)model_3/Resize_Rescale/rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;p
+model_3/Resize_Rescale/rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    з
&model_3/Resize_Rescale/rescaling_3/mulMulHmodel_3/Resize_Rescale/resizing_3/resize/ResizeBilinear:resized_images:02model_3/Resize_Rescale/rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааЌ
&model_3/Resize_Rescale/rescaling_3/addAddV2*model_3/Resize_Rescale/rescaling_3/mul:z:04model_3/Resize_Rescale/rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааЌ
-model_3/Data_Augmentation/normalization_3/subSub*model_3/Resize_Rescale/rescaling_3/add:z:0/model_3_data_augmentation_normalization_3_sub_y*
T0*1
_output_shapes
:€€€€€€€€€ааЩ
.model_3/Data_Augmentation/normalization_3/SqrtSqrt0model_3_data_augmentation_normalization_3_sqrt_x*
T0*&
_output_shapes
:x
3model_3/Data_Augmentation/normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3я
1model_3/Data_Augmentation/normalization_3/MaximumMaximum2model_3/Data_Augmentation/normalization_3/Sqrt:y:0<model_3/Data_Augmentation/normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:в
1model_3/Data_Augmentation/normalization_3/truedivRealDiv1model_3/Data_Augmentation/normalization_3/sub:z:05model_3/Data_Augmentation/normalization_3/Maximum:z:0*
T0*1
_output_shapes
:€€€€€€€€€аа|
model_3/patches_7/ShapeShape5model_3/Data_Augmentation/normalization_3/truediv:z:0*
T0*
_output_shapes
:o
%model_3/patches_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'model_3/patches_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'model_3/patches_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
model_3/patches_7/strided_sliceStridedSlice model_3/patches_7/Shape:output:0.model_3/patches_7/strided_slice/stack:output:00model_3/patches_7/strided_slice/stack_1:output:00model_3/patches_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskю
%model_3/patches_7/ExtractImagePatchesExtractImagePatches5model_3/Data_Augmentation/normalization_3/truediv:z:0*
T0*0
_output_shapes
:€€€€€€€€€А*
ksizes
*
paddingVALID*
rates
*
strides
l
!model_3/patches_7/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€d
!model_3/patches_7/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :А„
model_3/patches_7/Reshape/shapePack(model_3/patches_7/strided_slice:output:0*model_3/patches_7/Reshape/shape/1:output:0*model_3/patches_7/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:њ
model_3/patches_7/ReshapeReshape/model_3/patches_7/ExtractImagePatches:patches:0(model_3/patches_7/Reshape/shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аe
#model_3/patch_encoder_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : f
#model_3/patch_encoder_3/range/limitConst*
_output_shapes
: *
dtype0*
value
B :ƒe
#model_3/patch_encoder_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :Ќ
model_3/patch_encoder_3/rangeRange,model_3/patch_encoder_3/range/start:output:0,model_3/patch_encoder_3/range/limit:output:0,model_3/patch_encoder_3/range/delta:output:0*
_output_shapes	
:ƒЊ
9model_3/patch_encoder_3/dense_31/Tensordot/ReadVariableOpReadVariableOpBmodel_3_patch_encoder_3_dense_31_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0y
/model_3/patch_encoder_3/dense_31/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:А
/model_3/patch_encoder_3/dense_31/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       В
0model_3/patch_encoder_3/dense_31/Tensordot/ShapeShape"model_3/patches_7/Reshape:output:0*
T0*
_output_shapes
:z
8model_3/patch_encoder_3/dense_31/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
3model_3/patch_encoder_3/dense_31/Tensordot/GatherV2GatherV29model_3/patch_encoder_3/dense_31/Tensordot/Shape:output:08model_3/patch_encoder_3/dense_31/Tensordot/free:output:0Amodel_3/patch_encoder_3/dense_31/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:|
:model_3/patch_encoder_3/dense_31/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : √
5model_3/patch_encoder_3/dense_31/Tensordot/GatherV2_1GatherV29model_3/patch_encoder_3/dense_31/Tensordot/Shape:output:08model_3/patch_encoder_3/dense_31/Tensordot/axes:output:0Cmodel_3/patch_encoder_3/dense_31/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:z
0model_3/patch_encoder_3/dense_31/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: —
/model_3/patch_encoder_3/dense_31/Tensordot/ProdProd<model_3/patch_encoder_3/dense_31/Tensordot/GatherV2:output:09model_3/patch_encoder_3/dense_31/Tensordot/Const:output:0*
T0*
_output_shapes
: |
2model_3/patch_encoder_3/dense_31/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: „
1model_3/patch_encoder_3/dense_31/Tensordot/Prod_1Prod>model_3/patch_encoder_3/dense_31/Tensordot/GatherV2_1:output:0;model_3/patch_encoder_3/dense_31/Tensordot/Const_1:output:0*
T0*
_output_shapes
: x
6model_3/patch_encoder_3/dense_31/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : †
1model_3/patch_encoder_3/dense_31/Tensordot/concatConcatV28model_3/patch_encoder_3/dense_31/Tensordot/free:output:08model_3/patch_encoder_3/dense_31/Tensordot/axes:output:0?model_3/patch_encoder_3/dense_31/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:№
0model_3/patch_encoder_3/dense_31/Tensordot/stackPack8model_3/patch_encoder_3/dense_31/Tensordot/Prod:output:0:model_3/patch_encoder_3/dense_31/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:б
4model_3/patch_encoder_3/dense_31/Tensordot/transpose	Transpose"model_3/patches_7/Reshape:output:0:model_3/patch_encoder_3/dense_31/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Ан
2model_3/patch_encoder_3/dense_31/Tensordot/ReshapeReshape8model_3/patch_encoder_3/dense_31/Tensordot/transpose:y:09model_3/patch_encoder_3/dense_31/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€о
1model_3/patch_encoder_3/dense_31/Tensordot/MatMulMatMul;model_3/patch_encoder_3/dense_31/Tensordot/Reshape:output:0Amodel_3/patch_encoder_3/dense_31/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А}
2model_3/patch_encoder_3/dense_31/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аz
8model_3/patch_encoder_3/dense_31/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ђ
3model_3/patch_encoder_3/dense_31/Tensordot/concat_1ConcatV2<model_3/patch_encoder_3/dense_31/Tensordot/GatherV2:output:0;model_3/patch_encoder_3/dense_31/Tensordot/Const_2:output:0Amodel_3/patch_encoder_3/dense_31/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:р
*model_3/patch_encoder_3/dense_31/TensordotReshape;model_3/patch_encoder_3/dense_31/Tensordot/MatMul:product:0<model_3/patch_encoder_3/dense_31/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аµ
7model_3/patch_encoder_3/dense_31/BiasAdd/ReadVariableOpReadVariableOp@model_3_patch_encoder_3_dense_31_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0й
(model_3/patch_encoder_3/dense_31/BiasAddBiasAdd3model_3/patch_encoder_3/dense_31/Tensordot:output:0?model_3/patch_encoder_3/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЄ
4model_3/patch_encoder_3/embedding_3/embedding_lookupResourceGather:model_3_patch_encoder_3_embedding_3_embedding_lookup_56166&model_3/patch_encoder_3/range:output:0*
Tindices0*M
_classC
A?loc:@model_3/patch_encoder_3/embedding_3/embedding_lookup/56166* 
_output_shapes
:
ƒА*
dtype0В
=model_3/patch_encoder_3/embedding_3/embedding_lookup/IdentityIdentity=model_3/patch_encoder_3/embedding_3/embedding_lookup:output:0*
T0*M
_classC
A?loc:@model_3/patch_encoder_3/embedding_3/embedding_lookup/56166* 
_output_shapes
:
ƒАЊ
?model_3/patch_encoder_3/embedding_3/embedding_lookup/Identity_1IdentityFmodel_3/patch_encoder_3/embedding_3/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
ƒАў
model_3/patch_encoder_3/addAddV21model_3/patch_encoder_3/dense_31/BiasAdd:output:0Hmodel_3/patch_encoder_3/embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАЗ
=model_3/layer_normalization_22/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:д
+model_3/layer_normalization_22/moments/meanMeanmodel_3/patch_encoder_3/add:z:0Fmodel_3/layer_normalization_22/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(∞
3model_3/layer_normalization_22/moments/StopGradientStopGradient4model_3/layer_normalization_22/moments/mean:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒд
8model_3/layer_normalization_22/moments/SquaredDifferenceSquaredDifferencemodel_3/patch_encoder_3/add:z:0<model_3/layer_normalization_22/moments/StopGradient:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАЛ
Amodel_3/layer_normalization_22/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Й
/model_3/layer_normalization_22/moments/varianceMean<model_3/layer_normalization_22/moments/SquaredDifference:z:0Jmodel_3/layer_normalization_22/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(s
.model_3/layer_normalization_22/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5я
,model_3/layer_normalization_22/batchnorm/addAddV28model_3/layer_normalization_22/moments/variance:output:07model_3/layer_normalization_22/batchnorm/add/y:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ†
.model_3/layer_normalization_22/batchnorm/RsqrtRsqrt0model_3/layer_normalization_22/batchnorm/add:z:0*
T0*,
_output_shapes
:€€€€€€€€€ƒљ
;model_3/layer_normalization_22/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_3_layer_normalization_22_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0д
,model_3/layer_normalization_22/batchnorm/mulMul2model_3/layer_normalization_22/batchnorm/Rsqrt:y:0Cmodel_3/layer_normalization_22/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАј
.model_3/layer_normalization_22/batchnorm/mul_1Mulmodel_3/patch_encoder_3/add:z:00model_3/layer_normalization_22/batchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА’
.model_3/layer_normalization_22/batchnorm/mul_2Mul4model_3/layer_normalization_22/moments/mean:output:00model_3/layer_normalization_22/batchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАµ
7model_3/layer_normalization_22/batchnorm/ReadVariableOpReadVariableOp@model_3_layer_normalization_22_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0а
,model_3/layer_normalization_22/batchnorm/subSub?model_3/layer_normalization_22/batchnorm/ReadVariableOp:value:02model_3/layer_normalization_22/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА’
.model_3/layer_normalization_22/batchnorm/add_1AddV22model_3/layer_normalization_22/batchnorm/mul_1:z:00model_3/layer_normalization_22/batchnorm/sub:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА‘
Bmodel_3/multi_head_attention_11/query/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_3_multi_head_attention_11_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Я
3model_3/multi_head_attention_11/query/einsum/EinsumEinsum2model_3/layer_normalization_22/batchnorm/add_1:z:0Jmodel_3/multi_head_attention_11/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abdeї
8model_3/multi_head_attention_11/query/add/ReadVariableOpReadVariableOpAmodel_3_multi_head_attention_11_query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0о
)model_3/multi_head_attention_11/query/addAddV2<model_3/multi_head_attention_11/query/einsum/Einsum:output:0@model_3/multi_head_attention_11/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒА–
@model_3/multi_head_attention_11/key/einsum/Einsum/ReadVariableOpReadVariableOpImodel_3_multi_head_attention_11_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Ы
1model_3/multi_head_attention_11/key/einsum/EinsumEinsum2model_3/layer_normalization_22/batchnorm/add_1:z:0Hmodel_3/multi_head_attention_11/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abdeЈ
6model_3/multi_head_attention_11/key/add/ReadVariableOpReadVariableOp?model_3_multi_head_attention_11_key_add_readvariableop_resource*
_output_shapes
:	А*
dtype0и
'model_3/multi_head_attention_11/key/addAddV2:model_3/multi_head_attention_11/key/einsum/Einsum:output:0>model_3/multi_head_attention_11/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒА‘
Bmodel_3/multi_head_attention_11/value/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_3_multi_head_attention_11_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Я
3model_3/multi_head_attention_11/value/einsum/EinsumEinsum2model_3/layer_normalization_22/batchnorm/add_1:z:0Jmodel_3/multi_head_attention_11/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abdeї
8model_3/multi_head_attention_11/value/add/ReadVariableOpReadVariableOpAmodel_3_multi_head_attention_11_value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0о
)model_3/multi_head_attention_11/value/addAddV2<model_3/multi_head_attention_11/value/einsum/Einsum:output:0@model_3/multi_head_attention_11/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАj
%model_3/multi_head_attention_11/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *уµ=≈
#model_3/multi_head_attention_11/MulMul-model_3/multi_head_attention_11/query/add:z:0.model_3/multi_head_attention_11/Mul/y:output:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАс
-model_3/multi_head_attention_11/einsum/EinsumEinsum+model_3/multi_head_attention_11/key/add:z:0'model_3/multi_head_attention_11/Mul:z:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒƒ*
equationaecd,abcd->acbeЃ
/model_3/multi_head_attention_11/softmax/SoftmaxSoftmax6model_3/multi_head_attention_11/einsum/Einsum:output:0*
T0*1
_output_shapes
:€€€€€€€€€ƒƒ≥
0model_3/multi_head_attention_11/dropout/IdentityIdentity9model_3/multi_head_attention_11/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:€€€€€€€€€ƒƒЗ
/model_3/multi_head_attention_11/einsum_1/EinsumEinsum9model_3/multi_head_attention_11/dropout/Identity:output:0-model_3/multi_head_attention_11/value/add:z:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationacbe,aecd->abcdк
Mmodel_3/multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpVmodel_3_multi_head_attention_11_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Ј
>model_3/multi_head_attention_11/attention_output/einsum/EinsumEinsum8model_3/multi_head_attention_11/einsum_1/Einsum:output:0Umodel_3/multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:€€€€€€€€€ƒА*
equationabcd,cde->abeЌ
Cmodel_3/multi_head_attention_11/attention_output/add/ReadVariableOpReadVariableOpLmodel_3_multi_head_attention_11_attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0Л
4model_3/multi_head_attention_11/attention_output/addAddV2Gmodel_3/multi_head_attention_11/attention_output/einsum/Einsum:output:0Kmodel_3/multi_head_attention_11/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАЃ
model_3/add_22/addAddV28model_3/multi_head_attention_11/attention_output/add:z:0model_3/patch_encoder_3/add:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАЗ
=model_3/layer_normalization_23/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:џ
+model_3/layer_normalization_23/moments/meanMeanmodel_3/add_22/add:z:0Fmodel_3/layer_normalization_23/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(∞
3model_3/layer_normalization_23/moments/StopGradientStopGradient4model_3/layer_normalization_23/moments/mean:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒџ
8model_3/layer_normalization_23/moments/SquaredDifferenceSquaredDifferencemodel_3/add_22/add:z:0<model_3/layer_normalization_23/moments/StopGradient:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАЛ
Amodel_3/layer_normalization_23/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Й
/model_3/layer_normalization_23/moments/varianceMean<model_3/layer_normalization_23/moments/SquaredDifference:z:0Jmodel_3/layer_normalization_23/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(s
.model_3/layer_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5я
,model_3/layer_normalization_23/batchnorm/addAddV28model_3/layer_normalization_23/moments/variance:output:07model_3/layer_normalization_23/batchnorm/add/y:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ†
.model_3/layer_normalization_23/batchnorm/RsqrtRsqrt0model_3/layer_normalization_23/batchnorm/add:z:0*
T0*,
_output_shapes
:€€€€€€€€€ƒљ
;model_3/layer_normalization_23/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_3_layer_normalization_23_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0д
,model_3/layer_normalization_23/batchnorm/mulMul2model_3/layer_normalization_23/batchnorm/Rsqrt:y:0Cmodel_3/layer_normalization_23/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАЈ
.model_3/layer_normalization_23/batchnorm/mul_1Mulmodel_3/add_22/add:z:00model_3/layer_normalization_23/batchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА’
.model_3/layer_normalization_23/batchnorm/mul_2Mul4model_3/layer_normalization_23/moments/mean:output:00model_3/layer_normalization_23/batchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАµ
7model_3/layer_normalization_23/batchnorm/ReadVariableOpReadVariableOp@model_3_layer_normalization_23_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0а
,model_3/layer_normalization_23/batchnorm/subSub?model_3/layer_normalization_23/batchnorm/ReadVariableOp:value:02model_3/layer_normalization_23/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА’
.model_3/layer_normalization_23/batchnorm/add_1AddV22model_3/layer_normalization_23/batchnorm/mul_1:z:00model_3/layer_normalization_23/batchnorm/sub:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАЮ
)model_3/dense_32/Tensordot/ReadVariableOpReadVariableOp2model_3_dense_32_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0i
model_3/dense_32/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
model_3/dense_32/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       В
 model_3/dense_32/Tensordot/ShapeShape2model_3/layer_normalization_23/batchnorm/add_1:z:0*
T0*
_output_shapes
:j
(model_3/dense_32/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : €
#model_3/dense_32/Tensordot/GatherV2GatherV2)model_3/dense_32/Tensordot/Shape:output:0(model_3/dense_32/Tensordot/free:output:01model_3/dense_32/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*model_3/dense_32/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Г
%model_3/dense_32/Tensordot/GatherV2_1GatherV2)model_3/dense_32/Tensordot/Shape:output:0(model_3/dense_32/Tensordot/axes:output:03model_3/dense_32/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 model_3/dense_32/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
model_3/dense_32/Tensordot/ProdProd,model_3/dense_32/Tensordot/GatherV2:output:0)model_3/dense_32/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"model_3/dense_32/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: І
!model_3/dense_32/Tensordot/Prod_1Prod.model_3/dense_32/Tensordot/GatherV2_1:output:0+model_3/dense_32/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&model_3/dense_32/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : а
!model_3/dense_32/Tensordot/concatConcatV2(model_3/dense_32/Tensordot/free:output:0(model_3/dense_32/Tensordot/axes:output:0/model_3/dense_32/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ђ
 model_3/dense_32/Tensordot/stackPack(model_3/dense_32/Tensordot/Prod:output:0*model_3/dense_32/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:…
$model_3/dense_32/Tensordot/transpose	Transpose2model_3/layer_normalization_23/batchnorm/add_1:z:0*model_3/dense_32/Tensordot/concat:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАљ
"model_3/dense_32/Tensordot/ReshapeReshape(model_3/dense_32/Tensordot/transpose:y:0)model_3/dense_32/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Њ
!model_3/dense_32/Tensordot/MatMulMatMul+model_3/dense_32/Tensordot/Reshape:output:01model_3/dense_32/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аm
"model_3/dense_32/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аj
(model_3/dense_32/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : л
#model_3/dense_32/Tensordot/concat_1ConcatV2,model_3/dense_32/Tensordot/GatherV2:output:0+model_3/dense_32/Tensordot/Const_2:output:01model_3/dense_32/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Є
model_3/dense_32/TensordotReshape+model_3/dense_32/Tensordot/MatMul:product:0,model_3/dense_32/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАХ
'model_3/dense_32/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_32_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0±
model_3/dense_32/BiasAddBiasAdd#model_3/dense_32/Tensordot:output:0/model_3/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАx
model_3/dense_32/ReluRelu!model_3/dense_32/BiasAdd:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАД
model_3/dropout_25/IdentityIdentity#model_3/dense_32/Relu:activations:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАЮ
)model_3/dense_33/Tensordot/ReadVariableOpReadVariableOp2model_3_dense_33_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0i
model_3/dense_33/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
model_3/dense_33/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       t
 model_3/dense_33/Tensordot/ShapeShape$model_3/dropout_25/Identity:output:0*
T0*
_output_shapes
:j
(model_3/dense_33/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : €
#model_3/dense_33/Tensordot/GatherV2GatherV2)model_3/dense_33/Tensordot/Shape:output:0(model_3/dense_33/Tensordot/free:output:01model_3/dense_33/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*model_3/dense_33/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Г
%model_3/dense_33/Tensordot/GatherV2_1GatherV2)model_3/dense_33/Tensordot/Shape:output:0(model_3/dense_33/Tensordot/axes:output:03model_3/dense_33/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 model_3/dense_33/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
model_3/dense_33/Tensordot/ProdProd,model_3/dense_33/Tensordot/GatherV2:output:0)model_3/dense_33/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"model_3/dense_33/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: І
!model_3/dense_33/Tensordot/Prod_1Prod.model_3/dense_33/Tensordot/GatherV2_1:output:0+model_3/dense_33/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&model_3/dense_33/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : а
!model_3/dense_33/Tensordot/concatConcatV2(model_3/dense_33/Tensordot/free:output:0(model_3/dense_33/Tensordot/axes:output:0/model_3/dense_33/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ђ
 model_3/dense_33/Tensordot/stackPack(model_3/dense_33/Tensordot/Prod:output:0*model_3/dense_33/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:ї
$model_3/dense_33/Tensordot/transpose	Transpose$model_3/dropout_25/Identity:output:0*model_3/dense_33/Tensordot/concat:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАљ
"model_3/dense_33/Tensordot/ReshapeReshape(model_3/dense_33/Tensordot/transpose:y:0)model_3/dense_33/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Њ
!model_3/dense_33/Tensordot/MatMulMatMul+model_3/dense_33/Tensordot/Reshape:output:01model_3/dense_33/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аm
"model_3/dense_33/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аj
(model_3/dense_33/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : л
#model_3/dense_33/Tensordot/concat_1ConcatV2,model_3/dense_33/Tensordot/GatherV2:output:0+model_3/dense_33/Tensordot/Const_2:output:01model_3/dense_33/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Є
model_3/dense_33/TensordotReshape+model_3/dense_33/Tensordot/MatMul:product:0,model_3/dense_33/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАХ
'model_3/dense_33/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_33_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0±
model_3/dense_33/BiasAddBiasAdd#model_3/dense_33/Tensordot:output:0/model_3/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАx
model_3/dense_33/ReluRelu!model_3/dense_33/BiasAdd:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАД
model_3/dropout_26/IdentityIdentity#model_3/dense_33/Relu:activations:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАС
model_3/add_23/addAddV2$model_3/dropout_26/Identity:output:0model_3/add_22/add:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАh
model_3/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ b  Т
model_3/flatten_3/ReshapeReshapemodel_3/add_23/add:z:0 model_3/flatten_3/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€АƒЩ
&model_3/dense_34/MatMul/ReadVariableOpReadVariableOp/model_3_dense_34_matmul_readvariableop_resource*!
_output_shapes
:АƒА*
dtype0®
model_3/dense_34/MatMulMatMul"model_3/flatten_3/Reshape:output:0.model_3/dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АХ
'model_3/dense_34/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_34_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0™
model_3/dense_34/BiasAddBiasAdd!model_3/dense_34/MatMul:product:0/model_3/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
model_3/dense_34/ReluRelu!model_3/dense_34/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А
model_3/dropout_27/IdentityIdentity#model_3/dense_34/Relu:activations:0*
T0*(
_output_shapes
:€€€€€€€€€АЧ
&model_3/dense_35/MatMul/ReadVariableOpReadVariableOp/model_3_dense_35_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0©
model_3/dense_35/MatMulMatMul$model_3/dropout_27/Identity:output:0.model_3/dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Ф
'model_3/dense_35/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0©
model_3/dense_35/BiasAddBiasAdd!model_3/dense_35/MatMul:product:0/model_3/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€x
model_3/dense_35/SoftmaxSoftmax!model_3/dense_35/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€q
IdentityIdentity"model_3/dense_35/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€«

NoOpNoOp(^model_3/dense_32/BiasAdd/ReadVariableOp*^model_3/dense_32/Tensordot/ReadVariableOp(^model_3/dense_33/BiasAdd/ReadVariableOp*^model_3/dense_33/Tensordot/ReadVariableOp(^model_3/dense_34/BiasAdd/ReadVariableOp'^model_3/dense_34/MatMul/ReadVariableOp(^model_3/dense_35/BiasAdd/ReadVariableOp'^model_3/dense_35/MatMul/ReadVariableOp8^model_3/layer_normalization_22/batchnorm/ReadVariableOp<^model_3/layer_normalization_22/batchnorm/mul/ReadVariableOp8^model_3/layer_normalization_23/batchnorm/ReadVariableOp<^model_3/layer_normalization_23/batchnorm/mul/ReadVariableOpD^model_3/multi_head_attention_11/attention_output/add/ReadVariableOpN^model_3/multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp7^model_3/multi_head_attention_11/key/add/ReadVariableOpA^model_3/multi_head_attention_11/key/einsum/Einsum/ReadVariableOp9^model_3/multi_head_attention_11/query/add/ReadVariableOpC^model_3/multi_head_attention_11/query/einsum/Einsum/ReadVariableOp9^model_3/multi_head_attention_11/value/add/ReadVariableOpC^model_3/multi_head_attention_11/value/einsum/Einsum/ReadVariableOp8^model_3/patch_encoder_3/dense_31/BiasAdd/ReadVariableOp:^model_3/patch_encoder_3/dense_31/Tensordot/ReadVariableOp5^model_3/patch_encoder_3/embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*В
_input_shapesq
o:€€€€€€€€€аа::: : : : : : : : : : : : : : : : : : : : : : : 2R
'model_3/dense_32/BiasAdd/ReadVariableOp'model_3/dense_32/BiasAdd/ReadVariableOp2V
)model_3/dense_32/Tensordot/ReadVariableOp)model_3/dense_32/Tensordot/ReadVariableOp2R
'model_3/dense_33/BiasAdd/ReadVariableOp'model_3/dense_33/BiasAdd/ReadVariableOp2V
)model_3/dense_33/Tensordot/ReadVariableOp)model_3/dense_33/Tensordot/ReadVariableOp2R
'model_3/dense_34/BiasAdd/ReadVariableOp'model_3/dense_34/BiasAdd/ReadVariableOp2P
&model_3/dense_34/MatMul/ReadVariableOp&model_3/dense_34/MatMul/ReadVariableOp2R
'model_3/dense_35/BiasAdd/ReadVariableOp'model_3/dense_35/BiasAdd/ReadVariableOp2P
&model_3/dense_35/MatMul/ReadVariableOp&model_3/dense_35/MatMul/ReadVariableOp2r
7model_3/layer_normalization_22/batchnorm/ReadVariableOp7model_3/layer_normalization_22/batchnorm/ReadVariableOp2z
;model_3/layer_normalization_22/batchnorm/mul/ReadVariableOp;model_3/layer_normalization_22/batchnorm/mul/ReadVariableOp2r
7model_3/layer_normalization_23/batchnorm/ReadVariableOp7model_3/layer_normalization_23/batchnorm/ReadVariableOp2z
;model_3/layer_normalization_23/batchnorm/mul/ReadVariableOp;model_3/layer_normalization_23/batchnorm/mul/ReadVariableOp2К
Cmodel_3/multi_head_attention_11/attention_output/add/ReadVariableOpCmodel_3/multi_head_attention_11/attention_output/add/ReadVariableOp2Ю
Mmodel_3/multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOpMmodel_3/multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp2p
6model_3/multi_head_attention_11/key/add/ReadVariableOp6model_3/multi_head_attention_11/key/add/ReadVariableOp2Д
@model_3/multi_head_attention_11/key/einsum/Einsum/ReadVariableOp@model_3/multi_head_attention_11/key/einsum/Einsum/ReadVariableOp2t
8model_3/multi_head_attention_11/query/add/ReadVariableOp8model_3/multi_head_attention_11/query/add/ReadVariableOp2И
Bmodel_3/multi_head_attention_11/query/einsum/Einsum/ReadVariableOpBmodel_3/multi_head_attention_11/query/einsum/Einsum/ReadVariableOp2t
8model_3/multi_head_attention_11/value/add/ReadVariableOp8model_3/multi_head_attention_11/value/add/ReadVariableOp2И
Bmodel_3/multi_head_attention_11/value/einsum/Einsum/ReadVariableOpBmodel_3/multi_head_attention_11/value/einsum/Einsum/ReadVariableOp2r
7model_3/patch_encoder_3/dense_31/BiasAdd/ReadVariableOp7model_3/patch_encoder_3/dense_31/BiasAdd/ReadVariableOp2v
9model_3/patch_encoder_3/dense_31/Tensordot/ReadVariableOp9model_3/patch_encoder_3/dense_31/Tensordot/ReadVariableOp2l
4model_3/patch_encoder_3/embedding_3/embedding_lookup4model_3/patch_encoder_3/embedding_3/embedding_lookup:Z V
1
_output_shapes
:€€€€€€€€€аа
!
_user_specified_name	input_4:,(
&
_output_shapes
::,(
&
_output_shapes
:
ј
R
&__inference_add_23_layer_call_fn_59722
inputs_0
inputs_1
identityњ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_add_23_layer_call_and_return_conditional_losses_57203f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:€€€€€€€€€ƒА:€€€€€€€€€ƒА:W S
-
_output_shapes
:€€€€€€€€€ƒА
"
_user_specified_name
inputs/0:WS
-
_output_shapes
:€€€€€€€€€ƒА
"
_user_specified_name
inputs/1
ƒ
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_59739

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ b  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:€€€€€€€€€АƒZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:€€€€€€€€€Аƒ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€ƒА:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
а
`
D__inference_patches_7_layer_call_and_return_conditional_losses_59344

images
identity;
ShapeShapeimages*
T0*
_output_shapes
:]
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
shrink_axis_maskљ
ExtractImagePatchesExtractImagePatchesimages*
T0*0
_output_shapes
:€€€€€€€€€А*
ksizes
*
paddingVALID*
rates
*
strides
Z
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€R
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :АП
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:Й
ReshapeReshapeExtractImagePatches:patches:0Reshape/shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€Аf
IdentityIdentityReshape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameimages
£
F
*__inference_dropout_27_layer_call_fn_59764

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_27_layer_call_and_return_conditional_losses_57235a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
»э
Л
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_59325

inputs
normalization_3_sub_y
normalization_3_sqrt_xM
?random_flip_3_stateful_uniform_full_int_rngreadandskip_resource:	H
:random_rotation_3_stateful_uniform_rngreadandskip_resource:	D
6random_zoom_3_stateful_uniform_rngreadandskip_resource:	
identityИҐ6random_flip_3/stateful_uniform_full_int/RngReadAndSkipҐ8random_flip_3/stateful_uniform_full_int_1/RngReadAndSkipҐ1random_rotation_3/stateful_uniform/RngReadAndSkipҐ-random_zoom_3/stateful_uniform/RngReadAndSkipҐ/random_zoom_3/stateful_uniform_1/RngReadAndSkipu
normalization_3/subSubinputsnormalization_3_sub_y*
T0*1
_output_shapes
:€€€€€€€€€ааe
normalization_3/SqrtSqrtnormalization_3_sqrt_x*
T0*&
_output_shapes
:^
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3С
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:Ф
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*1
_output_shapes
:€€€€€€€€€ааw
-random_flip_3/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:w
-random_flip_3/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ≈
,random_flip_3/stateful_uniform_full_int/ProdProd6random_flip_3/stateful_uniform_full_int/shape:output:06random_flip_3/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: p
.random_flip_3/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Э
.random_flip_3/stateful_uniform_full_int/Cast_1Cast5random_flip_3/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Т
6random_flip_3/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip?random_flip_3_stateful_uniform_full_int_rngreadandskip_resource7random_flip_3/stateful_uniform_full_int/Cast/x:output:02random_flip_3/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:Е
;random_flip_3/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: З
=random_flip_3/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:З
=random_flip_3/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
5random_flip_3/stateful_uniform_full_int/strided_sliceStridedSlice>random_flip_3/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip_3/stateful_uniform_full_int/strided_slice/stack:output:0Frandom_flip_3/stateful_uniform_full_int/strided_slice/stack_1:output:0Frandom_flip_3/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЂ
/random_flip_3/stateful_uniform_full_int/BitcastBitcast>random_flip_3/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0З
=random_flip_3/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Й
?random_flip_3/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?random_flip_3/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Х
7random_flip_3/stateful_uniform_full_int/strided_slice_1StridedSlice>random_flip_3/stateful_uniform_full_int/RngReadAndSkip:value:0Frandom_flip_3/stateful_uniform_full_int/strided_slice_1/stack:output:0Hrandom_flip_3/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Hrandom_flip_3/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:ѓ
1random_flip_3/stateful_uniform_full_int/Bitcast_1Bitcast@random_flip_3/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0m
+random_flip_3/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :„
'random_flip_3/stateful_uniform_full_intStatelessRandomUniformFullIntV26random_flip_3/stateful_uniform_full_int/shape:output:0:random_flip_3/stateful_uniform_full_int/Bitcast_1:output:08random_flip_3/stateful_uniform_full_int/Bitcast:output:04random_flip_3/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	b
random_flip_3/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R Ґ
random_flip_3/stackPack0random_flip_3/stateful_uniform_full_int:output:0!random_flip_3/zeros_like:output:0*
N*
T0	*
_output_shapes

:r
!random_flip_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        t
#random_flip_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       t
#random_flip_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      љ
random_flip_3/strided_sliceStridedSlicerandom_flip_3/stack:output:0*random_flip_3/strided_slice/stack:output:0,random_flip_3/strided_slice/stack_1:output:0,random_flip_3/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask“
Arandom_flip_3/stateless_random_flip_left_right/control_dependencyIdentitynormalization_3/truediv:z:0*
T0**
_class 
loc:@normalization_3/truediv*1
_output_shapes
:€€€€€€€€€ааЃ
4random_flip_3/stateless_random_flip_left_right/ShapeShapeJrandom_flip_3/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:М
Brandom_flip_3/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: О
Drandom_flip_3/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:О
Drandom_flip_3/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Љ
<random_flip_3/stateless_random_flip_left_right/strided_sliceStridedSlice=random_flip_3/stateless_random_flip_left_right/Shape:output:0Krandom_flip_3/stateless_random_flip_left_right/strided_slice/stack:output:0Mrandom_flip_3/stateless_random_flip_left_right/strided_slice/stack_1:output:0Mrandom_flip_3/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
Mrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/shapePackErandom_flip_3/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:Р
Krandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Р
Krandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ћ
drandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter$random_flip_3/strided_slice:output:0* 
_output_shapes
::¶
drandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ƒ
`random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Vrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0jrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0nrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0mrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€Я
Krandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/subSubTrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Trandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Љ
Krandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/mulMulirandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Orandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€•
Grandom_flip_3/stateless_random_flip_left_right/stateless_random_uniformAddV2Orandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Trandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€А
>random_flip_3/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :А
>random_flip_3/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :А
>random_flip_3/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Ф
<random_flip_3/stateless_random_flip_left_right/Reshape/shapePackErandom_flip_3/stateless_random_flip_left_right/strided_slice:output:0Grandom_flip_3/stateless_random_flip_left_right/Reshape/shape/1:output:0Grandom_flip_3/stateless_random_flip_left_right/Reshape/shape/2:output:0Grandom_flip_3/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:П
6random_flip_3/stateless_random_flip_left_right/ReshapeReshapeKrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform:z:0Erandom_flip_3/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Є
4random_flip_3/stateless_random_flip_left_right/RoundRound?random_flip_3/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€З
=random_flip_3/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Х
8random_flip_3/stateless_random_flip_left_right/ReverseV2	ReverseV2Jrandom_flip_3/stateless_random_flip_left_right/control_dependency:output:0Frandom_flip_3/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€аат
2random_flip_3/stateless_random_flip_left_right/mulMul8random_flip_3/stateless_random_flip_left_right/Round:y:0Arandom_flip_3/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааy
4random_flip_3/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?м
2random_flip_3/stateless_random_flip_left_right/subSub=random_flip_3/stateless_random_flip_left_right/sub/x:output:08random_flip_3/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€ы
4random_flip_3/stateless_random_flip_left_right/mul_1Mul6random_flip_3/stateless_random_flip_left_right/sub:z:0Jrandom_flip_3/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€аай
2random_flip_3/stateless_random_flip_left_right/addAddV26random_flip_3/stateless_random_flip_left_right/mul:z:08random_flip_3/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€ааy
/random_flip_3/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:y
/random_flip_3/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ћ
.random_flip_3/stateful_uniform_full_int_1/ProdProd8random_flip_3/stateful_uniform_full_int_1/shape:output:08random_flip_3/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: r
0random_flip_3/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :°
0random_flip_3/stateful_uniform_full_int_1/Cast_1Cast7random_flip_3/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: —
8random_flip_3/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip?random_flip_3_stateful_uniform_full_int_rngreadandskip_resource9random_flip_3/stateful_uniform_full_int_1/Cast/x:output:04random_flip_3/stateful_uniform_full_int_1/Cast_1:y:07^random_flip_3/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:З
=random_flip_3/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Й
?random_flip_3/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?random_flip_3/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:©
7random_flip_3/stateful_uniform_full_int_1/strided_sliceStridedSlice@random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip:value:0Frandom_flip_3/stateful_uniform_full_int_1/strided_slice/stack:output:0Hrandom_flip_3/stateful_uniform_full_int_1/strided_slice/stack_1:output:0Hrandom_flip_3/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskѓ
1random_flip_3/stateful_uniform_full_int_1/BitcastBitcast@random_flip_3/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Й
?random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Л
Arandom_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Л
Arandom_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
9random_flip_3/stateful_uniform_full_int_1/strided_slice_1StridedSlice@random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip:value:0Hrandom_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Jrandom_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Jrandom_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:≥
3random_flip_3/stateful_uniform_full_int_1/Bitcast_1BitcastBrandom_flip_3/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-random_flip_3/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :б
)random_flip_3/stateful_uniform_full_int_1StatelessRandomUniformFullIntV28random_flip_3/stateful_uniform_full_int_1/shape:output:0<random_flip_3/stateful_uniform_full_int_1/Bitcast_1:output:0:random_flip_3/stateful_uniform_full_int_1/Bitcast:output:06random_flip_3/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	d
random_flip_3/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ®
random_flip_3/stack_1Pack2random_flip_3/stateful_uniform_full_int_1:output:0#random_flip_3/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:t
#random_flip_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%random_flip_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       v
%random_flip_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      «
random_flip_3/strided_slice_1StridedSlicerandom_flip_3/stack_1:output:0,random_flip_3/strided_slice_1/stack:output:0.random_flip_3/strided_slice_1/stack_1:output:0.random_flip_3/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskЕ
>random_flip_3/stateless_random_flip_up_down/control_dependencyIdentity6random_flip_3/stateless_random_flip_left_right/add:z:0*
T0*E
_class;
97loc:@random_flip_3/stateless_random_flip_left_right/add*1
_output_shapes
:€€€€€€€€€аа®
1random_flip_3/stateless_random_flip_up_down/ShapeShapeGrandom_flip_3/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:Й
?random_flip_3/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Л
Arandom_flip_3/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Л
Arandom_flip_3/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:≠
9random_flip_3/stateless_random_flip_up_down/strided_sliceStridedSlice:random_flip_3/stateless_random_flip_up_down/Shape:output:0Hrandom_flip_3/stateless_random_flip_up_down/strided_slice/stack:output:0Jrandom_flip_3/stateless_random_flip_up_down/strided_slice/stack_1:output:0Jrandom_flip_3/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskƒ
Jrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/shapePackBrandom_flip_3/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:Н
Hrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Н
Hrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ћ
arandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter&random_flip_3/strided_slice_1:output:0* 
_output_shapes
::£
arandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :µ
]random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Srandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0grandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0krandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0jrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€Ц
Hrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/subSubQrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Qrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ≥
Hrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/mulMulfrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Lrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ь
Drandom_flip_3/stateless_random_flip_up_down/stateless_random_uniformAddV2Lrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Qrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€}
;random_flip_3/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :}
;random_flip_3/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :}
;random_flip_3/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Е
9random_flip_3/stateless_random_flip_up_down/Reshape/shapePackBrandom_flip_3/stateless_random_flip_up_down/strided_slice:output:0Drandom_flip_3/stateless_random_flip_up_down/Reshape/shape/1:output:0Drandom_flip_3/stateless_random_flip_up_down/Reshape/shape/2:output:0Drandom_flip_3/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Ж
3random_flip_3/stateless_random_flip_up_down/ReshapeReshapeHrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform:z:0Brandom_flip_3/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€≤
1random_flip_3/stateless_random_flip_up_down/RoundRound<random_flip_3/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Д
:random_flip_3/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:М
5random_flip_3/stateless_random_flip_up_down/ReverseV2	ReverseV2Grandom_flip_3/stateless_random_flip_up_down/control_dependency:output:0Crandom_flip_3/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€аай
/random_flip_3/stateless_random_flip_up_down/mulMul5random_flip_3/stateless_random_flip_up_down/Round:y:0>random_flip_3/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааv
1random_flip_3/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?г
/random_flip_3/stateless_random_flip_up_down/subSub:random_flip_3/stateless_random_flip_up_down/sub/x:output:05random_flip_3/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€т
1random_flip_3/stateless_random_flip_up_down/mul_1Mul3random_flip_3/stateless_random_flip_up_down/sub:z:0Grandom_flip_3/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааа
/random_flip_3/stateless_random_flip_up_down/addAddV23random_flip_3/stateless_random_flip_up_down/mul:z:05random_flip_3/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€ааz
random_rotation_3/ShapeShape3random_flip_3/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
:o
%random_rotation_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'random_rotation_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'random_rotation_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ђ
random_rotation_3/strided_sliceStridedSlice random_rotation_3/Shape:output:0.random_rotation_3/strided_slice/stack:output:00random_rotation_3/strided_slice/stack_1:output:00random_rotation_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
'random_rotation_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€|
)random_rotation_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€s
)random_rotation_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:≥
!random_rotation_3/strided_slice_1StridedSlice random_rotation_3/Shape:output:00random_rotation_3/strided_slice_1/stack:output:02random_rotation_3/strided_slice_1/stack_1:output:02random_rotation_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
random_rotation_3/CastCast*random_rotation_3/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: z
'random_rotation_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€|
)random_rotation_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€s
)random_rotation_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:≥
!random_rotation_3/strided_slice_2StridedSlice random_rotation_3/Shape:output:00random_rotation_3/strided_slice_2/stack:output:02random_rotation_3/strided_slice_2/stack_1:output:02random_rotation_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
random_rotation_3/Cast_1Cast*random_rotation_3/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: И
(random_rotation_3/stateful_uniform/shapePack(random_rotation_3/strided_slice:output:0*
N*
T0*
_output_shapes
:k
&random_rotation_3/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *џIјk
&random_rotation_3/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *џI@r
(random_rotation_3/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ґ
'random_rotation_3/stateful_uniform/ProdProd1random_rotation_3/stateful_uniform/shape:output:01random_rotation_3/stateful_uniform/Const:output:0*
T0*
_output_shapes
: k
)random_rotation_3/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :У
)random_rotation_3/stateful_uniform/Cast_1Cast0random_rotation_3/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ю
1random_rotation_3/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_3_stateful_uniform_rngreadandskip_resource2random_rotation_3/stateful_uniform/Cast/x:output:0-random_rotation_3/stateful_uniform/Cast_1:y:0*
_output_shapes
:А
6random_rotation_3/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: В
8random_rotation_3/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:В
8random_rotation_3/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ж
0random_rotation_3/stateful_uniform/strided_sliceStridedSlice9random_rotation_3/stateful_uniform/RngReadAndSkip:value:0?random_rotation_3/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_3/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_3/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask°
*random_rotation_3/stateful_uniform/BitcastBitcast9random_rotation_3/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0В
8random_rotation_3/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Д
:random_rotation_3/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Д
:random_rotation_3/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
2random_rotation_3/stateful_uniform/strided_slice_1StridedSlice9random_rotation_3/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_3/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_3/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_3/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:•
,random_rotation_3/stateful_uniform/Bitcast_1Bitcast;random_rotation_3/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0Б
?random_rotation_3/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :е
;random_rotation_3/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_3/stateful_uniform/shape:output:05random_rotation_3/stateful_uniform/Bitcast_1:output:03random_rotation_3/stateful_uniform/Bitcast:output:0Hrandom_rotation_3/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€∞
&random_rotation_3/stateful_uniform/subSub/random_rotation_3/stateful_uniform/max:output:0/random_rotation_3/stateful_uniform/min:output:0*
T0*
_output_shapes
: Ќ
&random_rotation_3/stateful_uniform/mulMulDrandom_rotation_3/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_3/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€ґ
"random_rotation_3/stateful_uniformAddV2*random_rotation_3/stateful_uniform/mul:z:0/random_rotation_3/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€l
'random_rotation_3/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Э
%random_rotation_3/rotation_matrix/subSubrandom_rotation_3/Cast_1:y:00random_rotation_3/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: В
%random_rotation_3/rotation_matrix/CosCos&random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€n
)random_rotation_3/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?°
'random_rotation_3/rotation_matrix/sub_1Subrandom_rotation_3/Cast_1:y:02random_rotation_3/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: ≤
%random_rotation_3/rotation_matrix/mulMul)random_rotation_3/rotation_matrix/Cos:y:0+random_rotation_3/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€В
%random_rotation_3/rotation_matrix/SinSin&random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€n
)random_rotation_3/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Я
'random_rotation_3/rotation_matrix/sub_2Subrandom_rotation_3/Cast:y:02random_rotation_3/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: і
'random_rotation_3/rotation_matrix/mul_1Mul)random_rotation_3/rotation_matrix/Sin:y:0+random_rotation_3/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€і
'random_rotation_3/rotation_matrix/sub_3Sub)random_rotation_3/rotation_matrix/mul:z:0+random_rotation_3/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€і
'random_rotation_3/rotation_matrix/sub_4Sub)random_rotation_3/rotation_matrix/sub:z:0+random_rotation_3/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€p
+random_rotation_3/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @≈
)random_rotation_3/rotation_matrix/truedivRealDiv+random_rotation_3/rotation_matrix/sub_4:z:04random_rotation_3/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€n
)random_rotation_3/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Я
'random_rotation_3/rotation_matrix/sub_5Subrandom_rotation_3/Cast:y:02random_rotation_3/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: Д
'random_rotation_3/rotation_matrix/Sin_1Sin&random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€n
)random_rotation_3/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?°
'random_rotation_3/rotation_matrix/sub_6Subrandom_rotation_3/Cast_1:y:02random_rotation_3/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: ґ
'random_rotation_3/rotation_matrix/mul_2Mul+random_rotation_3/rotation_matrix/Sin_1:y:0+random_rotation_3/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€Д
'random_rotation_3/rotation_matrix/Cos_1Cos&random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€n
)random_rotation_3/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Я
'random_rotation_3/rotation_matrix/sub_7Subrandom_rotation_3/Cast:y:02random_rotation_3/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: ґ
'random_rotation_3/rotation_matrix/mul_3Mul+random_rotation_3/rotation_matrix/Cos_1:y:0+random_rotation_3/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€ґ
%random_rotation_3/rotation_matrix/addAddV2+random_rotation_3/rotation_matrix/mul_2:z:0+random_rotation_3/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€і
'random_rotation_3/rotation_matrix/sub_8Sub+random_rotation_3/rotation_matrix/sub_5:z:0)random_rotation_3/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€r
-random_rotation_3/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @…
+random_rotation_3/rotation_matrix/truediv_1RealDiv+random_rotation_3/rotation_matrix/sub_8:z:06random_rotation_3/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€}
'random_rotation_3/rotation_matrix/ShapeShape&random_rotation_3/stateful_uniform:z:0*
T0*
_output_shapes
:
5random_rotation_3/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Б
7random_rotation_3/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Б
7random_rotation_3/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ы
/random_rotation_3/rotation_matrix/strided_sliceStridedSlice0random_rotation_3/rotation_matrix/Shape:output:0>random_rotation_3/rotation_matrix/strided_slice/stack:output:0@random_rotation_3/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_3/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskД
'random_rotation_3/rotation_matrix/Cos_2Cos&random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€И
7random_rotation_3/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_3/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_3/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ѓ
1random_rotation_3/rotation_matrix/strided_slice_1StridedSlice+random_rotation_3/rotation_matrix/Cos_2:y:0@random_rotation_3/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_3/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_3/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskД
'random_rotation_3/rotation_matrix/Sin_2Sin&random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€И
7random_rotation_3/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_3/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_3/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ѓ
1random_rotation_3/rotation_matrix/strided_slice_2StridedSlice+random_rotation_3/rotation_matrix/Sin_2:y:0@random_rotation_3/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_3/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_3/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЪ
%random_rotation_3/rotation_matrix/NegNeg:random_rotation_3/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€И
7random_rotation_3/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_3/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_3/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ∞
1random_rotation_3/rotation_matrix/strided_slice_3StridedSlice-random_rotation_3/rotation_matrix/truediv:z:0@random_rotation_3/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_3/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_3/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskД
'random_rotation_3/rotation_matrix/Sin_3Sin&random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€И
7random_rotation_3/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_3/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_3/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ѓ
1random_rotation_3/rotation_matrix/strided_slice_4StridedSlice+random_rotation_3/rotation_matrix/Sin_3:y:0@random_rotation_3/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_3/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_3/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskД
'random_rotation_3/rotation_matrix/Cos_3Cos&random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€И
7random_rotation_3/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_3/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_3/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ѓ
1random_rotation_3/rotation_matrix/strided_slice_5StridedSlice+random_rotation_3/rotation_matrix/Cos_3:y:0@random_rotation_3/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_3/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_3/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskИ
7random_rotation_3/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_3/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        К
9random_rotation_3/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ≤
1random_rotation_3/rotation_matrix/strided_slice_6StridedSlice/random_rotation_3/rotation_matrix/truediv_1:z:0@random_rotation_3/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_3/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_3/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskr
0random_rotation_3/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ў
.random_rotation_3/rotation_matrix/zeros/packedPack8random_rotation_3/rotation_matrix/strided_slice:output:09random_rotation_3/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:r
-random_rotation_3/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    “
'random_rotation_3/rotation_matrix/zerosFill7random_rotation_3/rotation_matrix/zeros/packed:output:06random_rotation_3/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€o
-random_rotation_3/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :∞
(random_rotation_3/rotation_matrix/concatConcatV2:random_rotation_3/rotation_matrix/strided_slice_1:output:0)random_rotation_3/rotation_matrix/Neg:y:0:random_rotation_3/rotation_matrix/strided_slice_3:output:0:random_rotation_3/rotation_matrix/strided_slice_4:output:0:random_rotation_3/rotation_matrix/strided_slice_5:output:0:random_rotation_3/rotation_matrix/strided_slice_6:output:00random_rotation_3/rotation_matrix/zeros:output:06random_rotation_3/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€Д
!random_rotation_3/transform/ShapeShape3random_flip_3/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
:y
/random_rotation_3/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_3/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1random_rotation_3/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:…
)random_rotation_3/transform/strided_sliceStridedSlice*random_rotation_3/transform/Shape:output:08random_rotation_3/transform/strided_slice/stack:output:0:random_rotation_3/transform/strided_slice/stack_1:output:0:random_rotation_3/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:k
&random_rotation_3/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
6random_rotation_3/transform/ImageProjectiveTransformV3ImageProjectiveTransformV33random_flip_3/stateless_random_flip_up_down/add:z:01random_rotation_3/rotation_matrix/concat:output:02random_rotation_3/transform/strided_slice:output:0/random_rotation_3/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€аа*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARО
random_zoom_3/ShapeShapeKrandom_rotation_3/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:k
!random_zoom_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#random_zoom_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#random_zoom_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ч
random_zoom_3/strided_sliceStridedSlicerandom_zoom_3/Shape:output:0*random_zoom_3/strided_slice/stack:output:0,random_zoom_3/strided_slice/stack_1:output:0,random_zoom_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
#random_zoom_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€x
%random_zoom_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€o
%random_zoom_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
random_zoom_3/strided_slice_1StridedSlicerandom_zoom_3/Shape:output:0,random_zoom_3/strided_slice_1/stack:output:0.random_zoom_3/strided_slice_1/stack_1:output:0.random_zoom_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
random_zoom_3/CastCast&random_zoom_3/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: v
#random_zoom_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€x
%random_zoom_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€o
%random_zoom_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Я
random_zoom_3/strided_slice_2StridedSlicerandom_zoom_3/Shape:output:0,random_zoom_3/strided_slice_2/stack:output:0.random_zoom_3/strided_slice_2/stack_1:output:0.random_zoom_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
random_zoom_3/Cast_1Cast&random_zoom_3/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: h
&random_zoom_3/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :±
$random_zoom_3/stateful_uniform/shapePack$random_zoom_3/strided_slice:output:0/random_zoom_3/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:g
"random_zoom_3/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?g
"random_zoom_3/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff¶?n
$random_zoom_3/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ™
#random_zoom_3/stateful_uniform/ProdProd-random_zoom_3/stateful_uniform/shape:output:0-random_zoom_3/stateful_uniform/Const:output:0*
T0*
_output_shapes
: g
%random_zoom_3/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Л
%random_zoom_3/stateful_uniform/Cast_1Cast,random_zoom_3/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: о
-random_zoom_3/stateful_uniform/RngReadAndSkipRngReadAndSkip6random_zoom_3_stateful_uniform_rngreadandskip_resource.random_zoom_3/stateful_uniform/Cast/x:output:0)random_zoom_3/stateful_uniform/Cast_1:y:0*
_output_shapes
:|
2random_zoom_3/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4random_zoom_3/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4random_zoom_3/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
,random_zoom_3/stateful_uniform/strided_sliceStridedSlice5random_zoom_3/stateful_uniform/RngReadAndSkip:value:0;random_zoom_3/stateful_uniform/strided_slice/stack:output:0=random_zoom_3/stateful_uniform/strided_slice/stack_1:output:0=random_zoom_3/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЩ
&random_zoom_3/stateful_uniform/BitcastBitcast5random_zoom_3/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0~
4random_zoom_3/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:А
6random_zoom_3/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6random_zoom_3/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:и
.random_zoom_3/stateful_uniform/strided_slice_1StridedSlice5random_zoom_3/stateful_uniform/RngReadAndSkip:value:0=random_zoom_3/stateful_uniform/strided_slice_1/stack:output:0?random_zoom_3/stateful_uniform/strided_slice_1/stack_1:output:0?random_zoom_3/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Э
(random_zoom_3/stateful_uniform/Bitcast_1Bitcast7random_zoom_3/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0}
;random_zoom_3/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :’
7random_zoom_3/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2-random_zoom_3/stateful_uniform/shape:output:01random_zoom_3/stateful_uniform/Bitcast_1:output:0/random_zoom_3/stateful_uniform/Bitcast:output:0Drandom_zoom_3/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€§
"random_zoom_3/stateful_uniform/subSub+random_zoom_3/stateful_uniform/max:output:0+random_zoom_3/stateful_uniform/min:output:0*
T0*
_output_shapes
: ≈
"random_zoom_3/stateful_uniform/mulMul@random_zoom_3/stateful_uniform/StatelessRandomUniformV2:output:0&random_zoom_3/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ѓ
random_zoom_3/stateful_uniformAddV2&random_zoom_3/stateful_uniform/mul:z:0+random_zoom_3/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€j
(random_zoom_3/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :µ
&random_zoom_3/stateful_uniform_1/shapePack$random_zoom_3/strided_slice:output:01random_zoom_3/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:i
$random_zoom_3/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?i
$random_zoom_3/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff¶?p
&random_zoom_3/stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ∞
%random_zoom_3/stateful_uniform_1/ProdProd/random_zoom_3/stateful_uniform_1/shape:output:0/random_zoom_3/stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: i
'random_zoom_3/stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :П
'random_zoom_3/stateful_uniform_1/Cast_1Cast.random_zoom_3/stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: §
/random_zoom_3/stateful_uniform_1/RngReadAndSkipRngReadAndSkip6random_zoom_3_stateful_uniform_rngreadandskip_resource0random_zoom_3/stateful_uniform_1/Cast/x:output:0+random_zoom_3/stateful_uniform_1/Cast_1:y:0.^random_zoom_3/stateful_uniform/RngReadAndSkip*
_output_shapes
:~
4random_zoom_3/stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6random_zoom_3/stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6random_zoom_3/stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ь
.random_zoom_3/stateful_uniform_1/strided_sliceStridedSlice7random_zoom_3/stateful_uniform_1/RngReadAndSkip:value:0=random_zoom_3/stateful_uniform_1/strided_slice/stack:output:0?random_zoom_3/stateful_uniform_1/strided_slice/stack_1:output:0?random_zoom_3/stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЭ
(random_zoom_3/stateful_uniform_1/BitcastBitcast7random_zoom_3/stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0А
6random_zoom_3/stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:В
8random_zoom_3/stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:В
8random_zoom_3/stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:т
0random_zoom_3/stateful_uniform_1/strided_slice_1StridedSlice7random_zoom_3/stateful_uniform_1/RngReadAndSkip:value:0?random_zoom_3/stateful_uniform_1/strided_slice_1/stack:output:0Arandom_zoom_3/stateful_uniform_1/strided_slice_1/stack_1:output:0Arandom_zoom_3/stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:°
*random_zoom_3/stateful_uniform_1/Bitcast_1Bitcast9random_zoom_3/stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
=random_zoom_3/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :я
9random_zoom_3/stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2/random_zoom_3/stateful_uniform_1/shape:output:03random_zoom_3/stateful_uniform_1/Bitcast_1:output:01random_zoom_3/stateful_uniform_1/Bitcast:output:0Frandom_zoom_3/stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€™
$random_zoom_3/stateful_uniform_1/subSub-random_zoom_3/stateful_uniform_1/max:output:0-random_zoom_3/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: Ћ
$random_zoom_3/stateful_uniform_1/mulMulBrandom_zoom_3/stateful_uniform_1/StatelessRandomUniformV2:output:0(random_zoom_3/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€і
 random_zoom_3/stateful_uniform_1AddV2(random_zoom_3/stateful_uniform_1/mul:z:0-random_zoom_3/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€[
random_zoom_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :…
random_zoom_3/concatConcatV2$random_zoom_3/stateful_uniform_1:z:0"random_zoom_3/stateful_uniform:z:0"random_zoom_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€l
random_zoom_3/zoom_matrix/ShapeShaperandom_zoom_3/concat:output:0*
T0*
_output_shapes
:w
-random_zoom_3/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/random_zoom_3/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/random_zoom_3/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
'random_zoom_3/zoom_matrix/strided_sliceStridedSlice(random_zoom_3/zoom_matrix/Shape:output:06random_zoom_3/zoom_matrix/strided_slice/stack:output:08random_zoom_3/zoom_matrix/strided_slice/stack_1:output:08random_zoom_3/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
random_zoom_3/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Й
random_zoom_3/zoom_matrix/subSubrandom_zoom_3/Cast_1:y:0(random_zoom_3/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: h
#random_zoom_3/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ю
!random_zoom_3/zoom_matrix/truedivRealDiv!random_zoom_3/zoom_matrix/sub:z:0,random_zoom_3/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: Д
/random_zoom_3/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            Ж
1random_zoom_3/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_3/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ш
)random_zoom_3/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskf
!random_zoom_3/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Є
random_zoom_3/zoom_matrix/sub_1Sub*random_zoom_3/zoom_matrix/sub_1/x:output:02random_zoom_3/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ґ
random_zoom_3/zoom_matrix/mulMul%random_zoom_3/zoom_matrix/truediv:z:0#random_zoom_3/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€f
!random_zoom_3/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Л
random_zoom_3/zoom_matrix/sub_2Subrandom_zoom_3/Cast:y:0*random_zoom_3/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: j
%random_zoom_3/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @§
#random_zoom_3/zoom_matrix/truediv_1RealDiv#random_zoom_3/zoom_matrix/sub_2:z:0.random_zoom_3/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: Д
/random_zoom_3/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_3/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_3/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ш
)random_zoom_3/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskf
!random_zoom_3/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Є
random_zoom_3/zoom_matrix/sub_3Sub*random_zoom_3/zoom_matrix/sub_3/x:output:02random_zoom_3/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€¶
random_zoom_3/zoom_matrix/mul_1Mul'random_zoom_3/zoom_matrix/truediv_1:z:0#random_zoom_3/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€Д
/random_zoom_3/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            Ж
1random_zoom_3/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_3/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ш
)random_zoom_3/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskj
(random_zoom_3/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ѕ
&random_zoom_3/zoom_matrix/zeros/packedPack0random_zoom_3/zoom_matrix/strided_slice:output:01random_zoom_3/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%random_zoom_3/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ї
random_zoom_3/zoom_matrix/zerosFill/random_zoom_3/zoom_matrix/zeros/packed:output:0.random_zoom_3/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€l
*random_zoom_3/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :≈
(random_zoom_3/zoom_matrix/zeros_1/packedPack0random_zoom_3/zoom_matrix/strided_slice:output:03random_zoom_3/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:l
'random_zoom_3/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ј
!random_zoom_3/zoom_matrix/zeros_1Fill1random_zoom_3/zoom_matrix/zeros_1/packed:output:00random_zoom_3/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Д
/random_zoom_3/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_3/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ж
1random_zoom_3/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         Ш
)random_zoom_3/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskl
*random_zoom_3/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :≈
(random_zoom_3/zoom_matrix/zeros_2/packedPack0random_zoom_3/zoom_matrix/strided_slice:output:03random_zoom_3/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:l
'random_zoom_3/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ј
!random_zoom_3/zoom_matrix/zeros_2Fill1random_zoom_3/zoom_matrix/zeros_2/packed:output:00random_zoom_3/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€g
%random_zoom_3/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :…
 random_zoom_3/zoom_matrix/concatConcatV22random_zoom_3/zoom_matrix/strided_slice_3:output:0(random_zoom_3/zoom_matrix/zeros:output:0!random_zoom_3/zoom_matrix/mul:z:0*random_zoom_3/zoom_matrix/zeros_1:output:02random_zoom_3/zoom_matrix/strided_slice_4:output:0#random_zoom_3/zoom_matrix/mul_1:z:0*random_zoom_3/zoom_matrix/zeros_2:output:0.random_zoom_3/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€Ш
random_zoom_3/transform/ShapeShapeKrandom_rotation_3/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:u
+random_zoom_3/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-random_zoom_3/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-random_zoom_3/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
%random_zoom_3/transform/strided_sliceStridedSlice&random_zoom_3/transform/Shape:output:04random_zoom_3/transform/strided_slice/stack:output:06random_zoom_3/transform/strided_slice/stack_1:output:06random_zoom_3/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:g
"random_zoom_3/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    В
2random_zoom_3/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_3/transform/ImageProjectiveTransformV3:transformed_images:0)random_zoom_3/zoom_matrix/concat:output:0.random_zoom_3/transform/strided_slice:output:0+random_zoom_3/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€аа*
dtype0*
interpolation
BILINEAR†
IdentityIdentityGrandom_zoom_3/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аа–
NoOpNoOp7^random_flip_3/stateful_uniform_full_int/RngReadAndSkip9^random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip2^random_rotation_3/stateful_uniform/RngReadAndSkip.^random_zoom_3/stateful_uniform/RngReadAndSkip0^random_zoom_3/stateful_uniform_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€аа::: : : 2p
6random_flip_3/stateful_uniform_full_int/RngReadAndSkip6random_flip_3/stateful_uniform_full_int/RngReadAndSkip2t
8random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip8random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip2f
1random_rotation_3/stateful_uniform/RngReadAndSkip1random_rotation_3/stateful_uniform/RngReadAndSkip2^
-random_zoom_3/stateful_uniform/RngReadAndSkip-random_zoom_3/stateful_uniform/RngReadAndSkip2b
/random_zoom_3/stateful_uniform_1/RngReadAndSkip/random_zoom_3/stateful_uniform_1/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
Є
э
C__inference_dense_33_layer_call_and_return_conditional_losses_59689

inputs5
!tensordot_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Л
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:АY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Е
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАV
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАg
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒАz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€ƒА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
ь	
а
1__inference_Data_Augmentation_layer_call_fn_56881
normalization_3_input
unknown
	unknown_0
	unknown_1:	
	unknown_2:	
	unknown_3:	
identityИҐStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallnormalization_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56853y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аа`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€аа::: : : 22
StatefulPartitionedCallStatefulPartitionedCall:h d
1
_output_shapes
:€€€€€€€€€аа
/
_user_specified_namenormalization_3_input:,(
&
_output_shapes
::,(
&
_output_shapes
:
ЧА
≈
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_60091

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
stateful_uniform/shapePackstrided_slice:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *џIјY
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *џI@`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ґ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Л
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ч
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @П
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: А
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @У
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€Y
rotation_matrix/ShapeShapestateful_uniform:z:0*
T0*
_output_shapes
:m
#rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€v
%rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskv
%rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        x
'rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ў
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :£
rotation_matrix/zeros/packedPack&rotation_matrix/strided_slice:output:0'rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ь
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :О
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    °
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€аа*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ааh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€аа: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
Л
Т
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_59426

inputs4
%batchnorm_mul_readvariableop_resource:	А0
!batchnorm_readvariableop_resource:	А
identityИҐbatchnorm/ReadVariableOpҐbatchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Н
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒН
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ђ
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5В
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒb
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0З
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАi
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАx
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0Г
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАx
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАh
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒАА
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€ƒА: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
ѕ
J
.__inference_Resize_Rescale_layer_call_fn_58916

inputs
identityЊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56368j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
§
љ
/__inference_patch_encoder_3_layer_call_fn_59355	
patch
unknown:
АА
	unknown_0:	А
	unknown_1:
ƒА
identityИҐStatefulPartitionedCallс
StatefulPartitionedCallStatefulPartitionedCallpatchunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_patch_encoder_3_layer_call_and_return_conditional_losses_56984u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€А: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А

_user_specified_namepatch
ж)
З
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_57507	
query	
valueC
+query_einsum_einsum_readvariableop_resource:АА4
!query_add_readvariableop_resource:	АA
)key_einsum_einsum_readvariableop_resource:АА2
key_add_readvariableop_resource:	АC
+value_einsum_einsum_readvariableop_resource:АА4
!value_add_readvariableop_resource:	АN
6attention_output_einsum_einsum_readvariableop_resource:АА;
,attention_output_add_readvariableop_resource:	А
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpФ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0≤
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0О
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАР
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Ѓ
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	А*
dtype0И
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАФ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0≤
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0О
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *уµ=e
MulMulquery/add:z:0Mul/y:output:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАС
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒƒ*
equationaecd,abcd->acben
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*1
_output_shapes
:€€€€€€€€€ƒƒІ
einsum_1/EinsumEinsumsoftmax/Softmax:softmax:0value/add:z:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationacbe,aecd->abcd™
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0„
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:€€€€€€€€€ƒА*
equationabcd,cde->abeН
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0Ђ
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАm
IdentityIdentityattention_output/add:z:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒАЎ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:€€€€€€€€€ƒА:€€€€€€€€€ƒА: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:T P
-
_output_shapes
:€€€€€€€€€ƒА

_user_specified_namequery:TP
-
_output_shapes
:€€€€€€€€€ƒА

_user_specified_namevalue
џ
Ш
(__inference_dense_32_layer_call_fn_59591

inputs
unknown:
АА
	unknown_0:	А
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_32_layer_call_and_return_conditional_losses_57140u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€ƒА: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
¬
}
-__inference_random_zoom_3_layer_call_fn_60103

inputs
unknown:	
identityИҐStatefulPartitionedCall„
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_56562y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аа`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€аа: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
µИ
Ґ
B__inference_model_3_layer_call_and_return_conditional_losses_58849

inputs+
'data_augmentation_normalization_3_sub_y,
(data_augmentation_normalization_3_sqrt_x_
Qdata_augmentation_random_flip_3_stateful_uniform_full_int_rngreadandskip_resource:	Z
Ldata_augmentation_random_rotation_3_stateful_uniform_rngreadandskip_resource:	V
Hdata_augmentation_random_zoom_3_stateful_uniform_rngreadandskip_resource:	N
:patch_encoder_3_dense_31_tensordot_readvariableop_resource:
ААG
8patch_encoder_3_dense_31_biasadd_readvariableop_resource:	АF
2patch_encoder_3_embedding_3_embedding_lookup_58681:
ƒАK
<layer_normalization_22_batchnorm_mul_readvariableop_resource:	АG
8layer_normalization_22_batchnorm_readvariableop_resource:	А[
Cmulti_head_attention_11_query_einsum_einsum_readvariableop_resource:ААL
9multi_head_attention_11_query_add_readvariableop_resource:	АY
Amulti_head_attention_11_key_einsum_einsum_readvariableop_resource:ААJ
7multi_head_attention_11_key_add_readvariableop_resource:	А[
Cmulti_head_attention_11_value_einsum_einsum_readvariableop_resource:ААL
9multi_head_attention_11_value_add_readvariableop_resource:	Аf
Nmulti_head_attention_11_attention_output_einsum_einsum_readvariableop_resource:ААS
Dmulti_head_attention_11_attention_output_add_readvariableop_resource:	АK
<layer_normalization_23_batchnorm_mul_readvariableop_resource:	АG
8layer_normalization_23_batchnorm_readvariableop_resource:	А>
*dense_32_tensordot_readvariableop_resource:
АА7
(dense_32_biasadd_readvariableop_resource:	А>
*dense_33_tensordot_readvariableop_resource:
АА7
(dense_33_biasadd_readvariableop_resource:	А<
'dense_34_matmul_readvariableop_resource:АƒА7
(dense_34_biasadd_readvariableop_resource:	А:
'dense_35_matmul_readvariableop_resource:	А6
(dense_35_biasadd_readvariableop_resource:
identityИҐHData_Augmentation/random_flip_3/stateful_uniform_full_int/RngReadAndSkipҐJData_Augmentation/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkipҐCData_Augmentation/random_rotation_3/stateful_uniform/RngReadAndSkipҐ?Data_Augmentation/random_zoom_3/stateful_uniform/RngReadAndSkipҐAData_Augmentation/random_zoom_3/stateful_uniform_1/RngReadAndSkipҐdense_32/BiasAdd/ReadVariableOpҐ!dense_32/Tensordot/ReadVariableOpҐdense_33/BiasAdd/ReadVariableOpҐ!dense_33/Tensordot/ReadVariableOpҐdense_34/BiasAdd/ReadVariableOpҐdense_34/MatMul/ReadVariableOpҐdense_35/BiasAdd/ReadVariableOpҐdense_35/MatMul/ReadVariableOpҐ/layer_normalization_22/batchnorm/ReadVariableOpҐ3layer_normalization_22/batchnorm/mul/ReadVariableOpҐ/layer_normalization_23/batchnorm/ReadVariableOpҐ3layer_normalization_23/batchnorm/mul/ReadVariableOpҐ;multi_head_attention_11/attention_output/add/ReadVariableOpҐEmulti_head_attention_11/attention_output/einsum/Einsum/ReadVariableOpҐ.multi_head_attention_11/key/add/ReadVariableOpҐ8multi_head_attention_11/key/einsum/Einsum/ReadVariableOpҐ0multi_head_attention_11/query/add/ReadVariableOpҐ:multi_head_attention_11/query/einsum/Einsum/ReadVariableOpҐ0multi_head_attention_11/value/add/ReadVariableOpҐ:multi_head_attention_11/value/einsum/Einsum/ReadVariableOpҐ/patch_encoder_3/dense_31/BiasAdd/ReadVariableOpҐ1patch_encoder_3/dense_31/Tensordot/ReadVariableOpҐ,patch_encoder_3/embedding_3/embedding_lookupv
%Resize_Rescale/resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"а   а   ѕ
/Resize_Rescale/resizing_3/resize/ResizeBilinearResizeBilinearinputs.Resize_Rescale/resizing_3/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа*
half_pixel_centers(f
!Resize_Rescale/rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;h
#Resize_Rescale/rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ѕ
Resize_Rescale/rescaling_3/mulMul@Resize_Rescale/resizing_3/resize/ResizeBilinear:resized_images:0*Resize_Rescale/rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааµ
Resize_Rescale/rescaling_3/addAddV2"Resize_Rescale/rescaling_3/mul:z:0,Resize_Rescale/rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааµ
%Data_Augmentation/normalization_3/subSub"Resize_Rescale/rescaling_3/add:z:0'data_augmentation_normalization_3_sub_y*
T0*1
_output_shapes
:€€€€€€€€€ааЙ
&Data_Augmentation/normalization_3/SqrtSqrt(data_augmentation_normalization_3_sqrt_x*
T0*&
_output_shapes
:p
+Data_Augmentation/normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3«
)Data_Augmentation/normalization_3/MaximumMaximum*Data_Augmentation/normalization_3/Sqrt:y:04Data_Augmentation/normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
: 
)Data_Augmentation/normalization_3/truedivRealDiv)Data_Augmentation/normalization_3/sub:z:0-Data_Augmentation/normalization_3/Maximum:z:0*
T0*1
_output_shapes
:€€€€€€€€€ааЙ
?Data_Augmentation/random_flip_3/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:Й
?Data_Augmentation/random_flip_3/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ы
>Data_Augmentation/random_flip_3/stateful_uniform_full_int/ProdProdHData_Augmentation/random_flip_3/stateful_uniform_full_int/shape:output:0HData_Augmentation/random_flip_3/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: В
@Data_Augmentation/random_flip_3/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Ѕ
@Data_Augmentation/random_flip_3/stateful_uniform_full_int/Cast_1CastGData_Augmentation/random_flip_3/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Џ
HData_Augmentation/random_flip_3/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipQdata_augmentation_random_flip_3_stateful_uniform_full_int_rngreadandskip_resourceIData_Augmentation/random_flip_3/stateful_uniform_full_int/Cast/x:output:0DData_Augmentation/random_flip_3/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:Ч
MData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Щ
OData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Щ
OData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
GData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_sliceStridedSlicePData_Augmentation/random_flip_3/stateful_uniform_full_int/RngReadAndSkip:value:0VData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice/stack:output:0XData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice/stack_1:output:0XData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskѕ
AData_Augmentation/random_flip_3/stateful_uniform_full_int/BitcastBitcastPData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Щ
OData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Ы
QData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ы
QData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
IData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice_1StridedSlicePData_Augmentation/random_flip_3/stateful_uniform_full_int/RngReadAndSkip:value:0XData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice_1/stack:output:0ZData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice_1/stack_1:output:0ZData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:”
CData_Augmentation/random_flip_3/stateful_uniform_full_int/Bitcast_1BitcastRData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
=Data_Augmentation/random_flip_3/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :±
9Data_Augmentation/random_flip_3/stateful_uniform_full_intStatelessRandomUniformFullIntV2HData_Augmentation/random_flip_3/stateful_uniform_full_int/shape:output:0LData_Augmentation/random_flip_3/stateful_uniform_full_int/Bitcast_1:output:0JData_Augmentation/random_flip_3/stateful_uniform_full_int/Bitcast:output:0FData_Augmentation/random_flip_3/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	t
*Data_Augmentation/random_flip_3/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R Ў
%Data_Augmentation/random_flip_3/stackPackBData_Augmentation/random_flip_3/stateful_uniform_full_int:output:03Data_Augmentation/random_flip_3/zeros_like:output:0*
N*
T0	*
_output_shapes

:Д
3Data_Augmentation/random_flip_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ж
5Data_Augmentation/random_flip_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       Ж
5Data_Augmentation/random_flip_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ч
-Data_Augmentation/random_flip_3/strided_sliceStridedSlice.Data_Augmentation/random_flip_3/stack:output:0<Data_Augmentation/random_flip_3/strided_slice/stack:output:0>Data_Augmentation/random_flip_3/strided_slice/stack_1:output:0>Data_Augmentation/random_flip_3/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskИ
SData_Augmentation/random_flip_3/stateless_random_flip_left_right/control_dependencyIdentity-Data_Augmentation/normalization_3/truediv:z:0*
T0*<
_class2
0.loc:@Data_Augmentation/normalization_3/truediv*1
_output_shapes
:€€€€€€€€€аа“
FData_Augmentation/random_flip_3/stateless_random_flip_left_right/ShapeShape\Data_Augmentation/random_flip_3/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:Ю
TData_Augmentation/random_flip_3/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: †
VData_Augmentation/random_flip_3/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:†
VData_Augmentation/random_flip_3/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ц
NData_Augmentation/random_flip_3/stateless_random_flip_left_right/strided_sliceStridedSliceOData_Augmentation/random_flip_3/stateless_random_flip_left_right/Shape:output:0]Data_Augmentation/random_flip_3/stateless_random_flip_left_right/strided_slice/stack:output:0_Data_Augmentation/random_flip_3/stateless_random_flip_left_right/strided_slice/stack_1:output:0_Data_Augmentation/random_flip_3/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskо
_Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/shapePackWData_Augmentation/random_flip_3/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:Ґ
]Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Ґ
]Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?р
vData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter6Data_Augmentation/random_flip_3/strided_slice:output:0* 
_output_shapes
::Є
vData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Я
rData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2hData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0|Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0АData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€’
]Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/subSubfData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/max:output:0fData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: т
]Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/mulMul{Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0aData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€џ
YData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniformAddV2aData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0fData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€Т
PData_Augmentation/random_flip_3/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Т
PData_Augmentation/random_flip_3/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Т
PData_Augmentation/random_flip_3/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :о
NData_Augmentation/random_flip_3/stateless_random_flip_left_right/Reshape/shapePackWData_Augmentation/random_flip_3/stateless_random_flip_left_right/strided_slice:output:0YData_Augmentation/random_flip_3/stateless_random_flip_left_right/Reshape/shape/1:output:0YData_Augmentation/random_flip_3/stateless_random_flip_left_right/Reshape/shape/2:output:0YData_Augmentation/random_flip_3/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:≈
HData_Augmentation/random_flip_3/stateless_random_flip_left_right/ReshapeReshape]Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform:z:0WData_Augmentation/random_flip_3/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€№
FData_Augmentation/random_flip_3/stateless_random_flip_left_right/RoundRoundQData_Augmentation/random_flip_3/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Щ
OData_Augmentation/random_flip_3/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Ћ
JData_Augmentation/random_flip_3/stateless_random_flip_left_right/ReverseV2	ReverseV2\Data_Augmentation/random_flip_3/stateless_random_flip_left_right/control_dependency:output:0XData_Augmentation/random_flip_3/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа®
DData_Augmentation/random_flip_3/stateless_random_flip_left_right/mulMulJData_Augmentation/random_flip_3/stateless_random_flip_left_right/Round:y:0SData_Augmentation/random_flip_3/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааЛ
FData_Augmentation/random_flip_3/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ґ
DData_Augmentation/random_flip_3/stateless_random_flip_left_right/subSubOData_Augmentation/random_flip_3/stateless_random_flip_left_right/sub/x:output:0JData_Augmentation/random_flip_3/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€±
FData_Augmentation/random_flip_3/stateless_random_flip_left_right/mul_1MulHData_Augmentation/random_flip_3/stateless_random_flip_left_right/sub:z:0\Data_Augmentation/random_flip_3/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааЯ
DData_Augmentation/random_flip_3/stateless_random_flip_left_right/addAddV2HData_Augmentation/random_flip_3/stateless_random_flip_left_right/mul:z:0JData_Augmentation/random_flip_3/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€ааЛ
AData_Augmentation/random_flip_3/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:Л
AData_Augmentation/random_flip_3/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Б
@Data_Augmentation/random_flip_3/stateful_uniform_full_int_1/ProdProdJData_Augmentation/random_flip_3/stateful_uniform_full_int_1/shape:output:0JData_Augmentation/random_flip_3/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: Д
BData_Augmentation/random_flip_3/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :≈
BData_Augmentation/random_flip_3/stateful_uniform_full_int_1/Cast_1CastIData_Augmentation/random_flip_3/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ђ
JData_Augmentation/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipQdata_augmentation_random_flip_3_stateful_uniform_full_int_rngreadandskip_resourceKData_Augmentation/random_flip_3/stateful_uniform_full_int_1/Cast/x:output:0FData_Augmentation/random_flip_3/stateful_uniform_full_int_1/Cast_1:y:0I^Data_Augmentation/random_flip_3/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:Щ
OData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ы
QData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ы
QData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
IData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_sliceStridedSliceRData_Augmentation/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip:value:0XData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice/stack:output:0ZData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice/stack_1:output:0ZData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask”
CData_Augmentation/random_flip_3/stateful_uniform_full_int_1/BitcastBitcastRData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Ы
QData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Э
SData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Э
SData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
KData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice_1StridedSliceRData_Augmentation/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip:value:0ZData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack:output:0\Data_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0\Data_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:„
EData_Augmentation/random_flip_3/stateful_uniform_full_int_1/Bitcast_1BitcastTData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0Б
?Data_Augmentation/random_flip_3/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :ї
;Data_Augmentation/random_flip_3/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2JData_Augmentation/random_flip_3/stateful_uniform_full_int_1/shape:output:0NData_Augmentation/random_flip_3/stateful_uniform_full_int_1/Bitcast_1:output:0LData_Augmentation/random_flip_3/stateful_uniform_full_int_1/Bitcast:output:0HData_Augmentation/random_flip_3/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	v
,Data_Augmentation/random_flip_3/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ё
'Data_Augmentation/random_flip_3/stack_1PackDData_Augmentation/random_flip_3/stateful_uniform_full_int_1:output:05Data_Augmentation/random_flip_3/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:Ж
5Data_Augmentation/random_flip_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        И
7Data_Augmentation/random_flip_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       И
7Data_Augmentation/random_flip_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      °
/Data_Augmentation/random_flip_3/strided_slice_1StridedSlice0Data_Augmentation/random_flip_3/stack_1:output:0>Data_Augmentation/random_flip_3/strided_slice_1/stack:output:0@Data_Augmentation/random_flip_3/strided_slice_1/stack_1:output:0@Data_Augmentation/random_flip_3/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskї
PData_Augmentation/random_flip_3/stateless_random_flip_up_down/control_dependencyIdentityHData_Augmentation/random_flip_3/stateless_random_flip_left_right/add:z:0*
T0*W
_classM
KIloc:@Data_Augmentation/random_flip_3/stateless_random_flip_left_right/add*1
_output_shapes
:€€€€€€€€€ааћ
CData_Augmentation/random_flip_3/stateless_random_flip_up_down/ShapeShapeYData_Augmentation/random_flip_3/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:Ы
QData_Augmentation/random_flip_3/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Э
SData_Augmentation/random_flip_3/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Э
SData_Augmentation/random_flip_3/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
KData_Augmentation/random_flip_3/stateless_random_flip_up_down/strided_sliceStridedSliceLData_Augmentation/random_flip_3/stateless_random_flip_up_down/Shape:output:0ZData_Augmentation/random_flip_3/stateless_random_flip_up_down/strided_slice/stack:output:0\Data_Augmentation/random_flip_3/stateless_random_flip_up_down/strided_slice/stack_1:output:0\Data_Augmentation/random_flip_3/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskи
\Data_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/shapePackTData_Augmentation/random_flip_3/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:Я
ZData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    Я
ZData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?п
sData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter8Data_Augmentation/random_flip_3/strided_slice_1:output:0* 
_output_shapes
::µ
sData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :П
oData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2eData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0yData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0}Data_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0|Data_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€ћ
ZData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/subSubcData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/max:output:0cData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: й
ZData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/mulMulxData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0^Data_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€“
VData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniformAddV2^Data_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0cData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€П
MData_Augmentation/random_flip_3/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :П
MData_Augmentation/random_flip_3/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :П
MData_Augmentation/random_flip_3/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :я
KData_Augmentation/random_flip_3/stateless_random_flip_up_down/Reshape/shapePackTData_Augmentation/random_flip_3/stateless_random_flip_up_down/strided_slice:output:0VData_Augmentation/random_flip_3/stateless_random_flip_up_down/Reshape/shape/1:output:0VData_Augmentation/random_flip_3/stateless_random_flip_up_down/Reshape/shape/2:output:0VData_Augmentation/random_flip_3/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Љ
EData_Augmentation/random_flip_3/stateless_random_flip_up_down/ReshapeReshapeZData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform:z:0TData_Augmentation/random_flip_3/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€÷
CData_Augmentation/random_flip_3/stateless_random_flip_up_down/RoundRoundNData_Augmentation/random_flip_3/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ц
LData_Augmentation/random_flip_3/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:¬
GData_Augmentation/random_flip_3/stateless_random_flip_up_down/ReverseV2	ReverseV2YData_Augmentation/random_flip_3/stateless_random_flip_up_down/control_dependency:output:0UData_Augmentation/random_flip_3/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааЯ
AData_Augmentation/random_flip_3/stateless_random_flip_up_down/mulMulGData_Augmentation/random_flip_3/stateless_random_flip_up_down/Round:y:0PData_Augmentation/random_flip_3/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааИ
CData_Augmentation/random_flip_3/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Щ
AData_Augmentation/random_flip_3/stateless_random_flip_up_down/subSubLData_Augmentation/random_flip_3/stateless_random_flip_up_down/sub/x:output:0GData_Augmentation/random_flip_3/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€®
CData_Augmentation/random_flip_3/stateless_random_flip_up_down/mul_1MulEData_Augmentation/random_flip_3/stateless_random_flip_up_down/sub:z:0YData_Augmentation/random_flip_3/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааЦ
AData_Augmentation/random_flip_3/stateless_random_flip_up_down/addAddV2EData_Augmentation/random_flip_3/stateless_random_flip_up_down/mul:z:0GData_Augmentation/random_flip_3/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€ааЮ
)Data_Augmentation/random_rotation_3/ShapeShapeEData_Augmentation/random_flip_3/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
:Б
7Data_Augmentation/random_rotation_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Г
9Data_Augmentation/random_rotation_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Г
9Data_Augmentation/random_rotation_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
1Data_Augmentation/random_rotation_3/strided_sliceStridedSlice2Data_Augmentation/random_rotation_3/Shape:output:0@Data_Augmentation/random_rotation_3/strided_slice/stack:output:0BData_Augmentation/random_rotation_3/strided_slice/stack_1:output:0BData_Augmentation/random_rotation_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskМ
9Data_Augmentation/random_rotation_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€О
;Data_Augmentation/random_rotation_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€Е
;Data_Augmentation/random_rotation_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
3Data_Augmentation/random_rotation_3/strided_slice_1StridedSlice2Data_Augmentation/random_rotation_3/Shape:output:0BData_Augmentation/random_rotation_3/strided_slice_1/stack:output:0DData_Augmentation/random_rotation_3/strided_slice_1/stack_1:output:0DData_Augmentation/random_rotation_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЮ
(Data_Augmentation/random_rotation_3/CastCast<Data_Augmentation/random_rotation_3/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: М
9Data_Augmentation/random_rotation_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€О
;Data_Augmentation/random_rotation_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€Е
;Data_Augmentation/random_rotation_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
3Data_Augmentation/random_rotation_3/strided_slice_2StridedSlice2Data_Augmentation/random_rotation_3/Shape:output:0BData_Augmentation/random_rotation_3/strided_slice_2/stack:output:0DData_Augmentation/random_rotation_3/strided_slice_2/stack_1:output:0DData_Augmentation/random_rotation_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask†
*Data_Augmentation/random_rotation_3/Cast_1Cast<Data_Augmentation/random_rotation_3/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: ђ
:Data_Augmentation/random_rotation_3/stateful_uniform/shapePack:Data_Augmentation/random_rotation_3/strided_slice:output:0*
N*
T0*
_output_shapes
:}
8Data_Augmentation/random_rotation_3/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *џIј}
8Data_Augmentation/random_rotation_3/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *џI@Д
:Data_Augmentation/random_rotation_3/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: м
9Data_Augmentation/random_rotation_3/stateful_uniform/ProdProdCData_Augmentation/random_rotation_3/stateful_uniform/shape:output:0CData_Augmentation/random_rotation_3/stateful_uniform/Const:output:0*
T0*
_output_shapes
: }
;Data_Augmentation/random_rotation_3/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Ј
;Data_Augmentation/random_rotation_3/stateful_uniform/Cast_1CastBData_Augmentation/random_rotation_3/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ∆
CData_Augmentation/random_rotation_3/stateful_uniform/RngReadAndSkipRngReadAndSkipLdata_augmentation_random_rotation_3_stateful_uniform_rngreadandskip_resourceDData_Augmentation/random_rotation_3/stateful_uniform/Cast/x:output:0?Data_Augmentation/random_rotation_3/stateful_uniform/Cast_1:y:0*
_output_shapes
:Т
HData_Augmentation/random_rotation_3/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Ф
JData_Augmentation/random_rotation_3/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ф
JData_Augmentation/random_rotation_3/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:а
BData_Augmentation/random_rotation_3/stateful_uniform/strided_sliceStridedSliceKData_Augmentation/random_rotation_3/stateful_uniform/RngReadAndSkip:value:0QData_Augmentation/random_rotation_3/stateful_uniform/strided_slice/stack:output:0SData_Augmentation/random_rotation_3/stateful_uniform/strided_slice/stack_1:output:0SData_Augmentation/random_rotation_3/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask≈
<Data_Augmentation/random_rotation_3/stateful_uniform/BitcastBitcastKData_Augmentation/random_rotation_3/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Ф
JData_Augmentation/random_rotation_3/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Ц
LData_Augmentation/random_rotation_3/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ц
LData_Augmentation/random_rotation_3/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
DData_Augmentation/random_rotation_3/stateful_uniform/strided_slice_1StridedSliceKData_Augmentation/random_rotation_3/stateful_uniform/RngReadAndSkip:value:0SData_Augmentation/random_rotation_3/stateful_uniform/strided_slice_1/stack:output:0UData_Augmentation/random_rotation_3/stateful_uniform/strided_slice_1/stack_1:output:0UData_Augmentation/random_rotation_3/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:…
>Data_Augmentation/random_rotation_3/stateful_uniform/Bitcast_1BitcastMData_Augmentation/random_rotation_3/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0У
QData_Augmentation/random_rotation_3/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :њ
MData_Augmentation/random_rotation_3/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2CData_Augmentation/random_rotation_3/stateful_uniform/shape:output:0GData_Augmentation/random_rotation_3/stateful_uniform/Bitcast_1:output:0EData_Augmentation/random_rotation_3/stateful_uniform/Bitcast:output:0ZData_Augmentation/random_rotation_3/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€ж
8Data_Augmentation/random_rotation_3/stateful_uniform/subSubAData_Augmentation/random_rotation_3/stateful_uniform/max:output:0AData_Augmentation/random_rotation_3/stateful_uniform/min:output:0*
T0*
_output_shapes
: Г
8Data_Augmentation/random_rotation_3/stateful_uniform/mulMulVData_Augmentation/random_rotation_3/stateful_uniform/StatelessRandomUniformV2:output:0<Data_Augmentation/random_rotation_3/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€м
4Data_Augmentation/random_rotation_3/stateful_uniformAddV2<Data_Augmentation/random_rotation_3/stateful_uniform/mul:z:0AData_Augmentation/random_rotation_3/stateful_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€~
9Data_Augmentation/random_rotation_3/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?”
7Data_Augmentation/random_rotation_3/rotation_matrix/subSub.Data_Augmentation/random_rotation_3/Cast_1:y:0BData_Augmentation/random_rotation_3/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ¶
7Data_Augmentation/random_rotation_3/rotation_matrix/CosCos8Data_Augmentation/random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
;Data_Augmentation/random_rotation_3/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?„
9Data_Augmentation/random_rotation_3/rotation_matrix/sub_1Sub.Data_Augmentation/random_rotation_3/Cast_1:y:0DData_Augmentation/random_rotation_3/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: и
7Data_Augmentation/random_rotation_3/rotation_matrix/mulMul;Data_Augmentation/random_rotation_3/rotation_matrix/Cos:y:0=Data_Augmentation/random_rotation_3/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€¶
7Data_Augmentation/random_rotation_3/rotation_matrix/SinSin8Data_Augmentation/random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
;Data_Augmentation/random_rotation_3/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?’
9Data_Augmentation/random_rotation_3/rotation_matrix/sub_2Sub,Data_Augmentation/random_rotation_3/Cast:y:0DData_Augmentation/random_rotation_3/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: к
9Data_Augmentation/random_rotation_3/rotation_matrix/mul_1Mul;Data_Augmentation/random_rotation_3/rotation_matrix/Sin:y:0=Data_Augmentation/random_rotation_3/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:€€€€€€€€€к
9Data_Augmentation/random_rotation_3/rotation_matrix/sub_3Sub;Data_Augmentation/random_rotation_3/rotation_matrix/mul:z:0=Data_Augmentation/random_rotation_3/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:€€€€€€€€€к
9Data_Augmentation/random_rotation_3/rotation_matrix/sub_4Sub;Data_Augmentation/random_rotation_3/rotation_matrix/sub:z:0=Data_Augmentation/random_rotation_3/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€В
=Data_Augmentation/random_rotation_3/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ы
;Data_Augmentation/random_rotation_3/rotation_matrix/truedivRealDiv=Data_Augmentation/random_rotation_3/rotation_matrix/sub_4:z:0FData_Augmentation/random_rotation_3/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€А
;Data_Augmentation/random_rotation_3/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?’
9Data_Augmentation/random_rotation_3/rotation_matrix/sub_5Sub,Data_Augmentation/random_rotation_3/Cast:y:0DData_Augmentation/random_rotation_3/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: ®
9Data_Augmentation/random_rotation_3/rotation_matrix/Sin_1Sin8Data_Augmentation/random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
;Data_Augmentation/random_rotation_3/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?„
9Data_Augmentation/random_rotation_3/rotation_matrix/sub_6Sub.Data_Augmentation/random_rotation_3/Cast_1:y:0DData_Augmentation/random_rotation_3/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: м
9Data_Augmentation/random_rotation_3/rotation_matrix/mul_2Mul=Data_Augmentation/random_rotation_3/rotation_matrix/Sin_1:y:0=Data_Augmentation/random_rotation_3/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:€€€€€€€€€®
9Data_Augmentation/random_rotation_3/rotation_matrix/Cos_1Cos8Data_Augmentation/random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€А
;Data_Augmentation/random_rotation_3/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?’
9Data_Augmentation/random_rotation_3/rotation_matrix/sub_7Sub,Data_Augmentation/random_rotation_3/Cast:y:0DData_Augmentation/random_rotation_3/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: м
9Data_Augmentation/random_rotation_3/rotation_matrix/mul_3Mul=Data_Augmentation/random_rotation_3/rotation_matrix/Cos_1:y:0=Data_Augmentation/random_rotation_3/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:€€€€€€€€€м
7Data_Augmentation/random_rotation_3/rotation_matrix/addAddV2=Data_Augmentation/random_rotation_3/rotation_matrix/mul_2:z:0=Data_Augmentation/random_rotation_3/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:€€€€€€€€€к
9Data_Augmentation/random_rotation_3/rotation_matrix/sub_8Sub=Data_Augmentation/random_rotation_3/rotation_matrix/sub_5:z:0;Data_Augmentation/random_rotation_3/rotation_matrix/add:z:0*
T0*#
_output_shapes
:€€€€€€€€€Д
?Data_Augmentation/random_rotation_3/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @€
=Data_Augmentation/random_rotation_3/rotation_matrix/truediv_1RealDiv=Data_Augmentation/random_rotation_3/rotation_matrix/sub_8:z:0HData_Augmentation/random_rotation_3/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:€€€€€€€€€°
9Data_Augmentation/random_rotation_3/rotation_matrix/ShapeShape8Data_Augmentation/random_rotation_3/stateful_uniform:z:0*
T0*
_output_shapes
:С
GData_Augmentation/random_rotation_3/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: У
IData_Augmentation/random_rotation_3/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:У
IData_Augmentation/random_rotation_3/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:’
AData_Augmentation/random_rotation_3/rotation_matrix/strided_sliceStridedSliceBData_Augmentation/random_rotation_3/rotation_matrix/Shape:output:0PData_Augmentation/random_rotation_3/rotation_matrix/strided_slice/stack:output:0RData_Augmentation/random_rotation_3/rotation_matrix/strided_slice/stack_1:output:0RData_Augmentation/random_rotation_3/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask®
9Data_Augmentation/random_rotation_3/rotation_matrix/Cos_2Cos8Data_Augmentation/random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ъ
IData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ь
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ь
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      И
CData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_1StridedSlice=Data_Augmentation/random_rotation_3/rotation_matrix/Cos_2:y:0RData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_1/stack:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_1/stack_1:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask®
9Data_Augmentation/random_rotation_3/rotation_matrix/Sin_2Sin8Data_Augmentation/random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ъ
IData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ь
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ь
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      И
CData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_2StridedSlice=Data_Augmentation/random_rotation_3/rotation_matrix/Sin_2:y:0RData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_2/stack:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_2/stack_1:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЊ
7Data_Augmentation/random_rotation_3/rotation_matrix/NegNegLData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ъ
IData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ь
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ь
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      К
CData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_3StridedSlice?Data_Augmentation/random_rotation_3/rotation_matrix/truediv:z:0RData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_3/stack:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_3/stack_1:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask®
9Data_Augmentation/random_rotation_3/rotation_matrix/Sin_3Sin8Data_Augmentation/random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ъ
IData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ь
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ь
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      И
CData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_4StridedSlice=Data_Augmentation/random_rotation_3/rotation_matrix/Sin_3:y:0RData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_4/stack:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_4/stack_1:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask®
9Data_Augmentation/random_rotation_3/rotation_matrix/Cos_3Cos8Data_Augmentation/random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:€€€€€€€€€Ъ
IData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ь
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ь
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      И
CData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_5StridedSlice=Data_Augmentation/random_rotation_3/rotation_matrix/Cos_3:y:0RData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_5/stack:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_5/stack_1:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskЪ
IData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        Ь
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        Ь
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      М
CData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_6StridedSliceAData_Augmentation/random_rotation_3/rotation_matrix/truediv_1:z:0RData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_6/stack:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_6/stack_1:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_maskД
BData_Augmentation/random_rotation_3/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :П
@Data_Augmentation/random_rotation_3/rotation_matrix/zeros/packedPackJData_Augmentation/random_rotation_3/rotation_matrix/strided_slice:output:0KData_Augmentation/random_rotation_3/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:Д
?Data_Augmentation/random_rotation_3/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    И
9Data_Augmentation/random_rotation_3/rotation_matrix/zerosFillIData_Augmentation/random_rotation_3/rotation_matrix/zeros/packed:output:0HData_Augmentation/random_rotation_3/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Б
?Data_Augmentation/random_rotation_3/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :“
:Data_Augmentation/random_rotation_3/rotation_matrix/concatConcatV2LData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_1:output:0;Data_Augmentation/random_rotation_3/rotation_matrix/Neg:y:0LData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_3:output:0LData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_4:output:0LData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_5:output:0LData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_6:output:0BData_Augmentation/random_rotation_3/rotation_matrix/zeros:output:0HData_Augmentation/random_rotation_3/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€®
3Data_Augmentation/random_rotation_3/transform/ShapeShapeEData_Augmentation/random_flip_3/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
:Л
AData_Augmentation/random_rotation_3/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:Н
CData_Augmentation/random_rotation_3/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Н
CData_Augmentation/random_rotation_3/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:£
;Data_Augmentation/random_rotation_3/transform/strided_sliceStridedSlice<Data_Augmentation/random_rotation_3/transform/Shape:output:0JData_Augmentation/random_rotation_3/transform/strided_slice/stack:output:0LData_Augmentation/random_rotation_3/transform/strided_slice/stack_1:output:0LData_Augmentation/random_rotation_3/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:}
8Data_Augmentation/random_rotation_3/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    р
HData_Augmentation/random_rotation_3/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3EData_Augmentation/random_flip_3/stateless_random_flip_up_down/add:z:0CData_Augmentation/random_rotation_3/rotation_matrix/concat:output:0DData_Augmentation/random_rotation_3/transform/strided_slice:output:0AData_Augmentation/random_rotation_3/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€аа*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR≤
%Data_Augmentation/random_zoom_3/ShapeShape]Data_Augmentation/random_rotation_3/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:}
3Data_Augmentation/random_zoom_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5Data_Augmentation/random_zoom_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5Data_Augmentation/random_zoom_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:с
-Data_Augmentation/random_zoom_3/strided_sliceStridedSlice.Data_Augmentation/random_zoom_3/Shape:output:0<Data_Augmentation/random_zoom_3/strided_slice/stack:output:0>Data_Augmentation/random_zoom_3/strided_slice/stack_1:output:0>Data_Augmentation/random_zoom_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskИ
5Data_Augmentation/random_zoom_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€К
7Data_Augmentation/random_zoom_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€Б
7Data_Augmentation/random_zoom_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
/Data_Augmentation/random_zoom_3/strided_slice_1StridedSlice.Data_Augmentation/random_zoom_3/Shape:output:0>Data_Augmentation/random_zoom_3/strided_slice_1/stack:output:0@Data_Augmentation/random_zoom_3/strided_slice_1/stack_1:output:0@Data_Augmentation/random_zoom_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЦ
$Data_Augmentation/random_zoom_3/CastCast8Data_Augmentation/random_zoom_3/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: И
5Data_Augmentation/random_zoom_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€К
7Data_Augmentation/random_zoom_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€Б
7Data_Augmentation/random_zoom_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:щ
/Data_Augmentation/random_zoom_3/strided_slice_2StridedSlice.Data_Augmentation/random_zoom_3/Shape:output:0>Data_Augmentation/random_zoom_3/strided_slice_2/stack:output:0@Data_Augmentation/random_zoom_3/strided_slice_2/stack_1:output:0@Data_Augmentation/random_zoom_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskШ
&Data_Augmentation/random_zoom_3/Cast_1Cast8Data_Augmentation/random_zoom_3/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: z
8Data_Augmentation/random_zoom_3/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :з
6Data_Augmentation/random_zoom_3/stateful_uniform/shapePack6Data_Augmentation/random_zoom_3/strided_slice:output:0AData_Augmentation/random_zoom_3/stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:y
4Data_Augmentation/random_zoom_3/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?y
4Data_Augmentation/random_zoom_3/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff¶?А
6Data_Augmentation/random_zoom_3/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: а
5Data_Augmentation/random_zoom_3/stateful_uniform/ProdProd?Data_Augmentation/random_zoom_3/stateful_uniform/shape:output:0?Data_Augmentation/random_zoom_3/stateful_uniform/Const:output:0*
T0*
_output_shapes
: y
7Data_Augmentation/random_zoom_3/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :ѓ
7Data_Augmentation/random_zoom_3/stateful_uniform/Cast_1Cast>Data_Augmentation/random_zoom_3/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ґ
?Data_Augmentation/random_zoom_3/stateful_uniform/RngReadAndSkipRngReadAndSkipHdata_augmentation_random_zoom_3_stateful_uniform_rngreadandskip_resource@Data_Augmentation/random_zoom_3/stateful_uniform/Cast/x:output:0;Data_Augmentation/random_zoom_3/stateful_uniform/Cast_1:y:0*
_output_shapes
:О
DData_Augmentation/random_zoom_3/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Р
FData_Augmentation/random_zoom_3/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Р
FData_Augmentation/random_zoom_3/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ћ
>Data_Augmentation/random_zoom_3/stateful_uniform/strided_sliceStridedSliceGData_Augmentation/random_zoom_3/stateful_uniform/RngReadAndSkip:value:0MData_Augmentation/random_zoom_3/stateful_uniform/strided_slice/stack:output:0OData_Augmentation/random_zoom_3/stateful_uniform/strided_slice/stack_1:output:0OData_Augmentation/random_zoom_3/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskљ
8Data_Augmentation/random_zoom_3/stateful_uniform/BitcastBitcastGData_Augmentation/random_zoom_3/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Р
FData_Augmentation/random_zoom_3/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Т
HData_Augmentation/random_zoom_3/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Т
HData_Augmentation/random_zoom_3/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¬
@Data_Augmentation/random_zoom_3/stateful_uniform/strided_slice_1StridedSliceGData_Augmentation/random_zoom_3/stateful_uniform/RngReadAndSkip:value:0OData_Augmentation/random_zoom_3/stateful_uniform/strided_slice_1/stack:output:0QData_Augmentation/random_zoom_3/stateful_uniform/strided_slice_1/stack_1:output:0QData_Augmentation/random_zoom_3/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ѕ
:Data_Augmentation/random_zoom_3/stateful_uniform/Bitcast_1BitcastIData_Augmentation/random_zoom_3/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0П
MData_Augmentation/random_zoom_3/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ѓ
IData_Augmentation/random_zoom_3/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2?Data_Augmentation/random_zoom_3/stateful_uniform/shape:output:0CData_Augmentation/random_zoom_3/stateful_uniform/Bitcast_1:output:0AData_Augmentation/random_zoom_3/stateful_uniform/Bitcast:output:0VData_Augmentation/random_zoom_3/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€Џ
4Data_Augmentation/random_zoom_3/stateful_uniform/subSub=Data_Augmentation/random_zoom_3/stateful_uniform/max:output:0=Data_Augmentation/random_zoom_3/stateful_uniform/min:output:0*
T0*
_output_shapes
: ы
4Data_Augmentation/random_zoom_3/stateful_uniform/mulMulRData_Augmentation/random_zoom_3/stateful_uniform/StatelessRandomUniformV2:output:08Data_Augmentation/random_zoom_3/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€д
0Data_Augmentation/random_zoom_3/stateful_uniformAddV28Data_Augmentation/random_zoom_3/stateful_uniform/mul:z:0=Data_Augmentation/random_zoom_3/stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
:Data_Augmentation/random_zoom_3/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :л
8Data_Augmentation/random_zoom_3/stateful_uniform_1/shapePack6Data_Augmentation/random_zoom_3/strided_slice:output:0CData_Augmentation/random_zoom_3/stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:{
6Data_Augmentation/random_zoom_3/stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?{
6Data_Augmentation/random_zoom_3/stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff¶?В
8Data_Augmentation/random_zoom_3/stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ж
7Data_Augmentation/random_zoom_3/stateful_uniform_1/ProdProdAData_Augmentation/random_zoom_3/stateful_uniform_1/shape:output:0AData_Augmentation/random_zoom_3/stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: {
9Data_Augmentation/random_zoom_3/stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :≥
9Data_Augmentation/random_zoom_3/stateful_uniform_1/Cast_1Cast@Data_Augmentation/random_zoom_3/stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ю
AData_Augmentation/random_zoom_3/stateful_uniform_1/RngReadAndSkipRngReadAndSkipHdata_augmentation_random_zoom_3_stateful_uniform_rngreadandskip_resourceBData_Augmentation/random_zoom_3/stateful_uniform_1/Cast/x:output:0=Data_Augmentation/random_zoom_3/stateful_uniform_1/Cast_1:y:0@^Data_Augmentation/random_zoom_3/stateful_uniform/RngReadAndSkip*
_output_shapes
:Р
FData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Т
HData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Т
HData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:÷
@Data_Augmentation/random_zoom_3/stateful_uniform_1/strided_sliceStridedSliceIData_Augmentation/random_zoom_3/stateful_uniform_1/RngReadAndSkip:value:0OData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice/stack:output:0QData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice/stack_1:output:0QData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskЅ
:Data_Augmentation/random_zoom_3/stateful_uniform_1/BitcastBitcastIData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0Т
HData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:Ф
JData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ф
JData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ћ
BData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice_1StridedSliceIData_Augmentation/random_zoom_3/stateful_uniform_1/RngReadAndSkip:value:0QData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice_1/stack:output:0SData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice_1/stack_1:output:0SData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:≈
<Data_Augmentation/random_zoom_3/stateful_uniform_1/Bitcast_1BitcastKData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0С
OData_Augmentation/random_zoom_3/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :є
KData_Augmentation/random_zoom_3/stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2AData_Augmentation/random_zoom_3/stateful_uniform_1/shape:output:0EData_Augmentation/random_zoom_3/stateful_uniform_1/Bitcast_1:output:0CData_Augmentation/random_zoom_3/stateful_uniform_1/Bitcast:output:0XData_Augmentation/random_zoom_3/stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€а
6Data_Augmentation/random_zoom_3/stateful_uniform_1/subSub?Data_Augmentation/random_zoom_3/stateful_uniform_1/max:output:0?Data_Augmentation/random_zoom_3/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: Б
6Data_Augmentation/random_zoom_3/stateful_uniform_1/mulMulTData_Augmentation/random_zoom_3/stateful_uniform_1/StatelessRandomUniformV2:output:0:Data_Augmentation/random_zoom_3/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€к
2Data_Augmentation/random_zoom_3/stateful_uniform_1AddV2:Data_Augmentation/random_zoom_3/stateful_uniform_1/mul:z:0?Data_Augmentation/random_zoom_3/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€m
+Data_Augmentation/random_zoom_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :С
&Data_Augmentation/random_zoom_3/concatConcatV26Data_Augmentation/random_zoom_3/stateful_uniform_1:z:04Data_Augmentation/random_zoom_3/stateful_uniform:z:04Data_Augmentation/random_zoom_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€Р
1Data_Augmentation/random_zoom_3/zoom_matrix/ShapeShape/Data_Augmentation/random_zoom_3/concat:output:0*
T0*
_output_shapes
:Й
?Data_Augmentation/random_zoom_3/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Л
AData_Augmentation/random_zoom_3/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Л
AData_Augmentation/random_zoom_3/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:≠
9Data_Augmentation/random_zoom_3/zoom_matrix/strided_sliceStridedSlice:Data_Augmentation/random_zoom_3/zoom_matrix/Shape:output:0HData_Augmentation/random_zoom_3/zoom_matrix/strided_slice/stack:output:0JData_Augmentation/random_zoom_3/zoom_matrix/strided_slice/stack_1:output:0JData_Augmentation/random_zoom_3/zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
1Data_Augmentation/random_zoom_3/zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?њ
/Data_Augmentation/random_zoom_3/zoom_matrix/subSub*Data_Augmentation/random_zoom_3/Cast_1:y:0:Data_Augmentation/random_zoom_3/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: z
5Data_Augmentation/random_zoom_3/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @‘
3Data_Augmentation/random_zoom_3/zoom_matrix/truedivRealDiv3Data_Augmentation/random_zoom_3/zoom_matrix/sub:z:0>Data_Augmentation/random_zoom_3/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: Ц
AData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            Ш
CData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ш
CData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         т
;Data_Augmentation/random_zoom_3/zoom_matrix/strided_slice_1StridedSlice/Data_Augmentation/random_zoom_3/concat:output:0JData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_1/stack:output:0LData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_1/stack_1:output:0LData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskx
3Data_Augmentation/random_zoom_3/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?о
1Data_Augmentation/random_zoom_3/zoom_matrix/sub_1Sub<Data_Augmentation/random_zoom_3/zoom_matrix/sub_1/x:output:0DData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ў
/Data_Augmentation/random_zoom_3/zoom_matrix/mulMul7Data_Augmentation/random_zoom_3/zoom_matrix/truediv:z:05Data_Augmentation/random_zoom_3/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€x
3Data_Augmentation/random_zoom_3/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Ѕ
1Data_Augmentation/random_zoom_3/zoom_matrix/sub_2Sub(Data_Augmentation/random_zoom_3/Cast:y:0<Data_Augmentation/random_zoom_3/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: |
7Data_Augmentation/random_zoom_3/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Џ
5Data_Augmentation/random_zoom_3/zoom_matrix/truediv_1RealDiv5Data_Augmentation/random_zoom_3/zoom_matrix/sub_2:z:0@Data_Augmentation/random_zoom_3/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: Ц
AData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           Ш
CData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ш
CData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         т
;Data_Augmentation/random_zoom_3/zoom_matrix/strided_slice_2StridedSlice/Data_Augmentation/random_zoom_3/concat:output:0JData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_2/stack:output:0LData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_2/stack_1:output:0LData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskx
3Data_Augmentation/random_zoom_3/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?о
1Data_Augmentation/random_zoom_3/zoom_matrix/sub_3Sub<Data_Augmentation/random_zoom_3/zoom_matrix/sub_3/x:output:0DData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€№
1Data_Augmentation/random_zoom_3/zoom_matrix/mul_1Mul9Data_Augmentation/random_zoom_3/zoom_matrix/truediv_1:z:05Data_Augmentation/random_zoom_3/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€Ц
AData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            Ш
CData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ш
CData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         т
;Data_Augmentation/random_zoom_3/zoom_matrix/strided_slice_3StridedSlice/Data_Augmentation/random_zoom_3/concat:output:0JData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_3/stack:output:0LData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_3/stack_1:output:0LData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask|
:Data_Augmentation/random_zoom_3/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ч
8Data_Augmentation/random_zoom_3/zoom_matrix/zeros/packedPackBData_Augmentation/random_zoom_3/zoom_matrix/strided_slice:output:0CData_Augmentation/random_zoom_3/zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:|
7Data_Augmentation/random_zoom_3/zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    р
1Data_Augmentation/random_zoom_3/zoom_matrix/zerosFillAData_Augmentation/random_zoom_3/zoom_matrix/zeros/packed:output:0@Data_Augmentation/random_zoom_3/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€~
<Data_Augmentation/random_zoom_3/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ы
:Data_Augmentation/random_zoom_3/zoom_matrix/zeros_1/packedPackBData_Augmentation/random_zoom_3/zoom_matrix/strided_slice:output:0EData_Augmentation/random_zoom_3/zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:~
9Data_Augmentation/random_zoom_3/zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ц
3Data_Augmentation/random_zoom_3/zoom_matrix/zeros_1FillCData_Augmentation/random_zoom_3/zoom_matrix/zeros_1/packed:output:0BData_Augmentation/random_zoom_3/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Ц
AData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           Ш
CData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           Ш
CData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         т
;Data_Augmentation/random_zoom_3/zoom_matrix/strided_slice_4StridedSlice/Data_Augmentation/random_zoom_3/concat:output:0JData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_4/stack:output:0LData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_4/stack_1:output:0LData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask~
<Data_Augmentation/random_zoom_3/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ы
:Data_Augmentation/random_zoom_3/zoom_matrix/zeros_2/packedPackBData_Augmentation/random_zoom_3/zoom_matrix/strided_slice:output:0EData_Augmentation/random_zoom_3/zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:~
9Data_Augmentation/random_zoom_3/zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ц
3Data_Augmentation/random_zoom_3/zoom_matrix/zeros_2FillCData_Augmentation/random_zoom_3/zoom_matrix/zeros_2/packed:output:0BData_Augmentation/random_zoom_3/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€y
7Data_Augmentation/random_zoom_3/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :л
2Data_Augmentation/random_zoom_3/zoom_matrix/concatConcatV2DData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_3:output:0:Data_Augmentation/random_zoom_3/zoom_matrix/zeros:output:03Data_Augmentation/random_zoom_3/zoom_matrix/mul:z:0<Data_Augmentation/random_zoom_3/zoom_matrix/zeros_1:output:0DData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_4:output:05Data_Augmentation/random_zoom_3/zoom_matrix/mul_1:z:0<Data_Augmentation/random_zoom_3/zoom_matrix/zeros_2:output:0@Data_Augmentation/random_zoom_3/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€Љ
/Data_Augmentation/random_zoom_3/transform/ShapeShape]Data_Augmentation/random_rotation_3/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:З
=Data_Augmentation/random_zoom_3/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:Й
?Data_Augmentation/random_zoom_3/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Й
?Data_Augmentation/random_zoom_3/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:П
7Data_Augmentation/random_zoom_3/transform/strided_sliceStridedSlice8Data_Augmentation/random_zoom_3/transform/Shape:output:0FData_Augmentation/random_zoom_3/transform/strided_slice/stack:output:0HData_Augmentation/random_zoom_3/transform/strided_slice/stack_1:output:0HData_Augmentation/random_zoom_3/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:y
4Data_Augmentation/random_zoom_3/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    №
DData_Augmentation/random_zoom_3/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3]Data_Augmentation/random_rotation_3/transform/ImageProjectiveTransformV3:transformed_images:0;Data_Augmentation/random_zoom_3/zoom_matrix/concat:output:0@Data_Augmentation/random_zoom_3/transform/strided_slice:output:0=Data_Augmentation/random_zoom_3/transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€аа*
dtype0*
interpolation
BILINEARШ
patches_7/ShapeShapeYData_Augmentation/random_zoom_3/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:g
patches_7/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
patches_7/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
patches_7/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Г
patches_7/strided_sliceStridedSlicepatches_7/Shape:output:0&patches_7/strided_slice/stack:output:0(patches_7/strided_slice/stack_1:output:0(patches_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЪ
patches_7/ExtractImagePatchesExtractImagePatchesYData_Augmentation/random_zoom_3/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*0
_output_shapes
:€€€€€€€€€А*
ksizes
*
paddingVALID*
rates
*
strides
d
patches_7/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
€€€€€€€€€\
patches_7/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :АЈ
patches_7/Reshape/shapePack patches_7/strided_slice:output:0"patches_7/Reshape/shape/1:output:0"patches_7/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:І
patches_7/ReshapeReshape'patches_7/ExtractImagePatches:patches:0 patches_7/Reshape/shape:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А]
patch_encoder_3/range/startConst*
_output_shapes
: *
dtype0*
value	B : ^
patch_encoder_3/range/limitConst*
_output_shapes
: *
dtype0*
value
B :ƒ]
patch_encoder_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :≠
patch_encoder_3/rangeRange$patch_encoder_3/range/start:output:0$patch_encoder_3/range/limit:output:0$patch_encoder_3/range/delta:output:0*
_output_shapes	
:ƒЃ
1patch_encoder_3/dense_31/Tensordot/ReadVariableOpReadVariableOp:patch_encoder_3_dense_31_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0q
'patch_encoder_3/dense_31/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:x
'patch_encoder_3/dense_31/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       r
(patch_encoder_3/dense_31/Tensordot/ShapeShapepatches_7/Reshape:output:0*
T0*
_output_shapes
:r
0patch_encoder_3/dense_31/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Я
+patch_encoder_3/dense_31/Tensordot/GatherV2GatherV21patch_encoder_3/dense_31/Tensordot/Shape:output:00patch_encoder_3/dense_31/Tensordot/free:output:09patch_encoder_3/dense_31/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:t
2patch_encoder_3/dense_31/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : £
-patch_encoder_3/dense_31/Tensordot/GatherV2_1GatherV21patch_encoder_3/dense_31/Tensordot/Shape:output:00patch_encoder_3/dense_31/Tensordot/axes:output:0;patch_encoder_3/dense_31/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
(patch_encoder_3/dense_31/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: є
'patch_encoder_3/dense_31/Tensordot/ProdProd4patch_encoder_3/dense_31/Tensordot/GatherV2:output:01patch_encoder_3/dense_31/Tensordot/Const:output:0*
T0*
_output_shapes
: t
*patch_encoder_3/dense_31/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: њ
)patch_encoder_3/dense_31/Tensordot/Prod_1Prod6patch_encoder_3/dense_31/Tensordot/GatherV2_1:output:03patch_encoder_3/dense_31/Tensordot/Const_1:output:0*
T0*
_output_shapes
: p
.patch_encoder_3/dense_31/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : А
)patch_encoder_3/dense_31/Tensordot/concatConcatV20patch_encoder_3/dense_31/Tensordot/free:output:00patch_encoder_3/dense_31/Tensordot/axes:output:07patch_encoder_3/dense_31/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ƒ
(patch_encoder_3/dense_31/Tensordot/stackPack0patch_encoder_3/dense_31/Tensordot/Prod:output:02patch_encoder_3/dense_31/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:…
,patch_encoder_3/dense_31/Tensordot/transpose	Transposepatches_7/Reshape:output:02patch_encoder_3/dense_31/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А’
*patch_encoder_3/dense_31/Tensordot/ReshapeReshape0patch_encoder_3/dense_31/Tensordot/transpose:y:01patch_encoder_3/dense_31/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€÷
)patch_encoder_3/dense_31/Tensordot/MatMulMatMul3patch_encoder_3/dense_31/Tensordot/Reshape:output:09patch_encoder_3/dense_31/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аu
*patch_encoder_3/dense_31/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аr
0patch_encoder_3/dense_31/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Л
+patch_encoder_3/dense_31/Tensordot/concat_1ConcatV24patch_encoder_3/dense_31/Tensordot/GatherV2:output:03patch_encoder_3/dense_31/Tensordot/Const_2:output:09patch_encoder_3/dense_31/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ў
"patch_encoder_3/dense_31/TensordotReshape3patch_encoder_3/dense_31/Tensordot/MatMul:product:04patch_encoder_3/dense_31/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
/patch_encoder_3/dense_31/BiasAdd/ReadVariableOpReadVariableOp8patch_encoder_3_dense_31_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0—
 patch_encoder_3/dense_31/BiasAddBiasAdd+patch_encoder_3/dense_31/Tensordot:output:07patch_encoder_3/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АШ
,patch_encoder_3/embedding_3/embedding_lookupResourceGather2patch_encoder_3_embedding_3_embedding_lookup_58681patch_encoder_3/range:output:0*
Tindices0*E
_class;
97loc:@patch_encoder_3/embedding_3/embedding_lookup/58681* 
_output_shapes
:
ƒА*
dtype0к
5patch_encoder_3/embedding_3/embedding_lookup/IdentityIdentity5patch_encoder_3/embedding_3/embedding_lookup:output:0*
T0*E
_class;
97loc:@patch_encoder_3/embedding_3/embedding_lookup/58681* 
_output_shapes
:
ƒАЃ
7patch_encoder_3/embedding_3/embedding_lookup/Identity_1Identity>patch_encoder_3/embedding_3/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
ƒАЅ
patch_encoder_3/addAddV2)patch_encoder_3/dense_31/BiasAdd:output:0@patch_encoder_3/embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА
5layer_normalization_22/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ћ
#layer_normalization_22/moments/meanMeanpatch_encoder_3/add:z:0>layer_normalization_22/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(†
+layer_normalization_22/moments/StopGradientStopGradient,layer_normalization_22/moments/mean:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒћ
0layer_normalization_22/moments/SquaredDifferenceSquaredDifferencepatch_encoder_3/add:z:04layer_normalization_22/moments/StopGradient:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАГ
9layer_normalization_22/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:с
'layer_normalization_22/moments/varianceMean4layer_normalization_22/moments/SquaredDifference:z:0Blayer_normalization_22/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(k
&layer_normalization_22/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5«
$layer_normalization_22/batchnorm/addAddV20layer_normalization_22/moments/variance:output:0/layer_normalization_22/batchnorm/add/y:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒР
&layer_normalization_22/batchnorm/RsqrtRsqrt(layer_normalization_22/batchnorm/add:z:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ≠
3layer_normalization_22/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_22_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0ћ
$layer_normalization_22/batchnorm/mulMul*layer_normalization_22/batchnorm/Rsqrt:y:0;layer_normalization_22/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА®
&layer_normalization_22/batchnorm/mul_1Mulpatch_encoder_3/add:z:0(layer_normalization_22/batchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАљ
&layer_normalization_22/batchnorm/mul_2Mul,layer_normalization_22/moments/mean:output:0(layer_normalization_22/batchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА•
/layer_normalization_22/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_22_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0»
$layer_normalization_22/batchnorm/subSub7layer_normalization_22/batchnorm/ReadVariableOp:value:0*layer_normalization_22/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАљ
&layer_normalization_22/batchnorm/add_1AddV2*layer_normalization_22/batchnorm/mul_1:z:0(layer_normalization_22/batchnorm/sub:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАƒ
:multi_head_attention_11/query/einsum/Einsum/ReadVariableOpReadVariableOpCmulti_head_attention_11_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0З
+multi_head_attention_11/query/einsum/EinsumEinsum*layer_normalization_22/batchnorm/add_1:z:0Bmulti_head_attention_11/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abdeЂ
0multi_head_attention_11/query/add/ReadVariableOpReadVariableOp9multi_head_attention_11_query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0÷
!multi_head_attention_11/query/addAddV24multi_head_attention_11/query/einsum/Einsum:output:08multi_head_attention_11/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАј
8multi_head_attention_11/key/einsum/Einsum/ReadVariableOpReadVariableOpAmulti_head_attention_11_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Г
)multi_head_attention_11/key/einsum/EinsumEinsum*layer_normalization_22/batchnorm/add_1:z:0@multi_head_attention_11/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abdeІ
.multi_head_attention_11/key/add/ReadVariableOpReadVariableOp7multi_head_attention_11_key_add_readvariableop_resource*
_output_shapes
:	А*
dtype0–
multi_head_attention_11/key/addAddV22multi_head_attention_11/key/einsum/Einsum:output:06multi_head_attention_11/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАƒ
:multi_head_attention_11/value/einsum/Einsum/ReadVariableOpReadVariableOpCmulti_head_attention_11_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0З
+multi_head_attention_11/value/einsum/EinsumEinsum*layer_normalization_22/batchnorm/add_1:z:0Bmulti_head_attention_11/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abdeЂ
0multi_head_attention_11/value/add/ReadVariableOpReadVariableOp9multi_head_attention_11_value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0÷
!multi_head_attention_11/value/addAddV24multi_head_attention_11/value/einsum/Einsum:output:08multi_head_attention_11/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАb
multi_head_attention_11/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *уµ=≠
multi_head_attention_11/MulMul%multi_head_attention_11/query/add:z:0&multi_head_attention_11/Mul/y:output:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАў
%multi_head_attention_11/einsum/EinsumEinsum#multi_head_attention_11/key/add:z:0multi_head_attention_11/Mul:z:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒƒ*
equationaecd,abcd->acbeЮ
'multi_head_attention_11/softmax/SoftmaxSoftmax.multi_head_attention_11/einsum/Einsum:output:0*
T0*1
_output_shapes
:€€€€€€€€€ƒƒп
'multi_head_attention_11/einsum_1/EinsumEinsum1multi_head_attention_11/softmax/Softmax:softmax:0%multi_head_attention_11/value/add:z:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationacbe,aecd->abcdЏ
Emulti_head_attention_11/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpNmulti_head_attention_11_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Я
6multi_head_attention_11/attention_output/einsum/EinsumEinsum0multi_head_attention_11/einsum_1/Einsum:output:0Mmulti_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:€€€€€€€€€ƒА*
equationabcd,cde->abeљ
;multi_head_attention_11/attention_output/add/ReadVariableOpReadVariableOpDmulti_head_attention_11_attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0у
,multi_head_attention_11/attention_output/addAddV2?multi_head_attention_11/attention_output/einsum/Einsum:output:0Cmulti_head_attention_11/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАЦ

add_22/addAddV20multi_head_attention_11/attention_output/add:z:0patch_encoder_3/add:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА
5layer_normalization_23/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:√
#layer_normalization_23/moments/meanMeanadd_22/add:z:0>layer_normalization_23/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(†
+layer_normalization_23/moments/StopGradientStopGradient,layer_normalization_23/moments/mean:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ√
0layer_normalization_23/moments/SquaredDifferenceSquaredDifferenceadd_22/add:z:04layer_normalization_23/moments/StopGradient:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАГ
9layer_normalization_23/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:с
'layer_normalization_23/moments/varianceMean4layer_normalization_23/moments/SquaredDifference:z:0Blayer_normalization_23/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ*
	keep_dims(k
&layer_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *љ7Ж5«
$layer_normalization_23/batchnorm/addAddV20layer_normalization_23/moments/variance:output:0/layer_normalization_23/batchnorm/add/y:output:0*
T0*,
_output_shapes
:€€€€€€€€€ƒР
&layer_normalization_23/batchnorm/RsqrtRsqrt(layer_normalization_23/batchnorm/add:z:0*
T0*,
_output_shapes
:€€€€€€€€€ƒ≠
3layer_normalization_23/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_23_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype0ћ
$layer_normalization_23/batchnorm/mulMul*layer_normalization_23/batchnorm/Rsqrt:y:0;layer_normalization_23/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАЯ
&layer_normalization_23/batchnorm/mul_1Muladd_22/add:z:0(layer_normalization_23/batchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАљ
&layer_normalization_23/batchnorm/mul_2Mul,layer_normalization_23/moments/mean:output:0(layer_normalization_23/batchnorm/mul:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА•
/layer_normalization_23/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_23_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype0»
$layer_normalization_23/batchnorm/subSub7layer_normalization_23/batchnorm/ReadVariableOp:value:0*layer_normalization_23/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАљ
&layer_normalization_23/batchnorm/add_1AddV2*layer_normalization_23/batchnorm/mul_1:z:0(layer_normalization_23/batchnorm/sub:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАО
!dense_32/Tensordot/ReadVariableOpReadVariableOp*dense_32_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0a
dense_32/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_32/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       r
dense_32/Tensordot/ShapeShape*layer_normalization_23/batchnorm/add_1:z:0*
T0*
_output_shapes
:b
 dense_32/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_32/Tensordot/GatherV2GatherV2!dense_32/Tensordot/Shape:output:0 dense_32/Tensordot/free:output:0)dense_32/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_32/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_32/Tensordot/GatherV2_1GatherV2!dense_32/Tensordot/Shape:output:0 dense_32/Tensordot/axes:output:0+dense_32/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_32/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_32/Tensordot/ProdProd$dense_32/Tensordot/GatherV2:output:0!dense_32/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_32/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_32/Tensordot/Prod_1Prod&dense_32/Tensordot/GatherV2_1:output:0#dense_32/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_32/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_32/Tensordot/concatConcatV2 dense_32/Tensordot/free:output:0 dense_32/Tensordot/axes:output:0'dense_32/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_32/Tensordot/stackPack dense_32/Tensordot/Prod:output:0"dense_32/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:±
dense_32/Tensordot/transpose	Transpose*layer_normalization_23/batchnorm/add_1:z:0"dense_32/Tensordot/concat:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА•
dense_32/Tensordot/ReshapeReshape dense_32/Tensordot/transpose:y:0!dense_32/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€¶
dense_32/Tensordot/MatMulMatMul#dense_32/Tensordot/Reshape:output:0)dense_32/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
dense_32/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аb
 dense_32/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_32/Tensordot/concat_1ConcatV2$dense_32/Tensordot/GatherV2:output:0#dense_32/Tensordot/Const_2:output:0)dense_32/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:†
dense_32/TensordotReshape#dense_32/Tensordot/MatMul:product:0$dense_32/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАЕ
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
dense_32/BiasAddBiasAdddense_32/Tensordot:output:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАh
dense_32/ReluReludense_32/BiasAdd:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА]
dropout_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?Х
dropout_25/dropout/MulMuldense_32/Relu:activations:0!dropout_25/dropout/Const:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАc
dropout_25/dropout/ShapeShapedense_32/Relu:activations:0*
T0*
_output_shapes
:®
/dropout_25/dropout/random_uniform/RandomUniformRandomUniform!dropout_25/dropout/Shape:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА*
dtype0f
!dropout_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=Ќ
dropout_25/dropout/GreaterEqualGreaterEqual8dropout_25/dropout/random_uniform/RandomUniform:output:0*dropout_25/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАЛ
dropout_25/dropout/CastCast#dropout_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:€€€€€€€€€ƒАР
dropout_25/dropout/Mul_1Muldropout_25/dropout/Mul:z:0dropout_25/dropout/Cast:y:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАО
!dense_33/Tensordot/ReadVariableOpReadVariableOp*dense_33_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0a
dense_33/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_33/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       d
dense_33/Tensordot/ShapeShapedropout_25/dropout/Mul_1:z:0*
T0*
_output_shapes
:b
 dense_33/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_33/Tensordot/GatherV2GatherV2!dense_33/Tensordot/Shape:output:0 dense_33/Tensordot/free:output:0)dense_33/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_33/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_33/Tensordot/GatherV2_1GatherV2!dense_33/Tensordot/Shape:output:0 dense_33/Tensordot/axes:output:0+dense_33/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_33/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_33/Tensordot/ProdProd$dense_33/Tensordot/GatherV2:output:0!dense_33/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_33/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_33/Tensordot/Prod_1Prod&dense_33/Tensordot/GatherV2_1:output:0#dense_33/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_33/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_33/Tensordot/concatConcatV2 dense_33/Tensordot/free:output:0 dense_33/Tensordot/axes:output:0'dense_33/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_33/Tensordot/stackPack dense_33/Tensordot/Prod:output:0"dense_33/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:£
dense_33/Tensordot/transpose	Transposedropout_25/dropout/Mul_1:z:0"dense_33/Tensordot/concat:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА•
dense_33/Tensordot/ReshapeReshape dense_33/Tensordot/transpose:y:0!dense_33/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€¶
dense_33/Tensordot/MatMulMatMul#dense_33/Tensordot/Reshape:output:0)dense_33/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
dense_33/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аb
 dense_33/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_33/Tensordot/concat_1ConcatV2$dense_33/Tensordot/GatherV2:output:0#dense_33/Tensordot/Const_2:output:0)dense_33/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:†
dense_33/TensordotReshape#dense_33/Tensordot/MatMul:product:0$dense_33/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАЕ
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Щ
dense_33/BiasAddBiasAdddense_33/Tensordot:output:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАh
dense_33/ReluReludense_33/BiasAdd:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА]
dropout_26/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?Х
dropout_26/dropout/MulMuldense_33/Relu:activations:0!dropout_26/dropout/Const:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАc
dropout_26/dropout/ShapeShapedense_33/Relu:activations:0*
T0*
_output_shapes
:®
/dropout_26/dropout/random_uniform/RandomUniformRandomUniform!dropout_26/dropout/Shape:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА*
dtype0f
!dropout_26/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=Ќ
dropout_26/dropout/GreaterEqualGreaterEqual8dropout_26/dropout/random_uniform/RandomUniform:output:0*dropout_26/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАЛ
dropout_26/dropout/CastCast#dropout_26/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:€€€€€€€€€ƒАР
dropout_26/dropout/Mul_1Muldropout_26/dropout/Mul:z:0dropout_26/dropout/Cast:y:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАy

add_23/addAddV2dropout_26/dropout/Mul_1:z:0add_22/add:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"€€€€ b  z
flatten_3/ReshapeReshapeadd_23/add:z:0flatten_3/Const:output:0*
T0*)
_output_shapes
:€€€€€€€€€АƒЙ
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*!
_output_shapes
:АƒА*
dtype0Р
dense_34/MatMulMatMulflatten_3/Reshape:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АЕ
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
dense_34/ReluReludense_34/BiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€А]
dropout_27/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?Р
dropout_27/dropout/MulMuldense_34/Relu:activations:0!dropout_27/dropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аc
dropout_27/dropout/ShapeShapedense_34/Relu:activations:0*
T0*
_output_shapes
:£
/dropout_27/dropout/random_uniform/RandomUniformRandomUniform!dropout_27/dropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А*
dtype0f
!dropout_27/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>»
dropout_27/dropout/GreaterEqualGreaterEqual8dropout_27/dropout/random_uniform/RandomUniform:output:0*dropout_27/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€АЖ
dropout_27/dropout/CastCast#dropout_27/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€АЛ
dropout_27/dropout/Mul_1Muldropout_27/dropout/Mul:z:0dropout_27/dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€АЗ
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0С
dense_35/MatMulMatMuldropout_27/dropout/Mul_1:z:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€h
dense_35/SoftmaxSoftmaxdense_35/BiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€i
IdentityIdentitydense_35/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€у
NoOpNoOpI^Data_Augmentation/random_flip_3/stateful_uniform_full_int/RngReadAndSkipK^Data_Augmentation/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkipD^Data_Augmentation/random_rotation_3/stateful_uniform/RngReadAndSkip@^Data_Augmentation/random_zoom_3/stateful_uniform/RngReadAndSkipB^Data_Augmentation/random_zoom_3/stateful_uniform_1/RngReadAndSkip ^dense_32/BiasAdd/ReadVariableOp"^dense_32/Tensordot/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp"^dense_33/Tensordot/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp0^layer_normalization_22/batchnorm/ReadVariableOp4^layer_normalization_22/batchnorm/mul/ReadVariableOp0^layer_normalization_23/batchnorm/ReadVariableOp4^layer_normalization_23/batchnorm/mul/ReadVariableOp<^multi_head_attention_11/attention_output/add/ReadVariableOpF^multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp/^multi_head_attention_11/key/add/ReadVariableOp9^multi_head_attention_11/key/einsum/Einsum/ReadVariableOp1^multi_head_attention_11/query/add/ReadVariableOp;^multi_head_attention_11/query/einsum/Einsum/ReadVariableOp1^multi_head_attention_11/value/add/ReadVariableOp;^multi_head_attention_11/value/einsum/Einsum/ReadVariableOp0^patch_encoder_3/dense_31/BiasAdd/ReadVariableOp2^patch_encoder_3/dense_31/Tensordot/ReadVariableOp-^patch_encoder_3/embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*И
_input_shapesw
u:€€€€€€€€€аа::: : : : : : : : : : : : : : : : : : : : : : : : : : 2Ф
HData_Augmentation/random_flip_3/stateful_uniform_full_int/RngReadAndSkipHData_Augmentation/random_flip_3/stateful_uniform_full_int/RngReadAndSkip2Ш
JData_Augmentation/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkipJData_Augmentation/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip2К
CData_Augmentation/random_rotation_3/stateful_uniform/RngReadAndSkipCData_Augmentation/random_rotation_3/stateful_uniform/RngReadAndSkip2В
?Data_Augmentation/random_zoom_3/stateful_uniform/RngReadAndSkip?Data_Augmentation/random_zoom_3/stateful_uniform/RngReadAndSkip2Ж
AData_Augmentation/random_zoom_3/stateful_uniform_1/RngReadAndSkipAData_Augmentation/random_zoom_3/stateful_uniform_1/RngReadAndSkip2B
dense_32/BiasAdd/ReadVariableOpdense_32/BiasAdd/ReadVariableOp2F
!dense_32/Tensordot/ReadVariableOp!dense_32/Tensordot/ReadVariableOp2B
dense_33/BiasAdd/ReadVariableOpdense_33/BiasAdd/ReadVariableOp2F
!dense_33/Tensordot/ReadVariableOp!dense_33/Tensordot/ReadVariableOp2B
dense_34/BiasAdd/ReadVariableOpdense_34/BiasAdd/ReadVariableOp2@
dense_34/MatMul/ReadVariableOpdense_34/MatMul/ReadVariableOp2B
dense_35/BiasAdd/ReadVariableOpdense_35/BiasAdd/ReadVariableOp2@
dense_35/MatMul/ReadVariableOpdense_35/MatMul/ReadVariableOp2b
/layer_normalization_22/batchnorm/ReadVariableOp/layer_normalization_22/batchnorm/ReadVariableOp2j
3layer_normalization_22/batchnorm/mul/ReadVariableOp3layer_normalization_22/batchnorm/mul/ReadVariableOp2b
/layer_normalization_23/batchnorm/ReadVariableOp/layer_normalization_23/batchnorm/ReadVariableOp2j
3layer_normalization_23/batchnorm/mul/ReadVariableOp3layer_normalization_23/batchnorm/mul/ReadVariableOp2z
;multi_head_attention_11/attention_output/add/ReadVariableOp;multi_head_attention_11/attention_output/add/ReadVariableOp2О
Emulti_head_attention_11/attention_output/einsum/Einsum/ReadVariableOpEmulti_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp2`
.multi_head_attention_11/key/add/ReadVariableOp.multi_head_attention_11/key/add/ReadVariableOp2t
8multi_head_attention_11/key/einsum/Einsum/ReadVariableOp8multi_head_attention_11/key/einsum/Einsum/ReadVariableOp2d
0multi_head_attention_11/query/add/ReadVariableOp0multi_head_attention_11/query/add/ReadVariableOp2x
:multi_head_attention_11/query/einsum/Einsum/ReadVariableOp:multi_head_attention_11/query/einsum/Einsum/ReadVariableOp2d
0multi_head_attention_11/value/add/ReadVariableOp0multi_head_attention_11/value/add/ReadVariableOp2x
:multi_head_attention_11/value/einsum/Einsum/ReadVariableOp:multi_head_attention_11/value/einsum/Einsum/ReadVariableOp2b
/patch_encoder_3/dense_31/BiasAdd/ReadVariableOp/patch_encoder_3/dense_31/BiasAdd/ReadVariableOp2f
1patch_encoder_3/dense_31/Tensordot/ReadVariableOp1patch_encoder_3/dense_31/Tensordot/ReadVariableOp2\
,patch_encoder_3/embedding_3/embedding_lookup,patch_encoder_3/embedding_3/embedding_lookup:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
р
c
E__inference_dropout_26_layer_call_and_return_conditional_losses_57195

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:€€€€€€€€€ƒАa

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€ƒА:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
ТO
ј
B__inference_model_3_layer_call_and_return_conditional_losses_57255

inputs
data_augmentation_56923
data_augmentation_56925)
patch_encoder_3_56985:
АА$
patch_encoder_3_56987:	А)
patch_encoder_3_56989:
ƒА+
layer_normalization_22_57015:	А+
layer_normalization_22_57017:	А5
multi_head_attention_11_57056:АА0
multi_head_attention_11_57058:	А5
multi_head_attention_11_57060:АА0
multi_head_attention_11_57062:	А5
multi_head_attention_11_57064:АА0
multi_head_attention_11_57066:	А5
multi_head_attention_11_57068:АА,
multi_head_attention_11_57070:	А+
layer_normalization_23_57104:	А+
layer_normalization_23_57106:	А"
dense_32_57141:
АА
dense_32_57143:	А"
dense_33_57185:
АА
dense_33_57187:	А#
dense_34_57225:АƒА
dense_34_57227:	А!
dense_35_57249:	А
dense_35_57251:
identityИҐ dense_32/StatefulPartitionedCallҐ dense_33/StatefulPartitionedCallҐ dense_34/StatefulPartitionedCallҐ dense_35/StatefulPartitionedCallҐ.layer_normalization_22/StatefulPartitionedCallҐ.layer_normalization_23/StatefulPartitionedCallҐ/multi_head_attention_11/StatefulPartitionedCallҐ'patch_encoder_3/StatefulPartitionedCallЌ
Resize_Rescale/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56340®
!Data_Augmentation/PartitionedCallPartitionedCall'Resize_Rescale/PartitionedCall:output:0data_augmentation_56923data_augmentation_56925*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56421л
patches_7/PartitionedCallPartitionedCall*Data_Augmentation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_patches_7_layer_call_and_return_conditional_losses_56942ƒ
'patch_encoder_3/StatefulPartitionedCallStatefulPartitionedCall"patches_7/PartitionedCall:output:0patch_encoder_3_56985patch_encoder_3_56987patch_encoder_3_56989*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_patch_encoder_3_layer_call_and_return_conditional_losses_56984’
.layer_normalization_22/StatefulPartitionedCallStatefulPartitionedCall0patch_encoder_3/StatefulPartitionedCall:output:0layer_normalization_22_57015layer_normalization_22_57017*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_57014а
/multi_head_attention_11/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_22/StatefulPartitionedCall:output:07layer_normalization_22/StatefulPartitionedCall:output:0multi_head_attention_11_57056multi_head_attention_11_57058multi_head_attention_11_57060multi_head_attention_11_57062multi_head_attention_11_57064multi_head_attention_11_57066multi_head_attention_11_57068multi_head_attention_11_57070*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_57055Ю
add_22/PartitionedCallPartitionedCall8multi_head_attention_11/StatefulPartitionedCall:output:00patch_encoder_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_add_22_layer_call_and_return_conditional_losses_57079ƒ
.layer_normalization_23/StatefulPartitionedCallStatefulPartitionedCalladd_22/PartitionedCall:output:0layer_normalization_23_57104layer_normalization_23_57106*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_57103§
 dense_32/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_23/StatefulPartitionedCall:output:0dense_32_57141dense_32_57143*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_32_layer_call_and_return_conditional_losses_57140д
dropout_25/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_57151Р
 dense_33/StatefulPartitionedCallStatefulPartitionedCall#dropout_25/PartitionedCall:output:0dense_33_57185dense_33_57187*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_57184д
dropout_26/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_26_layer_call_and_return_conditional_losses_57195ш
add_23/PartitionedCallPartitionedCall#dropout_26/PartitionedCall:output:0add_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_add_23_layer_call_and_return_conditional_losses_57203‘
flatten_3/PartitionedCallPartitionedCalladd_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€Аƒ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_57211К
 dense_34/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_34_57225dense_34_57227*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_57224я
dropout_27/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_27_layer_call_and_return_conditional_losses_57235К
 dense_35/StatefulPartitionedCallStatefulPartitionedCall#dropout_27/PartitionedCall:output:0dense_35_57249dense_35_57251*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_57248x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Р
NoOpNoOp!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall/^layer_normalization_22/StatefulPartitionedCall/^layer_normalization_23/StatefulPartitionedCall0^multi_head_attention_11/StatefulPartitionedCall(^patch_encoder_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*В
_input_shapesq
o:€€€€€€€€€аа::: : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2`
.layer_normalization_22/StatefulPartitionedCall.layer_normalization_22/StatefulPartitionedCall2`
.layer_normalization_23/StatefulPartitionedCall.layer_normalization_23/StatefulPartitionedCall2b
/multi_head_attention_11/StatefulPartitionedCall/multi_head_attention_11/StatefulPartitionedCall2R
'patch_encoder_3/StatefulPartitionedCall'patch_encoder_3/StatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
В	
o
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56382
resizing_3_input
identityѕ
resizing_3/PartitionedCallPartitionedCallresizing_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_resizing_3_layer_call_and_return_conditional_losses_56327д
rescaling_3/PartitionedCallPartitionedCall#resizing_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_rescaling_3_layer_call_and_return_conditional_losses_56337v
IdentityIdentity$rescaling_3/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:c _
1
_output_shapes
:€€€€€€€€€аа
*
_user_specified_nameresizing_3_input
т
°
6__inference_layer_normalization_22_layer_call_fn_59404

inputs
unknown:	А
	unknown_0:	А
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_57014u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€ƒА: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
ѓ
a
E__inference_resizing_3_layer_call_and_return_conditional_losses_59817

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"а   а   Ы
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
»
ы
'__inference_model_3_layer_call_fn_58078

inputs
unknown
	unknown_0
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:
АА
	unknown_5:	А
	unknown_6:
ƒА
	unknown_7:	А
	unknown_8:	А!
	unknown_9:АА

unknown_10:	А"

unknown_11:АА

unknown_12:	А"

unknown_13:АА

unknown_14:	А"

unknown_15:АА

unknown_16:	А

unknown_17:	А

unknown_18:	А

unknown_19:
АА

unknown_20:	А

unknown_21:
АА

unknown_22:	А

unknown_23:АƒА

unknown_24:	А

unknown_25:	А

unknown_26:
identityИҐStatefulPartitionedCallµ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_57688o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*И
_input_shapesw
u:€€€€€€€€€аа::: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
џ*
З
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_57055	
query	
valueC
+query_einsum_einsum_readvariableop_resource:АА4
!query_add_readvariableop_resource:	АA
)key_einsum_einsum_readvariableop_resource:АА2
key_add_readvariableop_resource:	АC
+value_einsum_einsum_readvariableop_resource:АА4
!value_add_readvariableop_resource:	АN
6attention_output_einsum_einsum_readvariableop_resource:АА;
,attention_output_add_readvariableop_resource:	А
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpФ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0≤
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0О
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАР
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Ѓ
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	А*
dtype0И
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАФ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0≤
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0О
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *уµ=e
MulMulquery/add:z:0Mul/y:output:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАС
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒƒ*
equationaecd,abcd->acben
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*1
_output_shapes
:€€€€€€€€€ƒƒs
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*1
_output_shapes
:€€€€€€€€€ƒƒІ
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationacbe,aecd->abcd™
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0„
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:€€€€€€€€€ƒА*
equationabcd,cde->abeН
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0Ђ
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАm
IdentityIdentityattention_output/add:z:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒАЎ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:€€€€€€€€€ƒА:€€€€€€€€€ƒА: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:T P
-
_output_shapes
:€€€€€€€€€ƒА

_user_specified_namequery:TP
-
_output_shapes
:€€€€€€€€€ƒА

_user_specified_namevalue
Ћ
Б
1__inference_random_rotation_3_layer_call_fn_59969

inputs
unknown:	
identityИҐStatefulPartitionedCallџ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_56693y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аа`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€аа: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
З
i
1__inference_Data_Augmentation_layer_call_fn_58945

inputs
unknown
	unknown_0
identity„
PartitionedCallPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56421j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€аа:::Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
™
™
#__inference_signature_wrapper_58906
input_4
unknown
	unknown_0
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
ƒА
	unknown_4:	А
	unknown_5:	А!
	unknown_6:АА
	unknown_7:	А!
	unknown_8:АА
	unknown_9:	А"

unknown_10:АА

unknown_11:	А"

unknown_12:АА

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:
АА

unknown_17:	А

unknown_18:
АА

unknown_19:	А

unknown_20:АƒА

unknown_21:	А

unknown_22:	А

unknown_23:
identityИҐStatefulPartitionedCallн
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *)
f$R"
 __inference__wrapped_model_56314o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*В
_input_shapesq
o:€€€€€€€€€аа::: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€аа
!
_user_specified_name	input_4:,(
&
_output_shapes
::,(
&
_output_shapes
:
ш
b
F__inference_rescaling_3_layer_call_and_return_conditional_losses_59830

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
£

d
E__inference_dropout_25_layer_call_and_return_conditional_losses_57417

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Т
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=ђ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАu
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:€€€€€€€€€ƒАo
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА_
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€ƒА:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
ѕ
J
.__inference_Resize_Rescale_layer_call_fn_58911

inputs
identityЊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56340j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
…
G
+__inference_rescaling_3_layer_call_fn_59822

inputs
identityї
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_rescaling_3_layer_call_and_return_conditional_losses_56337j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
•	
e
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_58926

inputs
identityg
resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"а   а   ±
 resizing_3/resize/ResizeBilinearResizeBilinearinputsresizing_3/resize/size:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа*
half_pixel_centers(W
rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;Y
rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Ґ
rescaling_3/mulMul1resizing_3/resize/ResizeBilinear:resized_images:0rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааИ
rescaling_3/addAddV2rescaling_3/mul:z:0rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааe
IdentityIdentityrescaling_3/add:z:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
‘
Ѓ
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56895
normalization_3_input
normalization_3_sub_y
normalization_3_sqrt_x
identityД
normalization_3/subSubnormalization_3_inputnormalization_3_sub_y*
T0*1
_output_shapes
:€€€€€€€€€ааe
normalization_3/SqrtSqrtnormalization_3_sqrt_x*
T0*&
_output_shapes
:^
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3С
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:Ф
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*1
_output_shapes
:€€€€€€€€€ааа
random_flip_3/PartitionedCallPartitionedCallnormalization_3/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_56406у
!random_rotation_3/PartitionedCallPartitionedCall&random_flip_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_56412п
random_zoom_3/PartitionedCallPartitionedCall*random_rotation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_56418x
IdentityIdentity&random_zoom_3/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€аа:::h d
1
_output_shapes
:€€€€€€€€€аа
/
_user_specified_namenormalization_3_input:,(
&
_output_shapes
::,(
&
_output_shapes
:
№
c
E__inference_dropout_27_layer_call_and_return_conditional_losses_59774

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:€€€€€€€€€А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
љК
е
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_56562

inputs6
(stateful_uniform_rngreadandskip_resource:	
identityИҐstateful_uniform/RngReadAndSkipҐ!stateful_uniform_1/RngReadAndSkip;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
shrink_axis_maskh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
э€€€€€€€€j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
CastCaststrided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ю€€€€€€€€j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
Cast_1Caststrided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: Z
stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :З
stateful_uniform/shapePackstrided_slice:output:0!stateful_uniform/shape/1:output:0*
N*
T0*
_output_shapes
:Y
stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?Y
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff¶?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: А
stateful_uniform/ProdProdstateful_uniform/shape:output:0stateful_uniform/Const:output:0*
T0*
_output_shapes
: Y
stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :o
stateful_uniform/Cast_1Caststateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ґ
stateful_uniform/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource stateful_uniform/Cast/x:output:0stateful_uniform/Cast_1:y:0*
_output_shapes
:n
$stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
stateful_uniform/strided_sliceStridedSlice'stateful_uniform/RngReadAndSkip:value:0-stateful_uniform/strided_slice/stack:output:0/stateful_uniform/strided_slice/stack_1:output:0/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask}
stateful_uniform/BitcastBitcast'stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0p
&stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ґ
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Б
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :П
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: Ы
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€Д
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€\
stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Л
stateful_uniform_1/shapePackstrided_slice:output:0#stateful_uniform_1/shape/1:output:0*
N*
T0*
_output_shapes
:[
stateful_uniform_1/minConst*
_output_shapes
: *
dtype0*
valueB
 *333?[
stateful_uniform_1/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ff¶?b
stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ж
stateful_uniform_1/ProdProd!stateful_uniform_1/shape:output:0!stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: [
stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :s
stateful_uniform_1/Cast_1Cast stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ё
!stateful_uniform_1/RngReadAndSkipRngReadAndSkip(stateful_uniform_rngreadandskip_resource"stateful_uniform_1/Cast/x:output:0stateful_uniform_1/Cast_1:y:0 ^stateful_uniform/RngReadAndSkip*
_output_shapes
:p
&stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ґ
 stateful_uniform_1/strided_sliceStridedSlice)stateful_uniform_1/RngReadAndSkip:value:0/stateful_uniform_1/strided_slice/stack:output:01stateful_uniform_1/strided_slice/stack_1:output:01stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskБ
stateful_uniform_1/BitcastBitcast)stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0r
(stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ђ
"stateful_uniform_1/strided_slice_1StridedSlice)stateful_uniform_1/RngReadAndSkip:value:01stateful_uniform_1/strided_slice_1/stack:output:03stateful_uniform_1/strided_slice_1/stack_1:output:03stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Е
stateful_uniform_1/Bitcast_1Bitcast+stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0q
/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Щ
+stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2!stateful_uniform_1/shape:output:0%stateful_uniform_1/Bitcast_1:output:0#stateful_uniform_1/Bitcast:output:08stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:€€€€€€€€€А
stateful_uniform_1/subSubstateful_uniform_1/max:output:0stateful_uniform_1/min:output:0*
T0*
_output_shapes
: °
stateful_uniform_1/mulMul4stateful_uniform_1/StatelessRandomUniformV2:output:0stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:€€€€€€€€€К
stateful_uniform_1AddV2stateful_uniform_1/mul:z:0stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:€€€€€€€€€M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :С
concatConcatV2stateful_uniform_1:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€P
zoom_matrix/ShapeShapeconcat:output:0*
T0*
_output_shapes
:i
zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Н
zoom_matrix/strided_sliceStridedSlicezoom_matrix/Shape:output:0(zoom_matrix/strided_slice/stack:output:0*zoom_matrix/strided_slice/stack_1:output:0*zoom_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
zoom_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?_
zoom_matrix/subSub
Cast_1:y:0zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: Z
zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @t
zoom_matrix/truedivRealDivzoom_matrix/sub:z:0zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:€€€€€€€€€x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:€€€€€€€€€X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А?a
zoom_matrix/sub_2SubCast:y:0zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: \
zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @z
zoom_matrix/truediv_1RealDivzoom_matrix/sub_2:z:0 zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: v
!zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:€€€€€€€€€|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:€€€€€€€€€v
!zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            x
#zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ч
zoom_matrix/zeros/packedPack"zoom_matrix/strided_slice:output:0#zoom_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:\
zoom_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Р
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_1/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€v
!zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           x
#zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         “
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ы
zoom_matrix/zeros_2/packedPack"zoom_matrix/strided_slice:output:0%zoom_matrix/zeros_2/packed/1:output:0*
N*
T0*
_output_shapes
:^
zoom_matrix/zeros_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ц
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:€€€€€€€€€Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ћ
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:€€€€€€€€€E
transform/ShapeShapeinputs*
T0*
_output_shapes
:g
transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:п
transform/strided_sliceStridedSlicetransform/Shape:output:0&transform/strided_slice/stack:output:0(transform/strided_slice/stack_1:output:0(transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:Y
transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    Е
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:€€€€€€€€€аа*
dtype0*
interpolation
BILINEARТ
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ааМ
NoOpNoOp ^stateful_uniform/RngReadAndSkip"^stateful_uniform_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€аа: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip2F
!stateful_uniform_1/RngReadAndSkip!stateful_uniform_1/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
Щ
ш
7__inference_multi_head_attention_11_layer_call_fn_59448	
query	
value
unknown:АА
	unknown_0:	А!
	unknown_1:АА
	unknown_2:	А!
	unknown_3:АА
	unknown_4:	А!
	unknown_5:АА
	unknown_6:	А
identityИҐStatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_57055u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:€€€€€€€€€ƒА:€€€€€€€€€ƒА: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
-
_output_shapes
:€€€€€€€€€ƒА

_user_specified_namequery:TP
-
_output_shapes
:€€€€€€€€€ƒА

_user_specified_namevalue
ѕ	
—
1__inference_Data_Augmentation_layer_call_fn_58960

inputs
unknown
	unknown_0
	unknown_1:	
	unknown_2:	
	unknown_3:	
identityИҐStatefulPartitionedCallЛ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56853y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€аа`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:€€€€€€€€€аа::: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
Ц
d
H__inference_random_flip_3_layer_call_and_return_conditional_losses_56406

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
–
Ѓ
'__inference_model_3_layer_call_fn_57308
input_4
unknown
	unknown_0
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
ƒА
	unknown_4:	А
	unknown_5:	А!
	unknown_6:АА
	unknown_7:	А!
	unknown_8:АА
	unknown_9:	А"

unknown_10:АА

unknown_11:	А"

unknown_12:АА

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:
АА

unknown_17:	А

unknown_18:
АА

unknown_19:	А

unknown_20:АƒА

unknown_21:	А

unknown_22:	А

unknown_23:
identityИҐStatefulPartitionedCallП
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_57255o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*В
_input_shapesq
o:€€€€€€€€€аа::: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€аа
!
_user_specified_name	input_4:,(
&
_output_shapes
::,(
&
_output_shapes
:
Ј
F
*__inference_dropout_26_layer_call_fn_59694

inputs
identityґ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_26_layer_call_and_return_conditional_losses_57195f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€ƒА:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
¶
Я
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56421

inputs
normalization_3_sub_y
normalization_3_sqrt_x
identityu
normalization_3/subSubinputsnormalization_3_sub_y*
T0*1
_output_shapes
:€€€€€€€€€ааe
normalization_3/SqrtSqrtnormalization_3_sqrt_x*
T0*&
_output_shapes
:^
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *Хњ÷3С
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:Ф
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*1
_output_shapes
:€€€€€€€€€ааа
random_flip_3/PartitionedCallPartitionedCallnormalization_3/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_56406у
!random_rotation_3/PartitionedCallPartitionedCall&random_flip_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_56412п
random_zoom_3/PartitionedCallPartitionedCall*random_rotation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_56418x
IdentityIdentity&random_zoom_3/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€аа:::Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
џ*
З
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_59505	
query	
valueC
+query_einsum_einsum_readvariableop_resource:АА4
!query_add_readvariableop_resource:	АA
)key_einsum_einsum_readvariableop_resource:АА2
key_add_readvariableop_resource:	АC
+value_einsum_einsum_readvariableop_resource:АА4
!value_add_readvariableop_resource:	АN
6attention_output_einsum_einsum_readvariableop_resource:АА;
,attention_output_add_readvariableop_resource:	А
identityИҐ#attention_output/add/ReadVariableOpҐ-attention_output/einsum/Einsum/ReadVariableOpҐkey/add/ReadVariableOpҐ key/einsum/Einsum/ReadVariableOpҐquery/add/ReadVariableOpҐ"query/einsum/Einsum/ReadVariableOpҐvalue/add/ReadVariableOpҐ"value/einsum/Einsum/ReadVariableOpФ
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0≤
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	А*
dtype0О
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАР
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0Ѓ
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	А*
dtype0И
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАФ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0≤
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	А*
dtype0О
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *уµ=e
MulMulquery/add:z:0Mul/y:output:0*
T0*1
_output_shapes
:€€€€€€€€€ƒАС
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒƒ*
equationaecd,abcd->acben
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*1
_output_shapes
:€€€€€€€€€ƒƒs
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*1
_output_shapes
:€€€€€€€€€ƒƒІ
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*1
_output_shapes
:€€€€€€€€€ƒА*
equationacbe,aecd->abcd™
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:АА*
dtype0„
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:€€€€€€€€€ƒА*
equationabcd,cde->abeН
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes	
:А*
dtype0Ђ
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАm
IdentityIdentityattention_output/add:z:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒАЎ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:€€€€€€€€€ƒА:€€€€€€€€€ƒА: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:T P
-
_output_shapes
:€€€€€€€€€ƒА

_user_specified_namequery:TP
-
_output_shapes
:€€€€€€€€€ƒА

_user_specified_namevalue
т
°
6__inference_layer_normalization_23_layer_call_fn_59560

inputs
unknown:	А
	unknown_0:	А
identityИҐStatefulPartitionedCallм
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_57103u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒА`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€ƒА: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
р
c
E__inference_dropout_25_layer_call_and_return_conditional_losses_59637

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:€€€€€€€€€ƒАa

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€ƒА:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
ЄЂ
й)
__inference__traced_save_60525
file_prefix;
7savev2_layer_normalization_22_gamma_read_readvariableop:
6savev2_layer_normalization_22_beta_read_readvariableop;
7savev2_layer_normalization_23_gamma_read_readvariableop:
6savev2_layer_normalization_23_beta_read_readvariableop.
*savev2_dense_32_kernel_read_readvariableop,
(savev2_dense_32_bias_read_readvariableop.
*savev2_dense_33_kernel_read_readvariableop,
(savev2_dense_33_bias_read_readvariableop.
*savev2_dense_34_kernel_read_readvariableop,
(savev2_dense_34_bias_read_readvariableop.
*savev2_dense_35_kernel_read_readvariableop,
(savev2_dense_35_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop3
/savev2_normalization_3_mean_read_readvariableop7
3savev2_normalization_3_variance_read_readvariableop4
0savev2_normalization_3_count_read_readvariableop	>
:savev2_patch_encoder_3_dense_31_kernel_read_readvariableop<
8savev2_patch_encoder_3_dense_31_bias_read_readvariableopE
Asavev2_patch_encoder_3_embedding_3_embeddings_read_readvariableopC
?savev2_multi_head_attention_11_query_kernel_read_readvariableopA
=savev2_multi_head_attention_11_query_bias_read_readvariableopA
=savev2_multi_head_attention_11_key_kernel_read_readvariableop?
;savev2_multi_head_attention_11_key_bias_read_readvariableopC
?savev2_multi_head_attention_11_value_kernel_read_readvariableopA
=savev2_multi_head_attention_11_value_bias_read_readvariableopN
Jsavev2_multi_head_attention_11_attention_output_kernel_read_readvariableopL
Hsavev2_multi_head_attention_11_attention_output_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopO
Ksavev2_model_3_data_augmentation_random_flip_3_statevar_read_readvariableop	S
Osavev2_model_3_data_augmentation_random_rotation_3_statevar_read_readvariableop	O
Ksavev2_model_3_data_augmentation_random_zoom_3_statevar_read_readvariableop	B
>savev2_adam_layer_normalization_22_gamma_m_read_readvariableopA
=savev2_adam_layer_normalization_22_beta_m_read_readvariableopB
>savev2_adam_layer_normalization_23_gamma_m_read_readvariableopA
=savev2_adam_layer_normalization_23_beta_m_read_readvariableop5
1savev2_adam_dense_32_kernel_m_read_readvariableop3
/savev2_adam_dense_32_bias_m_read_readvariableop5
1savev2_adam_dense_33_kernel_m_read_readvariableop3
/savev2_adam_dense_33_bias_m_read_readvariableop5
1savev2_adam_dense_34_kernel_m_read_readvariableop3
/savev2_adam_dense_34_bias_m_read_readvariableop5
1savev2_adam_dense_35_kernel_m_read_readvariableop3
/savev2_adam_dense_35_bias_m_read_readvariableopE
Asavev2_adam_patch_encoder_3_dense_31_kernel_m_read_readvariableopC
?savev2_adam_patch_encoder_3_dense_31_bias_m_read_readvariableopL
Hsavev2_adam_patch_encoder_3_embedding_3_embeddings_m_read_readvariableopJ
Fsavev2_adam_multi_head_attention_11_query_kernel_m_read_readvariableopH
Dsavev2_adam_multi_head_attention_11_query_bias_m_read_readvariableopH
Dsavev2_adam_multi_head_attention_11_key_kernel_m_read_readvariableopF
Bsavev2_adam_multi_head_attention_11_key_bias_m_read_readvariableopJ
Fsavev2_adam_multi_head_attention_11_value_kernel_m_read_readvariableopH
Dsavev2_adam_multi_head_attention_11_value_bias_m_read_readvariableopU
Qsavev2_adam_multi_head_attention_11_attention_output_kernel_m_read_readvariableopS
Osavev2_adam_multi_head_attention_11_attention_output_bias_m_read_readvariableopB
>savev2_adam_layer_normalization_22_gamma_v_read_readvariableopA
=savev2_adam_layer_normalization_22_beta_v_read_readvariableopB
>savev2_adam_layer_normalization_23_gamma_v_read_readvariableopA
=savev2_adam_layer_normalization_23_beta_v_read_readvariableop5
1savev2_adam_dense_32_kernel_v_read_readvariableop3
/savev2_adam_dense_32_bias_v_read_readvariableop5
1savev2_adam_dense_33_kernel_v_read_readvariableop3
/savev2_adam_dense_33_bias_v_read_readvariableop5
1savev2_adam_dense_34_kernel_v_read_readvariableop3
/savev2_adam_dense_34_bias_v_read_readvariableop5
1savev2_adam_dense_35_kernel_v_read_readvariableop3
/savev2_adam_dense_35_bias_v_read_readvariableopE
Asavev2_adam_patch_encoder_3_dense_31_kernel_v_read_readvariableopC
?savev2_adam_patch_encoder_3_dense_31_bias_v_read_readvariableopL
Hsavev2_adam_patch_encoder_3_embedding_3_embeddings_v_read_readvariableopJ
Fsavev2_adam_multi_head_attention_11_query_kernel_v_read_readvariableopH
Dsavev2_adam_multi_head_attention_11_query_bias_v_read_readvariableopH
Dsavev2_adam_multi_head_attention_11_key_kernel_v_read_readvariableopF
Bsavev2_adam_multi_head_attention_11_key_bias_v_read_readvariableopJ
Fsavev2_adam_multi_head_attention_11_value_kernel_v_read_readvariableopH
Dsavev2_adam_multi_head_attention_11_value_bias_v_read_readvariableopU
Qsavev2_adam_multi_head_attention_11_attention_output_kernel_v_read_readvariableopS
Osavev2_adam_multi_head_attention_11_attention_output_bias_v_read_readvariableop
savev2_const_2

identity_1ИҐMergeV2Checkpointsw
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
: Џ+
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*Г+
valueщ*Bц*UB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-0/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-0/layer-3/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЪ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*њ
valueµB≤UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ≤(
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:07savev2_layer_normalization_22_gamma_read_readvariableop6savev2_layer_normalization_22_beta_read_readvariableop7savev2_layer_normalization_23_gamma_read_readvariableop6savev2_layer_normalization_23_beta_read_readvariableop*savev2_dense_32_kernel_read_readvariableop(savev2_dense_32_bias_read_readvariableop*savev2_dense_33_kernel_read_readvariableop(savev2_dense_33_bias_read_readvariableop*savev2_dense_34_kernel_read_readvariableop(savev2_dense_34_bias_read_readvariableop*savev2_dense_35_kernel_read_readvariableop(savev2_dense_35_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop/savev2_normalization_3_mean_read_readvariableop3savev2_normalization_3_variance_read_readvariableop0savev2_normalization_3_count_read_readvariableop:savev2_patch_encoder_3_dense_31_kernel_read_readvariableop8savev2_patch_encoder_3_dense_31_bias_read_readvariableopAsavev2_patch_encoder_3_embedding_3_embeddings_read_readvariableop?savev2_multi_head_attention_11_query_kernel_read_readvariableop=savev2_multi_head_attention_11_query_bias_read_readvariableop=savev2_multi_head_attention_11_key_kernel_read_readvariableop;savev2_multi_head_attention_11_key_bias_read_readvariableop?savev2_multi_head_attention_11_value_kernel_read_readvariableop=savev2_multi_head_attention_11_value_bias_read_readvariableopJsavev2_multi_head_attention_11_attention_output_kernel_read_readvariableopHsavev2_multi_head_attention_11_attention_output_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopKsavev2_model_3_data_augmentation_random_flip_3_statevar_read_readvariableopOsavev2_model_3_data_augmentation_random_rotation_3_statevar_read_readvariableopKsavev2_model_3_data_augmentation_random_zoom_3_statevar_read_readvariableop>savev2_adam_layer_normalization_22_gamma_m_read_readvariableop=savev2_adam_layer_normalization_22_beta_m_read_readvariableop>savev2_adam_layer_normalization_23_gamma_m_read_readvariableop=savev2_adam_layer_normalization_23_beta_m_read_readvariableop1savev2_adam_dense_32_kernel_m_read_readvariableop/savev2_adam_dense_32_bias_m_read_readvariableop1savev2_adam_dense_33_kernel_m_read_readvariableop/savev2_adam_dense_33_bias_m_read_readvariableop1savev2_adam_dense_34_kernel_m_read_readvariableop/savev2_adam_dense_34_bias_m_read_readvariableop1savev2_adam_dense_35_kernel_m_read_readvariableop/savev2_adam_dense_35_bias_m_read_readvariableopAsavev2_adam_patch_encoder_3_dense_31_kernel_m_read_readvariableop?savev2_adam_patch_encoder_3_dense_31_bias_m_read_readvariableopHsavev2_adam_patch_encoder_3_embedding_3_embeddings_m_read_readvariableopFsavev2_adam_multi_head_attention_11_query_kernel_m_read_readvariableopDsavev2_adam_multi_head_attention_11_query_bias_m_read_readvariableopDsavev2_adam_multi_head_attention_11_key_kernel_m_read_readvariableopBsavev2_adam_multi_head_attention_11_key_bias_m_read_readvariableopFsavev2_adam_multi_head_attention_11_value_kernel_m_read_readvariableopDsavev2_adam_multi_head_attention_11_value_bias_m_read_readvariableopQsavev2_adam_multi_head_attention_11_attention_output_kernel_m_read_readvariableopOsavev2_adam_multi_head_attention_11_attention_output_bias_m_read_readvariableop>savev2_adam_layer_normalization_22_gamma_v_read_readvariableop=savev2_adam_layer_normalization_22_beta_v_read_readvariableop>savev2_adam_layer_normalization_23_gamma_v_read_readvariableop=savev2_adam_layer_normalization_23_beta_v_read_readvariableop1savev2_adam_dense_32_kernel_v_read_readvariableop/savev2_adam_dense_32_bias_v_read_readvariableop1savev2_adam_dense_33_kernel_v_read_readvariableop/savev2_adam_dense_33_bias_v_read_readvariableop1savev2_adam_dense_34_kernel_v_read_readvariableop/savev2_adam_dense_34_bias_v_read_readvariableop1savev2_adam_dense_35_kernel_v_read_readvariableop/savev2_adam_dense_35_bias_v_read_readvariableopAsavev2_adam_patch_encoder_3_dense_31_kernel_v_read_readvariableop?savev2_adam_patch_encoder_3_dense_31_bias_v_read_readvariableopHsavev2_adam_patch_encoder_3_embedding_3_embeddings_v_read_readvariableopFsavev2_adam_multi_head_attention_11_query_kernel_v_read_readvariableopDsavev2_adam_multi_head_attention_11_query_bias_v_read_readvariableopDsavev2_adam_multi_head_attention_11_key_kernel_v_read_readvariableopBsavev2_adam_multi_head_attention_11_key_bias_v_read_readvariableopFsavev2_adam_multi_head_attention_11_value_kernel_v_read_readvariableopDsavev2_adam_multi_head_attention_11_value_bias_v_read_readvariableopQsavev2_adam_multi_head_attention_11_attention_output_kernel_v_read_readvariableopOsavev2_adam_multi_head_attention_11_attention_output_bias_v_read_readvariableopsavev2_const_2"/device:CPU:0*
_output_shapes
 *c
dtypesY
W2U					Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*Х
_input_shapesГ
А: :А:А:А:А:
АА:А:
АА:А:АƒА:А:	А:: : : : : ::: :
АА:А:
ƒА:АА:	А:АА:	А:АА:	А:АА:А: : : : ::::А:А:А:А:
АА:А:
АА:А:АƒА:А:	А::
АА:А:
ƒА:АА:	А:АА:	А:АА:	А:АА:А:А:А:А:А:
АА:А:
АА:А:АƒА:А:	А::
АА:А:
ƒА:АА:	А:АА:	А:АА:	А:АА:А: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:'	#
!
_output_shapes
:АƒА:!


_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::
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
: : 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
ƒА:*&
$
_output_shapes
:АА:%!

_output_shapes
:	А:*&
$
_output_shapes
:АА:%!

_output_shapes
:	А:*&
$
_output_shapes
:АА:%!

_output_shapes
:	А:*&
$
_output_shapes
:АА:!

_output_shapes	
:А: 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: : $

_output_shapes
:: %

_output_shapes
:: &

_output_shapes
::!'

_output_shapes	
:А:!(

_output_shapes	
:А:!)

_output_shapes	
:А:!*

_output_shapes	
:А:&+"
 
_output_shapes
:
АА:!,

_output_shapes	
:А:&-"
 
_output_shapes
:
АА:!.

_output_shapes	
:А:'/#
!
_output_shapes
:АƒА:!0

_output_shapes	
:А:%1!

_output_shapes
:	А: 2

_output_shapes
::&3"
 
_output_shapes
:
АА:!4

_output_shapes	
:А:&5"
 
_output_shapes
:
ƒА:*6&
$
_output_shapes
:АА:%7!

_output_shapes
:	А:*8&
$
_output_shapes
:АА:%9!

_output_shapes
:	А:*:&
$
_output_shapes
:АА:%;!

_output_shapes
:	А:*<&
$
_output_shapes
:АА:!=

_output_shapes	
:А:!>

_output_shapes	
:А:!?

_output_shapes	
:А:!@

_output_shapes	
:А:!A

_output_shapes	
:А:&B"
 
_output_shapes
:
АА:!C

_output_shapes	
:А:&D"
 
_output_shapes
:
АА:!E

_output_shapes	
:А:'F#
!
_output_shapes
:АƒА:!G

_output_shapes	
:А:%H!

_output_shapes
:	А: I

_output_shapes
::&J"
 
_output_shapes
:
АА:!K

_output_shapes	
:А:&L"
 
_output_shapes
:
ƒА:*M&
$
_output_shapes
:АА:%N!

_output_shapes
:	А:*O&
$
_output_shapes
:АА:%P!

_output_shapes
:	А:*Q&
$
_output_shapes
:АА:%R!

_output_shapes
:	А:*S&
$
_output_shapes
:АА:!T

_output_shapes	
:А:U

_output_shapes
: 
в
m
A__inference_add_22_layer_call_and_return_conditional_losses_59551
inputs_0
inputs_1
identityX
addAddV2inputs_0inputs_1*
T0*-
_output_shapes
:€€€€€€€€€ƒАU
IdentityIdentityadd:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:€€€€€€€€€ƒА:€€€€€€€€€ƒА:W S
-
_output_shapes
:€€€€€€€€€ƒА
"
_user_specified_name
inputs/0:WS
-
_output_shapes
:€€€€€€€€€ƒА
"
_user_specified_name
inputs/1
ы	
d
E__inference_dropout_27_layer_call_and_return_conditional_losses_57338

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  †?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ЌћL>І
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:€€€€€€€€€Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:€€€€€€€€€АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
Џ
k
A__inference_add_23_layer_call_and_return_conditional_losses_57203

inputs
inputs_1
identityV
addAddV2inputsinputs_1*
T0*-
_output_shapes
:€€€€€€€€€ƒАU
IdentityIdentityadd:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:€€€€€€€€€ƒА:€€€€€€€€€ƒА:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs:UQ
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
В	
o
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56388
resizing_3_input
identityѕ
resizing_3/PartitionedCallPartitionedCallresizing_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_resizing_3_layer_call_and_return_conditional_losses_56327д
rescaling_3/PartitionedCallPartitionedCall#resizing_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_rescaling_3_layer_call_and_return_conditional_losses_56337v
IdentityIdentity$rescaling_3/PartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:c _
1
_output_shapes
:€€€€€€€€€аа
*
_user_specified_nameresizing_3_input
ДЧ
А
H__inference_random_flip_3_layer_call_and_return_conditional_losses_56817

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityИҐ(stateful_uniform_full_int/RngReadAndSkipҐ*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ы
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Б
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Џ
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskП
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:У
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :С
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ч
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskЮ
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€ааТ
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЃ
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:В
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    В
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?∞
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::Ш
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ю
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€х
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Т
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€ы
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ќ
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:е
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ь
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:л
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа»
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааk
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?¬
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€—
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€аањ
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€ааk
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Е
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Л
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskУ
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ч
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ы
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskџ
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:€€€€€€€€€ааМ
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask®
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ѓ
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::Х
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :п
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€м
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Й
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€т
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :њ
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:№
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ц
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:в
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€аањ
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааh
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?є
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€»
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааґ
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€аа~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ааЮ
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€аа: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
£

d
E__inference_dropout_25_layer_call_and_return_conditional_losses_59649

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *д8О?j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Т
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *Ќћћ=ђ
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАu
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:€€€€€€€€€ƒАo
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА_
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€ƒА:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
≠
E
)__inference_flatten_3_layer_call_fn_59733

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€Аƒ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_57211b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:€€€€€€€€€Аƒ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€ƒА:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
™

ш
C__inference_dense_34_layer_call_and_return_conditional_losses_59759

inputs3
matmul_readvariableop_resource:АƒА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:АƒА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:€€€€€€€€€Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€Аƒ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:€€€€€€€€€Аƒ
 
_user_specified_nameinputs
«
F
*__inference_resizing_3_layer_call_fn_59811

inputs
identityЇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_resizing_3_layer_call_and_return_conditional_losses_56327j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
і
x
1__inference_Data_Augmentation_layer_call_fn_56428
normalization_3_input
unknown
	unknown_0
identityж
PartitionedCallPartitionedCallnormalization_3_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56421j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:€€€€€€€€€аа:::h d
1
_output_shapes
:€€€€€€€€€аа
/
_user_specified_namenormalization_3_input:,(
&
_output_shapes
::,(
&
_output_shapes
:
Ќ
I
-__inference_random_zoom_3_layer_call_fn_60096

inputs
identityљ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_56418j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
Є
э
C__inference_dense_32_layer_call_and_return_conditional_losses_57140

inputs5
!tensordot_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИҐBiasAdd/ReadVariableOpҐTensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ї
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : њ
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ь
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАК
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€Л
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€А\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:АY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : І
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Е
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАV
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒАg
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒАz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€ƒА: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
№
c
E__inference_dropout_27_layer_call_and_return_conditional_losses_57235

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:€€€€€€€€€А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:€€€€€€€€€А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:€€€€€€€€€А:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
П+
ю
J__inference_patch_encoder_3_layer_call_and_return_conditional_losses_59395	
patch>
*dense_31_tensordot_readvariableop_resource:
АА7
(dense_31_biasadd_readvariableop_resource:	А6
"embedding_3_embedding_lookup_59388:
ƒА
identityИҐdense_31/BiasAdd/ReadVariableOpҐ!dense_31/Tensordot/ReadVariableOpҐembedding_3/embedding_lookupM
range/startConst*
_output_shapes
: *
dtype0*
value	B : N
range/limitConst*
_output_shapes
: *
dtype0*
value
B :ƒM
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :m
rangeRangerange/start:output:0range/limit:output:0range/delta:output:0*
_output_shapes	
:ƒО
!dense_31/Tensordot/ReadVariableOpReadVariableOp*dense_31_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0a
dense_31/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_31/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_31/Tensordot/ShapeShapepatch*
T0*
_output_shapes
:b
 dense_31/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_31/Tensordot/GatherV2GatherV2!dense_31/Tensordot/Shape:output:0 dense_31/Tensordot/free:output:0)dense_31/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_31/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_31/Tensordot/GatherV2_1GatherV2!dense_31/Tensordot/Shape:output:0 dense_31/Tensordot/axes:output:0+dense_31/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_31/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_31/Tensordot/ProdProd$dense_31/Tensordot/GatherV2:output:0!dense_31/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_31/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_31/Tensordot/Prod_1Prod&dense_31/Tensordot/GatherV2_1:output:0#dense_31/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_31/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_31/Tensordot/concatConcatV2 dense_31/Tensordot/free:output:0 dense_31/Tensordot/axes:output:0'dense_31/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_31/Tensordot/stackPack dense_31/Tensordot/Prod:output:0"dense_31/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ф
dense_31/Tensordot/transpose	Transposepatch"dense_31/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
dense_31/Tensordot/ReshapeReshape dense_31/Tensordot/transpose:y:0!dense_31/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€¶
dense_31/Tensordot/MatMulMatMul#dense_31/Tensordot/Reshape:output:0)dense_31/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
dense_31/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аb
 dense_31/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_31/Tensordot/concat_1ConcatV2$dense_31/Tensordot/GatherV2:output:0#dense_31/Tensordot/Const_2:output:0)dense_31/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:®
dense_31/TensordotReshape#dense_31/Tensordot/MatMul:product:0$dense_31/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЕ
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0°
dense_31/BiasAddBiasAdddense_31/Tensordot:output:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЎ
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_59388range:output:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/59388* 
_output_shapes
:
ƒА*
dtype0Ї
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/59388* 
_output_shapes
:
ƒАО
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
ƒАС
addAddV2dense_31/BiasAdd:output:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА\
IdentityIdentityadd:z:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒАЂ
NoOpNoOp ^dense_31/BiasAdd/ReadVariableOp"^dense_31/Tensordot/ReadVariableOp^embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€А: : : 2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2F
!dense_31/Tensordot/ReadVariableOp!dense_31/Tensordot/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:\ X
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А

_user_specified_namepatch
ш
b
F__inference_rescaling_3_layer_call_and_return_conditional_losses_56337

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *БАА;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
р
c
E__inference_dropout_25_layer_call_and_return_conditional_losses_57151

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:€€€€€€€€€ƒАa

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:€€€€€€€€€ƒА:U Q
-
_output_shapes
:€€€€€€€€€ƒА
 
_user_specified_nameinputs
ДЧ
А
H__inference_random_flip_3_layer_call_and_return_conditional_losses_59957

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identityИҐ(stateful_uniform_full_int/RngReadAndSkipҐ*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ы
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Б
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Џ
(stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource)stateful_uniform_full_int/Cast/x:output:0$stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:w
-stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskП
!stateful_uniform_full_int/BitcastBitcast0stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0y
/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ѕ
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:У
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :С
stateful_uniform_full_intStatelessRandomUniformFullIntV2(stateful_uniform_full_int/shape:output:0,stateful_uniform_full_int/Bitcast_1:output:0*stateful_uniform_full_int/Bitcast:output:0&stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	T

zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R x
stackPack"stateful_uniform_full_int:output:0zeros_like:output:0*
N*
T0	*
_output_shapes

:d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ч
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskЮ
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:€€€€€€€€€ааТ
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: А
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:А
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ц
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskЃ
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:В
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    В
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?∞
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::Ш
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ю
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€х
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Т
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€ы
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€r
0stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :r
0stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ќ
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:е
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ь
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:л
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€аа»
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааk
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?¬
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€—
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€аањ
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€ааk
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Е
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Л
*stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip1stateful_uniform_full_int_rngreadandskip_resource+stateful_uniform_full_int_1/Cast/x:output:0&stateful_uniform_full_int_1/Cast_1:y:0)^stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:y
/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:г
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskУ
#stateful_uniform_full_int_1/BitcastBitcast2stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0{
1stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ў
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ч
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :Ы
stateful_uniform_full_int_1StatelessRandomUniformFullIntV2*stateful_uniform_full_int_1/shape:output:0.stateful_uniform_full_int_1/Bitcast_1:output:0,stateful_uniform_full_int_1/Bitcast:output:0(stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	V
zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ~
stack_1Pack$stateful_uniform_full_int_1:output:0zeros_like_1:output:0*
N*
T0	*
_output_shapes

:f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Б
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskџ
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:€€€€€€€€€ааМ
#stateless_random_flip_up_down/ShapeShape9stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:{
1stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:з
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask®
<stateless_random_flip_up_down/stateless_random_uniform/shapePack4stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
:stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
:stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  А?ѓ
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::Х
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :п
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:€€€€€€€€€м
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Й
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:€€€€€€€€€т
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:€€€€€€€€€o
-stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :o
-stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :њ
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:№
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:€€€€€€€€€Ц
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:€€€€€€€€€v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:в
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:€€€€€€€€€аањ
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааh
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?є
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:€€€€€€€€€»
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:€€€€€€€€€ааґ
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:€€€€€€€€€аа~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:€€€€€€€€€ааЮ
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:€€€€€€€€€аа: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
Ц
d
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_56418

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:€€€€€€€€€аа"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€аа:Y U
1
_output_shapes
:€€€€€€€€€аа
 
_user_specified_nameinputs
ХO
Ѕ
B__inference_model_3_layer_call_and_return_conditional_losses_57879
input_4
data_augmentation_57812
data_augmentation_57814)
patch_encoder_3_57818:
АА$
patch_encoder_3_57820:	А)
patch_encoder_3_57822:
ƒА+
layer_normalization_22_57825:	А+
layer_normalization_22_57827:	А5
multi_head_attention_11_57830:АА0
multi_head_attention_11_57832:	А5
multi_head_attention_11_57834:АА0
multi_head_attention_11_57836:	А5
multi_head_attention_11_57838:АА0
multi_head_attention_11_57840:	А5
multi_head_attention_11_57842:АА,
multi_head_attention_11_57844:	А+
layer_normalization_23_57848:	А+
layer_normalization_23_57850:	А"
dense_32_57853:
АА
dense_32_57855:	А"
dense_33_57859:
АА
dense_33_57861:	А#
dense_34_57867:АƒА
dense_34_57869:	А!
dense_35_57873:	А
dense_35_57875:
identityИҐ dense_32/StatefulPartitionedCallҐ dense_33/StatefulPartitionedCallҐ dense_34/StatefulPartitionedCallҐ dense_35/StatefulPartitionedCallҐ.layer_normalization_22/StatefulPartitionedCallҐ.layer_normalization_23/StatefulPartitionedCallҐ/multi_head_attention_11/StatefulPartitionedCallҐ'patch_encoder_3/StatefulPartitionedCallќ
Resize_Rescale/PartitionedCallPartitionedCallinput_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *R
fMRK
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56340®
!Data_Augmentation/PartitionedCallPartitionedCall'Resize_Rescale/PartitionedCall:output:0data_augmentation_57812data_augmentation_57814*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:€€€€€€€€€аа* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *U
fPRN
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56421л
patches_7/PartitionedCallPartitionedCall*Data_Augmentation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_patches_7_layer_call_and_return_conditional_losses_56942ƒ
'patch_encoder_3/StatefulPartitionedCallStatefulPartitionedCall"patches_7/PartitionedCall:output:0patch_encoder_3_57818patch_encoder_3_57820patch_encoder_3_57822*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_patch_encoder_3_layer_call_and_return_conditional_losses_56984’
.layer_normalization_22/StatefulPartitionedCallStatefulPartitionedCall0patch_encoder_3/StatefulPartitionedCall:output:0layer_normalization_22_57825layer_normalization_22_57827*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_57014а
/multi_head_attention_11/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_22/StatefulPartitionedCall:output:07layer_normalization_22/StatefulPartitionedCall:output:0multi_head_attention_11_57830multi_head_attention_11_57832multi_head_attention_11_57834multi_head_attention_11_57836multi_head_attention_11_57838multi_head_attention_11_57840multi_head_attention_11_57842multi_head_attention_11_57844*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_57055Ю
add_22/PartitionedCallPartitionedCall8multi_head_attention_11/StatefulPartitionedCall:output:00patch_encoder_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_add_22_layer_call_and_return_conditional_losses_57079ƒ
.layer_normalization_23/StatefulPartitionedCallStatefulPartitionedCalladd_22/PartitionedCall:output:0layer_normalization_23_57848layer_normalization_23_57850*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Z
fURS
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_57103§
 dense_32/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_23/StatefulPartitionedCall:output:0dense_32_57853dense_32_57855*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_32_layer_call_and_return_conditional_losses_57140д
dropout_25/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_57151Р
 dense_33/StatefulPartitionedCallStatefulPartitionedCall#dropout_25/PartitionedCall:output:0dense_33_57859dense_33_57861*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_57184д
dropout_26/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_26_layer_call_and_return_conditional_losses_57195ш
add_23/PartitionedCallPartitionedCall#dropout_26/PartitionedCall:output:0add_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:€€€€€€€€€ƒА* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *J
fERC
A__inference_add_23_layer_call_and_return_conditional_losses_57203‘
flatten_3/PartitionedCallPartitionedCalladd_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:€€€€€€€€€Аƒ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_57211К
 dense_34/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_34_57867dense_34_57869*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_57224я
dropout_27/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dropout_27_layer_call_and_return_conditional_losses_57235К
 dense_35/StatefulPartitionedCallStatefulPartitionedCall#dropout_27/PartitionedCall:output:0dense_35_57873dense_35_57875*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_57248x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€Р
NoOpNoOp!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall/^layer_normalization_22/StatefulPartitionedCall/^layer_normalization_23/StatefulPartitionedCall0^multi_head_attention_11/StatefulPartitionedCall(^patch_encoder_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*В
_input_shapesq
o:€€€€€€€€€аа::: : : : : : : : : : : : : : : : : : : : : : : 2D
 dense_32/StatefulPartitionedCall dense_32/StatefulPartitionedCall2D
 dense_33/StatefulPartitionedCall dense_33/StatefulPartitionedCall2D
 dense_34/StatefulPartitionedCall dense_34/StatefulPartitionedCall2D
 dense_35/StatefulPartitionedCall dense_35/StatefulPartitionedCall2`
.layer_normalization_22/StatefulPartitionedCall.layer_normalization_22/StatefulPartitionedCall2`
.layer_normalization_23/StatefulPartitionedCall.layer_normalization_23/StatefulPartitionedCall2b
/multi_head_attention_11/StatefulPartitionedCall/multi_head_attention_11/StatefulPartitionedCall2R
'patch_encoder_3/StatefulPartitionedCall'patch_encoder_3/StatefulPartitionedCall:Z V
1
_output_shapes
:€€€€€€€€€аа
!
_user_specified_name	input_4:,(
&
_output_shapes
::,(
&
_output_shapes
:
£

х
C__inference_dense_35_layer_call_and_return_conditional_losses_59806

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:€€€€€€€€€`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€А
 
_user_specified_nameinputs
П+
ю
J__inference_patch_encoder_3_layer_call_and_return_conditional_losses_56984	
patch>
*dense_31_tensordot_readvariableop_resource:
АА7
(dense_31_biasadd_readvariableop_resource:	А6
"embedding_3_embedding_lookup_56977:
ƒА
identityИҐdense_31/BiasAdd/ReadVariableOpҐ!dense_31/Tensordot/ReadVariableOpҐembedding_3/embedding_lookupM
range/startConst*
_output_shapes
: *
dtype0*
value	B : N
range/limitConst*
_output_shapes
: *
dtype0*
value
B :ƒM
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :m
rangeRangerange/start:output:0range/limit:output:0range/delta:output:0*
_output_shapes	
:ƒО
!dense_31/Tensordot/ReadVariableOpReadVariableOp*dense_31_tensordot_readvariableop_resource* 
_output_shapes
:
АА*
dtype0a
dense_31/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_31/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_31/Tensordot/ShapeShapepatch*
T0*
_output_shapes
:b
 dense_31/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : я
dense_31/Tensordot/GatherV2GatherV2!dense_31/Tensordot/Shape:output:0 dense_31/Tensordot/free:output:0)dense_31/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_31/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : г
dense_31/Tensordot/GatherV2_1GatherV2!dense_31/Tensordot/Shape:output:0 dense_31/Tensordot/axes:output:0+dense_31/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_31/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: Й
dense_31/Tensordot/ProdProd$dense_31/Tensordot/GatherV2:output:0!dense_31/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_31/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: П
dense_31/Tensordot/Prod_1Prod&dense_31/Tensordot/GatherV2_1:output:0#dense_31/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_31/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ј
dense_31/Tensordot/concatConcatV2 dense_31/Tensordot/free:output:0 dense_31/Tensordot/axes:output:0'dense_31/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Ф
dense_31/Tensordot/stackPack dense_31/Tensordot/Prod:output:0"dense_31/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ф
dense_31/Tensordot/transpose	Transposepatch"dense_31/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А•
dense_31/Tensordot/ReshapeReshape dense_31/Tensordot/transpose:y:0!dense_31/Tensordot/stack:output:0*
T0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€¶
dense_31/Tensordot/MatMulMatMul#dense_31/Tensordot/Reshape:output:0)dense_31/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:€€€€€€€€€Аe
dense_31/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Аb
 dense_31/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ћ
dense_31/Tensordot/concat_1ConcatV2$dense_31/Tensordot/GatherV2:output:0#dense_31/Tensordot/Const_2:output:0)dense_31/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:®
dense_31/TensordotReshape#dense_31/Tensordot/MatMul:product:0$dense_31/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЕ
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0°
dense_31/BiasAddBiasAdddense_31/Tensordot:output:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€АЎ
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_56977range:output:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/56977* 
_output_shapes
:
ƒА*
dtype0Ї
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/56977* 
_output_shapes
:
ƒАО
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
ƒАС
addAddV2dense_31/BiasAdd:output:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:€€€€€€€€€ƒА\
IdentityIdentityadd:z:0^NoOp*
T0*-
_output_shapes
:€€€€€€€€€ƒАЂ
NoOpNoOp ^dense_31/BiasAdd/ReadVariableOp"^dense_31/Tensordot/ReadVariableOp^embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':€€€€€€€€€€€€€€€€€€А: : : 2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2F
!dense_31/Tensordot/ReadVariableOp!dense_31/Tensordot/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:\ X
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€А

_user_specified_namepatch"џL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*µ
serving_default°
E
input_4:
serving_default_input_4:0€€€€€€€€€аа<
dense_350
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:Ан
њ
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
layer-12
layer-13
layer-14
layer_with_weights-7
layer-15
layer-16
layer_with_weights-8
layer-17
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
ƒ
layer-0
layer-1
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_sequential
ш
$layer_with_weights-0
$layer-0
%layer-1
&layer-2
'layer-3
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_sequential
•
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
Ќ
4
projection
5position_embedding
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
ƒ
<axis
	=gamma
>beta
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
О
E_query_dense
F
_key_dense
G_value_dense
H_softmax
I_dropout_layer
J_output_dense
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
•
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
ƒ
Waxis
	Xgamma
Ybeta
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

`kernel
abias
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses"
_tf_keras_layer
Љ
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l_random_generator
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
ї

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
Љ
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{_random_generator
|__call__
*}&call_and_return_all_conditional_losses"
_tf_keras_layer
©
~	variables
trainable_variables
Аregularization_losses
Б	keras_api
В__call__
+Г&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
Д	variables
Еtrainable_variables
Жregularization_losses
З	keras_api
И__call__
+Й&call_and_return_all_conditional_losses"
_tf_keras_layer
√
Кkernel
	Лbias
М	variables
Нtrainable_variables
Оregularization_losses
П	keras_api
Р__call__
+С&call_and_return_all_conditional_losses"
_tf_keras_layer
√
Т	variables
Уtrainable_variables
Фregularization_losses
Х	keras_api
Ц_random_generator
Ч__call__
+Ш&call_and_return_all_conditional_losses"
_tf_keras_layer
√
Щkernel
	Ъbias
Ы	variables
Ьtrainable_variables
Эregularization_losses
Ю	keras_api
Я__call__
+†&call_and_return_all_conditional_losses"
_tf_keras_layer
¬
	°iter
Ґbeta_1
£beta_2

§decay
•learning_rate=mј>mЅXm¬Ym√`mƒam≈om∆pm«	Кm»	Лm…	Щm 	ЪmЋ	©mћ	™mЌ	Ђmќ	ђmѕ	≠m–	Ѓm—	ѓm“	∞m”	±m‘	≤m’	≥m÷=v„>vЎXvўYvЏ`vџav№ovЁpvё	Кvя	Лvа	Щvб	Ъvв	©vг	™vд	Ђvе	ђvж	≠vз	Ѓvи	ѓvй	∞vк	±vл	≤vм	≥vн"
	optimizer
ш
¶0
І1
®2
©3
™4
Ђ5
=6
>7
ђ8
≠9
Ѓ10
ѓ11
∞12
±13
≤14
≥15
X16
Y17
`18
a19
o20
p21
К22
Л23
Щ24
Ъ25"
trackable_list_wrapper
Ё
©0
™1
Ђ2
=3
>4
ђ5
≠6
Ѓ7
ѓ8
∞9
±10
≤11
≥12
X13
Y14
`15
a16
o17
p18
К19
Л20
Щ21
Ъ22"
trackable_list_wrapper
 "
trackable_list_wrapper
ѕ
іnon_trainable_variables
µlayers
ґmetrics
 Јlayer_regularization_losses
Єlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
к2з
'__inference_model_3_layer_call_fn_57308
'__inference_model_3_layer_call_fn_58017
'__inference_model_3_layer_call_fn_58078
'__inference_model_3_layer_call_fn_57808ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
÷2”
B__inference_model_3_layer_call_and_return_conditional_losses_58282
B__inference_model_3_layer_call_and_return_conditional_losses_58849
B__inference_model_3_layer_call_and_return_conditional_losses_57879
B__inference_model_3_layer_call_and_return_conditional_losses_57956ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ЋB»
 __inference__wrapped_model_56314input_4"Ш
С≤Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
-
єserving_default"
signature_map
Ђ
Ї	variables
їtrainable_variables
Љregularization_losses
љ	keras_api
Њ__call__
+њ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
ј	variables
Ѕtrainable_variables
¬regularization_losses
√	keras_api
ƒ__call__
+≈&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
Ж2Г
.__inference_Resize_Rescale_layer_call_fn_56343
.__inference_Resize_Rescale_layer_call_fn_58911
.__inference_Resize_Rescale_layer_call_fn_58916
.__inference_Resize_Rescale_layer_call_fn_56376ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
т2п
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_58926
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_58936
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56382
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56388ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
»
Ћ
_keep_axis
ћ_reduce_axis
Ќ_reduce_axis_mask
ќ_broadcast_shape
	¶mean
¶
adapt_mean
Іvariance
Іadapt_variance

®count
ѕ	keras_api"
_tf_keras_layer
√
–	variables
—trainable_variables
“regularization_losses
”	keras_api
‘_random_generator
’__call__
+÷&call_and_return_all_conditional_losses"
_tf_keras_layer
√
„	variables
Ўtrainable_variables
ўregularization_losses
Џ	keras_api
џ_random_generator
№__call__
+Ё&call_and_return_all_conditional_losses"
_tf_keras_layer
√
ё	variables
яtrainable_variables
аregularization_losses
б	keras_api
в_random_generator
г__call__
+д&call_and_return_all_conditional_losses"
_tf_keras_layer
8
¶0
І1
®2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
Т2П
1__inference_Data_Augmentation_layer_call_fn_56428
1__inference_Data_Augmentation_layer_call_fn_58945
1__inference_Data_Augmentation_layer_call_fn_58960
1__inference_Data_Augmentation_layer_call_fn_56881ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ю2ы
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_58971
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_59325
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56895
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56915ј
Ј≤≥
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
кnon_trainable_variables
лlayers
мmetrics
 нlayer_regularization_losses
оlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
”2–
)__inference_patches_7_layer_call_fn_59330Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jimages
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
о2л
D__inference_patches_7_layer_call_and_return_conditional_losses_59344Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
jimages
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
√
©kernel
	™bias
п	variables
рtrainable_variables
сregularization_losses
т	keras_api
у__call__
+ф&call_and_return_all_conditional_losses"
_tf_keras_layer
Љ
Ђ
embeddings
х	variables
цtrainable_variables
чregularization_losses
ш	keras_api
щ__call__
+ъ&call_and_return_all_conditional_losses"
_tf_keras_layer
8
©0
™1
Ђ2"
trackable_list_wrapper
8
©0
™1
Ђ2"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
ыnon_trainable_variables
ьlayers
эmetrics
 юlayer_regularization_losses
€layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
Ў2’
/__inference_patch_encoder_3_layer_call_fn_59355°
Ш≤Ф
FullArgSpec
argsЪ
jself
jpatch
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
у2р
J__inference_patch_encoder_3_layer_call_and_return_conditional_losses_59395°
Ш≤Ф
FullArgSpec
argsЪ
jself
jpatch
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
+:)А2layer_normalization_22/gamma
*:(А2layer_normalization_22/beta
.
=0
>1"
trackable_list_wrapper
.
=0
>1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
а2Ё
6__inference_layer_normalization_22_layer_call_fn_59404Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
ы2ш
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_59426Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
ц
Еpartial_output_shape
Жfull_output_shape
ђkernel
	≠bias
З	variables
Иtrainable_variables
Йregularization_losses
К	keras_api
Л__call__
+М&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
Нpartial_output_shape
Оfull_output_shape
Ѓkernel
	ѓbias
П	variables
Рtrainable_variables
Сregularization_losses
Т	keras_api
У__call__
+Ф&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
Хpartial_output_shape
Цfull_output_shape
∞kernel
	±bias
Ч	variables
Шtrainable_variables
Щregularization_losses
Ъ	keras_api
Ы__call__
+Ь&call_and_return_all_conditional_losses"
_tf_keras_layer
Ђ
Э	variables
Юtrainable_variables
Яregularization_losses
†	keras_api
°__call__
+Ґ&call_and_return_all_conditional_losses"
_tf_keras_layer
√
£	variables
§trainable_variables
•regularization_losses
¶	keras_api
І_random_generator
®__call__
+©&call_and_return_all_conditional_losses"
_tf_keras_layer
ц
™partial_output_shape
Ђfull_output_shape
≤kernel
	≥bias
ђ	variables
≠trainable_variables
Ѓregularization_losses
ѓ	keras_api
∞__call__
+±&call_and_return_all_conditional_losses"
_tf_keras_layer
`
ђ0
≠1
Ѓ2
ѓ3
∞4
±5
≤6
≥7"
trackable_list_wrapper
`
ђ0
≠1
Ѓ2
ѓ3
∞4
±5
≤6
≥7"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
≤non_trainable_variables
≥layers
іmetrics
 µlayer_regularization_losses
ґlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
ф2с
7__inference_multi_head_attention_11_layer_call_fn_59448
7__inference_multi_head_attention_11_layer_call_fn_59470ь
у≤п
FullArgSpece
args]ЪZ
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaultsЪ

 

 
p 
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
™2І
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_59505
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_59539ь
у≤п
FullArgSpece
args]ЪZ
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaultsЪ

 

 
p 
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Јnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
–2Ќ
&__inference_add_22_layer_call_fn_59545Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
л2и
A__inference_add_22_layer_call_and_return_conditional_losses_59551Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
 "
trackable_list_wrapper
+:)А2layer_normalization_23/gamma
*:(А2layer_normalization_23/beta
.
X0
Y1"
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Љnon_trainable_variables
љlayers
Њmetrics
 њlayer_regularization_losses
јlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
а2Ё
6__inference_layer_normalization_23_layer_call_fn_59560Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
ы2ш
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_59582Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
#:!
АА2dense_32/kernel
:А2dense_32/bias
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ѕnon_trainable_variables
¬layers
√metrics
 ƒlayer_regularization_losses
≈layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
“2ѕ
(__inference_dense_32_layer_call_fn_59591Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
н2к
C__inference_dense_32_layer_call_and_return_conditional_losses_59622Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
∆non_trainable_variables
«layers
»metrics
 …layer_regularization_losses
 layer_metrics
h	variables
itrainable_variables
jregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Т2П
*__inference_dropout_25_layer_call_fn_59627
*__inference_dropout_25_layer_call_fn_59632і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
»2≈
E__inference_dropout_25_layer_call_and_return_conditional_losses_59637
E__inference_dropout_25_layer_call_and_return_conditional_losses_59649і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
#:!
АА2dense_33/kernel
:А2dense_33/bias
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
≤
Ћnon_trainable_variables
ћlayers
Ќmetrics
 ќlayer_regularization_losses
ѕlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
“2ѕ
(__inference_dense_33_layer_call_fn_59658Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
н2к
C__inference_dense_33_layer_call_and_return_conditional_losses_59689Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
≤
–non_trainable_variables
—layers
“metrics
 ”layer_regularization_losses
‘layer_metrics
w	variables
xtrainable_variables
yregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Т2П
*__inference_dropout_26_layer_call_fn_59694
*__inference_dropout_26_layer_call_fn_59699і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
»2≈
E__inference_dropout_26_layer_call_and_return_conditional_losses_59704
E__inference_dropout_26_layer_call_and_return_conditional_losses_59716і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
ґ
’non_trainable_variables
÷layers
„metrics
 Ўlayer_regularization_losses
ўlayer_metrics
~	variables
trainable_variables
Аregularization_losses
В__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
_generic_user_object
–2Ќ
&__inference_add_23_layer_call_fn_59722Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
л2и
A__inference_add_23_layer_call_and_return_conditional_losses_59728Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Џnon_trainable_variables
џlayers
№metrics
 Ёlayer_regularization_losses
ёlayer_metrics
Д	variables
Еtrainable_variables
Жregularization_losses
И__call__
+Й&call_and_return_all_conditional_losses
'Й"call_and_return_conditional_losses"
_generic_user_object
”2–
)__inference_flatten_3_layer_call_fn_59733Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
о2л
D__inference_flatten_3_layer_call_and_return_conditional_losses_59739Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
$:"АƒА2dense_34/kernel
:А2dense_34/bias
0
К0
Л1"
trackable_list_wrapper
0
К0
Л1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
яnon_trainable_variables
аlayers
бmetrics
 вlayer_regularization_losses
гlayer_metrics
М	variables
Нtrainable_variables
Оregularization_losses
Р__call__
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
“2ѕ
(__inference_dense_34_layer_call_fn_59748Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
н2к
C__inference_dense_34_layer_call_and_return_conditional_losses_59759Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
дnon_trainable_variables
еlayers
жmetrics
 зlayer_regularization_losses
иlayer_metrics
Т	variables
Уtrainable_variables
Фregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Т2П
*__inference_dropout_27_layer_call_fn_59764
*__inference_dropout_27_layer_call_fn_59769і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
»2≈
E__inference_dropout_27_layer_call_and_return_conditional_losses_59774
E__inference_dropout_27_layer_call_and_return_conditional_losses_59786і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
": 	А2dense_35/kernel
:2dense_35/bias
0
Щ0
Ъ1"
trackable_list_wrapper
0
Щ0
Ъ1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
Ы	variables
Ьtrainable_variables
Эregularization_losses
Я__call__
+†&call_and_return_all_conditional_losses
'†"call_and_return_conditional_losses"
_generic_user_object
“2ѕ
(__inference_dense_35_layer_call_fn_59795Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
н2к
C__inference_dense_35_layer_call_and_return_conditional_losses_59806Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 :2normalization_3/mean
$:"2normalization_3/variance
:	 2normalization_3/count
3:1
АА2patch_encoder_3/dense_31/kernel
,:*А2patch_encoder_3/dense_31/bias
::8
ƒА2&patch_encoder_3/embedding_3/embeddings
<::АА2$multi_head_attention_11/query/kernel
5:3	А2"multi_head_attention_11/query/bias
::8АА2"multi_head_attention_11/key/kernel
3:1	А2 multi_head_attention_11/key/bias
<::АА2$multi_head_attention_11/value/kernel
5:3	А2"multi_head_attention_11/value/bias
G:EАА2/multi_head_attention_11/attention_output/kernel
<::А2-multi_head_attention_11/attention_output/bias
8
¶0
І1
®2"
trackable_list_wrapper
¶
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
13
14
15
16
17"
trackable_list_wrapper
0
о0
п1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 B«
#__inference_signature_wrapper_58906input_4"Ф
Н≤Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
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
Є
рnon_trainable_variables
сlayers
тmetrics
 уlayer_regularization_losses
фlayer_metrics
Ї	variables
їtrainable_variables
Љregularization_losses
Њ__call__
+њ&call_and_return_all_conditional_losses
'њ"call_and_return_conditional_losses"
_generic_user_object
‘2—
*__inference_resizing_3_layer_call_fn_59811Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
п2м
E__inference_resizing_3_layer_call_and_return_conditional_losses_59817Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
хnon_trainable_variables
цlayers
чmetrics
 шlayer_regularization_losses
щlayer_metrics
ј	variables
Ѕtrainable_variables
¬regularization_losses
ƒ__call__
+≈&call_and_return_all_conditional_losses
'≈"call_and_return_conditional_losses"
_generic_user_object
’2“
+__inference_rescaling_3_layer_call_fn_59822Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
р2н
F__inference_rescaling_3_layer_call_and_return_conditional_losses_59830Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
 "
trackable_list_wrapper
.
0
1"
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
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
–	variables
—trainable_variables
“regularization_losses
’__call__
+÷&call_and_return_all_conditional_losses
'÷"call_and_return_conditional_losses"
_generic_user_object
/
€
_generator"
_generic_user_object
Ш2Х
-__inference_random_flip_3_layer_call_fn_59835
-__inference_random_flip_3_layer_call_fn_59842і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ќ2Ћ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_59846
H__inference_random_flip_3_layer_call_and_return_conditional_losses_59957і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Аnon_trainable_variables
Бlayers
Вmetrics
 Гlayer_regularization_losses
Дlayer_metrics
„	variables
Ўtrainable_variables
ўregularization_losses
№__call__
+Ё&call_and_return_all_conditional_losses
'Ё"call_and_return_conditional_losses"
_generic_user_object
/
Е
_generator"
_generic_user_object
†2Э
1__inference_random_rotation_3_layer_call_fn_59962
1__inference_random_rotation_3_layer_call_fn_59969і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
÷2”
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_59973
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_60091і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
ё	variables
яtrainable_variables
аregularization_losses
г__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
/
Л
_generator"
_generic_user_object
Ш2Х
-__inference_random_zoom_3_layer_call_fn_60096
-__inference_random_zoom_3_layer_call_fn_60103і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
ќ2Ћ
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_60107
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_60233і
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
8
¶0
І1
®2"
trackable_list_wrapper
<
$0
%1
&2
'3"
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
0
©0
™1"
trackable_list_wrapper
0
©0
™1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Мnon_trainable_variables
Нlayers
Оmetrics
 Пlayer_regularization_losses
Рlayer_metrics
п	variables
рtrainable_variables
сregularization_losses
у__call__
+ф&call_and_return_all_conditional_losses
'ф"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
(
Ђ0"
trackable_list_wrapper
(
Ђ0"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
х	variables
цtrainable_variables
чregularization_losses
щ__call__
+ъ&call_and_return_all_conditional_losses
'ъ"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
 "
trackable_list_wrapper
.
40
51"
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
0
ђ0
≠1"
trackable_list_wrapper
0
ђ0
≠1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Цnon_trainable_variables
Чlayers
Шmetrics
 Щlayer_regularization_losses
Ъlayer_metrics
З	variables
Иtrainable_variables
Йregularization_losses
Л__call__
+М&call_and_return_all_conditional_losses
'М"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
Ѓ0
ѓ1"
trackable_list_wrapper
0
Ѓ0
ѓ1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
Ыnon_trainable_variables
Ьlayers
Эmetrics
 Юlayer_regularization_losses
Яlayer_metrics
П	variables
Рtrainable_variables
Сregularization_losses
У__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
∞0
±1"
trackable_list_wrapper
0
∞0
±1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
†non_trainable_variables
°layers
Ґmetrics
 £layer_regularization_losses
§layer_metrics
Ч	variables
Шtrainable_variables
Щregularization_losses
Ы__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
•non_trainable_variables
¶layers
Іmetrics
 ®layer_regularization_losses
©layer_metrics
Э	variables
Юtrainable_variables
Яregularization_losses
°__call__
+Ґ&call_and_return_all_conditional_losses
'Ґ"call_and_return_conditional_losses"
_generic_user_object
µ2≤ѓ
¶≤Ґ
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
µ2≤ѓ
¶≤Ґ
FullArgSpec%
argsЪ
jself
jinputs
jmask
varargs
 
varkw
 
defaultsҐ

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Є
™non_trainable_variables
Ђlayers
ђmetrics
 ≠layer_regularization_losses
Ѓlayer_metrics
£	variables
§trainable_variables
•regularization_losses
®__call__
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Ї2Јі
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
Ї2Јі
Ђ≤І
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaults™ 
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
≤0
≥1"
trackable_list_wrapper
0
≤0
≥1"
trackable_list_wrapper
 "
trackable_list_wrapper
Є
ѓnon_trainable_variables
∞layers
±metrics
 ≤layer_regularization_losses
≥layer_metrics
ђ	variables
≠trainable_variables
Ѓregularization_losses
∞__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses"
_generic_user_object
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
®2•Ґ
Щ≤Х
FullArgSpec
argsЪ
jself
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
annotations™ *
 
 "
trackable_list_wrapper
J
E0
F1
G2
H3
I4
J5"
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
R

іtotal

µcount
ґ	variables
Ј	keras_api"
_tf_keras_metric
c

Єtotal

єcount
Ї
_fn_kwargs
ї	variables
Љ	keras_api"
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
/
љ
_state_var"
_generic_user_object
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
/
Њ
_state_var"
_generic_user_object
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
/
њ
_state_var"
_generic_user_object
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
:  (2total
:  (2count
0
і0
µ1"
trackable_list_wrapper
.
ґ	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Є0
є1"
trackable_list_wrapper
.
ї	variables"
_generic_user_object
<::	20model_3/Data_Augmentation/random_flip_3/StateVar
@:>	24model_3/Data_Augmentation/random_rotation_3/StateVar
<::	20model_3/Data_Augmentation/random_zoom_3/StateVar
0:.А2#Adam/layer_normalization_22/gamma/m
/:-А2"Adam/layer_normalization_22/beta/m
0:.А2#Adam/layer_normalization_23/gamma/m
/:-А2"Adam/layer_normalization_23/beta/m
(:&
АА2Adam/dense_32/kernel/m
!:А2Adam/dense_32/bias/m
(:&
АА2Adam/dense_33/kernel/m
!:А2Adam/dense_33/bias/m
):'АƒА2Adam/dense_34/kernel/m
!:А2Adam/dense_34/bias/m
':%	А2Adam/dense_35/kernel/m
 :2Adam/dense_35/bias/m
8:6
АА2&Adam/patch_encoder_3/dense_31/kernel/m
1:/А2$Adam/patch_encoder_3/dense_31/bias/m
?:=
ƒА2-Adam/patch_encoder_3/embedding_3/embeddings/m
A:?АА2+Adam/multi_head_attention_11/query/kernel/m
::8	А2)Adam/multi_head_attention_11/query/bias/m
?:=АА2)Adam/multi_head_attention_11/key/kernel/m
8:6	А2'Adam/multi_head_attention_11/key/bias/m
A:?АА2+Adam/multi_head_attention_11/value/kernel/m
::8	А2)Adam/multi_head_attention_11/value/bias/m
L:JАА26Adam/multi_head_attention_11/attention_output/kernel/m
A:?А24Adam/multi_head_attention_11/attention_output/bias/m
0:.А2#Adam/layer_normalization_22/gamma/v
/:-А2"Adam/layer_normalization_22/beta/v
0:.А2#Adam/layer_normalization_23/gamma/v
/:-А2"Adam/layer_normalization_23/beta/v
(:&
АА2Adam/dense_32/kernel/v
!:А2Adam/dense_32/bias/v
(:&
АА2Adam/dense_33/kernel/v
!:А2Adam/dense_33/bias/v
):'АƒА2Adam/dense_34/kernel/v
!:А2Adam/dense_34/bias/v
':%	А2Adam/dense_35/kernel/v
 :2Adam/dense_35/bias/v
8:6
АА2&Adam/patch_encoder_3/dense_31/kernel/v
1:/А2$Adam/patch_encoder_3/dense_31/bias/v
?:=
ƒА2-Adam/patch_encoder_3/embedding_3/embeddings/v
A:?АА2+Adam/multi_head_attention_11/query/kernel/v
::8	А2)Adam/multi_head_attention_11/query/bias/v
?:=АА2)Adam/multi_head_attention_11/key/kernel/v
8:6	А2'Adam/multi_head_attention_11/key/bias/v
A:?АА2+Adam/multi_head_attention_11/value/kernel/v
::8	А2)Adam/multi_head_attention_11/value/bias/v
L:JАА26Adam/multi_head_attention_11/attention_output/kernel/v
A:?А24Adam/multi_head_attention_11/attention_output/bias/v
	J
Const
J	
Const_1Џ
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56895ЙопPҐM
FҐC
9К6
normalization_3_input€€€€€€€€€аа
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€аа
Ъ а
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56915П
опљЊњPҐM
FҐC
9К6
normalization_3_input€€€€€€€€€аа
p

 
™ "/Ґ,
%К"
0€€€€€€€€€аа
Ъ  
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_58971zопAҐ>
7Ґ4
*К'
inputs€€€€€€€€€аа
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€аа
Ъ —
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_59325А
опљЊњAҐ>
7Ґ4
*К'
inputs€€€€€€€€€аа
p

 
™ "/Ґ,
%К"
0€€€€€€€€€аа
Ъ ±
1__inference_Data_Augmentation_layer_call_fn_56428|опPҐM
FҐC
9К6
normalization_3_input€€€€€€€€€аа
p 

 
™ ""К€€€€€€€€€ааЄ
1__inference_Data_Augmentation_layer_call_fn_56881В
опљЊњPҐM
FҐC
9К6
normalization_3_input€€€€€€€€€аа
p

 
™ ""К€€€€€€€€€ааҐ
1__inference_Data_Augmentation_layer_call_fn_58945mопAҐ>
7Ґ4
*К'
inputs€€€€€€€€€аа
p 

 
™ ""К€€€€€€€€€аа®
1__inference_Data_Augmentation_layer_call_fn_58960s
опљЊњAҐ>
7Ґ4
*К'
inputs€€€€€€€€€аа
p

 
™ ""К€€€€€€€€€ааЋ
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56382~KҐH
AҐ>
4К1
resizing_3_input€€€€€€€€€аа
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€аа
Ъ Ћ
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56388~KҐH
AҐ>
4К1
resizing_3_input€€€€€€€€€аа
p

 
™ "/Ґ,
%К"
0€€€€€€€€€аа
Ъ Ѕ
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_58926tAҐ>
7Ґ4
*К'
inputs€€€€€€€€€аа
p 

 
™ "/Ґ,
%К"
0€€€€€€€€€аа
Ъ Ѕ
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_58936tAҐ>
7Ґ4
*К'
inputs€€€€€€€€€аа
p

 
™ "/Ґ,
%К"
0€€€€€€€€€аа
Ъ £
.__inference_Resize_Rescale_layer_call_fn_56343qKҐH
AҐ>
4К1
resizing_3_input€€€€€€€€€аа
p 

 
™ ""К€€€€€€€€€аа£
.__inference_Resize_Rescale_layer_call_fn_56376qKҐH
AҐ>
4К1
resizing_3_input€€€€€€€€€аа
p

 
™ ""К€€€€€€€€€ааЩ
.__inference_Resize_Rescale_layer_call_fn_58911gAҐ>
7Ґ4
*К'
inputs€€€€€€€€€аа
p 

 
™ ""К€€€€€€€€€ааЩ
.__inference_Resize_Rescale_layer_call_fn_58916gAҐ>
7Ґ4
*К'
inputs€€€€€€€€€аа
p

 
™ ""К€€€€€€€€€аа¬
 __inference__wrapped_model_56314Э*оп©™Ђ=>ђ≠Ѓѓ∞±≤≥XY`aopКЛЩЪ:Ґ7
0Ґ-
+К(
input_4€€€€€€€€€аа
™ "3™0
.
dense_35"К
dense_35€€€€€€€€€џ
A__inference_add_22_layer_call_and_return_conditional_losses_59551ХfҐc
\ҐY
WЪT
(К%
inputs/0€€€€€€€€€ƒА
(К%
inputs/1€€€€€€€€€ƒА
™ "+Ґ(
!К
0€€€€€€€€€ƒА
Ъ ≥
&__inference_add_22_layer_call_fn_59545ИfҐc
\ҐY
WЪT
(К%
inputs/0€€€€€€€€€ƒА
(К%
inputs/1€€€€€€€€€ƒА
™ "К€€€€€€€€€ƒАџ
A__inference_add_23_layer_call_and_return_conditional_losses_59728ХfҐc
\ҐY
WЪT
(К%
inputs/0€€€€€€€€€ƒА
(К%
inputs/1€€€€€€€€€ƒА
™ "+Ґ(
!К
0€€€€€€€€€ƒА
Ъ ≥
&__inference_add_23_layer_call_fn_59722ИfҐc
\ҐY
WЪT
(К%
inputs/0€€€€€€€€€ƒА
(К%
inputs/1€€€€€€€€€ƒА
™ "К€€€€€€€€€ƒАѓ
C__inference_dense_32_layer_call_and_return_conditional_losses_59622h`a5Ґ2
+Ґ(
&К#
inputs€€€€€€€€€ƒА
™ "+Ґ(
!К
0€€€€€€€€€ƒА
Ъ З
(__inference_dense_32_layer_call_fn_59591[`a5Ґ2
+Ґ(
&К#
inputs€€€€€€€€€ƒА
™ "К€€€€€€€€€ƒАѓ
C__inference_dense_33_layer_call_and_return_conditional_losses_59689hop5Ґ2
+Ґ(
&К#
inputs€€€€€€€€€ƒА
™ "+Ґ(
!К
0€€€€€€€€€ƒА
Ъ З
(__inference_dense_33_layer_call_fn_59658[op5Ґ2
+Ґ(
&К#
inputs€€€€€€€€€ƒА
™ "К€€€€€€€€€ƒА®
C__inference_dense_34_layer_call_and_return_conditional_losses_59759aКЛ1Ґ.
'Ґ$
"К
inputs€€€€€€€€€Аƒ
™ "&Ґ#
К
0€€€€€€€€€А
Ъ А
(__inference_dense_34_layer_call_fn_59748TКЛ1Ґ.
'Ґ$
"К
inputs€€€€€€€€€Аƒ
™ "К€€€€€€€€€А¶
C__inference_dense_35_layer_call_and_return_conditional_losses_59806_ЩЪ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "%Ґ"
К
0€€€€€€€€€
Ъ ~
(__inference_dense_35_layer_call_fn_59795RЩЪ0Ґ-
&Ґ#
!К
inputs€€€€€€€€€А
™ "К€€€€€€€€€±
E__inference_dropout_25_layer_call_and_return_conditional_losses_59637h9Ґ6
/Ґ,
&К#
inputs€€€€€€€€€ƒА
p 
™ "+Ґ(
!К
0€€€€€€€€€ƒА
Ъ ±
E__inference_dropout_25_layer_call_and_return_conditional_losses_59649h9Ґ6
/Ґ,
&К#
inputs€€€€€€€€€ƒА
p
™ "+Ґ(
!К
0€€€€€€€€€ƒА
Ъ Й
*__inference_dropout_25_layer_call_fn_59627[9Ґ6
/Ґ,
&К#
inputs€€€€€€€€€ƒА
p 
™ "К€€€€€€€€€ƒАЙ
*__inference_dropout_25_layer_call_fn_59632[9Ґ6
/Ґ,
&К#
inputs€€€€€€€€€ƒА
p
™ "К€€€€€€€€€ƒА±
E__inference_dropout_26_layer_call_and_return_conditional_losses_59704h9Ґ6
/Ґ,
&К#
inputs€€€€€€€€€ƒА
p 
™ "+Ґ(
!К
0€€€€€€€€€ƒА
Ъ ±
E__inference_dropout_26_layer_call_and_return_conditional_losses_59716h9Ґ6
/Ґ,
&К#
inputs€€€€€€€€€ƒА
p
™ "+Ґ(
!К
0€€€€€€€€€ƒА
Ъ Й
*__inference_dropout_26_layer_call_fn_59694[9Ґ6
/Ґ,
&К#
inputs€€€€€€€€€ƒА
p 
™ "К€€€€€€€€€ƒАЙ
*__inference_dropout_26_layer_call_fn_59699[9Ґ6
/Ґ,
&К#
inputs€€€€€€€€€ƒА
p
™ "К€€€€€€€€€ƒАІ
E__inference_dropout_27_layer_call_and_return_conditional_losses_59774^4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p 
™ "&Ґ#
К
0€€€€€€€€€А
Ъ І
E__inference_dropout_27_layer_call_and_return_conditional_losses_59786^4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p
™ "&Ґ#
К
0€€€€€€€€€А
Ъ 
*__inference_dropout_27_layer_call_fn_59764Q4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p 
™ "К€€€€€€€€€А
*__inference_dropout_27_layer_call_fn_59769Q4Ґ1
*Ґ'
!К
inputs€€€€€€€€€А
p
™ "К€€€€€€€€€А®
D__inference_flatten_3_layer_call_and_return_conditional_losses_59739`5Ґ2
+Ґ(
&К#
inputs€€€€€€€€€ƒА
™ "'Ґ$
К
0€€€€€€€€€Аƒ
Ъ А
)__inference_flatten_3_layer_call_fn_59733S5Ґ2
+Ґ(
&К#
inputs€€€€€€€€€ƒА
™ "К€€€€€€€€€Аƒљ
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_59426h=>5Ґ2
+Ґ(
&К#
inputs€€€€€€€€€ƒА
™ "+Ґ(
!К
0€€€€€€€€€ƒА
Ъ Х
6__inference_layer_normalization_22_layer_call_fn_59404[=>5Ґ2
+Ґ(
&К#
inputs€€€€€€€€€ƒА
™ "К€€€€€€€€€ƒАљ
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_59582hXY5Ґ2
+Ґ(
&К#
inputs€€€€€€€€€ƒА
™ "+Ґ(
!К
0€€€€€€€€€ƒА
Ъ Х
6__inference_layer_normalization_23_layer_call_fn_59560[XY5Ґ2
+Ґ(
&К#
inputs€€€€€€€€€ƒА
™ "К€€€€€€€€€ƒАё
B__inference_model_3_layer_call_and_return_conditional_losses_57879Ч*оп©™Ђ=>ђ≠Ѓѓ∞±≤≥XY`aopКЛЩЪBҐ?
8Ґ5
+К(
input_4€€€€€€€€€аа
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ д
B__inference_model_3_layer_call_and_return_conditional_losses_57956Э0опљЊњ©™Ђ=>ђ≠Ѓѓ∞±≤≥XY`aopКЛЩЪBҐ?
8Ґ5
+К(
input_4€€€€€€€€€аа
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ Ё
B__inference_model_3_layer_call_and_return_conditional_losses_58282Ц*оп©™Ђ=>ђ≠Ѓѓ∞±≤≥XY`aopКЛЩЪAҐ>
7Ґ4
*К'
inputs€€€€€€€€€аа
p 

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ г
B__inference_model_3_layer_call_and_return_conditional_losses_58849Ь0опљЊњ©™Ђ=>ђ≠Ѓѓ∞±≤≥XY`aopКЛЩЪAҐ>
7Ґ4
*К'
inputs€€€€€€€€€аа
p

 
™ "%Ґ"
К
0€€€€€€€€€
Ъ ґ
'__inference_model_3_layer_call_fn_57308К*оп©™Ђ=>ђ≠Ѓѓ∞±≤≥XY`aopКЛЩЪBҐ?
8Ґ5
+К(
input_4€€€€€€€€€аа
p 

 
™ "К€€€€€€€€€Љ
'__inference_model_3_layer_call_fn_57808Р0опљЊњ©™Ђ=>ђ≠Ѓѓ∞±≤≥XY`aopКЛЩЪBҐ?
8Ґ5
+К(
input_4€€€€€€€€€аа
p

 
™ "К€€€€€€€€€µ
'__inference_model_3_layer_call_fn_58017Й*оп©™Ђ=>ђ≠Ѓѓ∞±≤≥XY`aopКЛЩЪAҐ>
7Ґ4
*К'
inputs€€€€€€€€€аа
p 

 
™ "К€€€€€€€€€ї
'__inference_model_3_layer_call_fn_58078П0опљЊњ©™Ђ=>ђ≠Ѓѓ∞±≤≥XY`aopКЛЩЪAҐ>
7Ґ4
*К'
inputs€€€€€€€€€аа
p

 
™ "К€€€€€€€€€Г
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_59505ђђ≠Ѓѓ∞±≤≥kҐh
aҐ^
%К"
query€€€€€€€€€ƒА
%К"
value€€€€€€€€€ƒА

 

 
p 
p 
™ "+Ґ(
!К
0€€€€€€€€€ƒА
Ъ Г
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_59539ђђ≠Ѓѓ∞±≤≥kҐh
aҐ^
%К"
query€€€€€€€€€ƒА
%К"
value€€€€€€€€€ƒА

 

 
p 
p
™ "+Ґ(
!К
0€€€€€€€€€ƒА
Ъ џ
7__inference_multi_head_attention_11_layer_call_fn_59448Яђ≠Ѓѓ∞±≤≥kҐh
aҐ^
%К"
query€€€€€€€€€ƒА
%К"
value€€€€€€€€€ƒА

 

 
p 
p 
™ "К€€€€€€€€€ƒАџ
7__inference_multi_head_attention_11_layer_call_fn_59470Яђ≠Ѓѓ∞±≤≥kҐh
aҐ^
%К"
query€€€€€€€€€ƒА
%К"
value€€€€€€€€€ƒА

 

 
p 
p
™ "К€€€€€€€€€ƒАЅ
J__inference_patch_encoder_3_layer_call_and_return_conditional_losses_59395s©™Ђ<Ґ9
2Ґ/
-К*
patch€€€€€€€€€€€€€€€€€€А
™ "+Ґ(
!К
0€€€€€€€€€ƒА
Ъ Щ
/__inference_patch_encoder_3_layer_call_fn_59355f©™Ђ<Ґ9
2Ґ/
-К*
patch€€€€€€€€€€€€€€€€€€А
™ "К€€€€€€€€€ƒАЄ
D__inference_patches_7_layer_call_and_return_conditional_losses_59344p9Ґ6
/Ґ,
*К'
images€€€€€€€€€аа
™ "3Ґ0
)К&
0€€€€€€€€€€€€€€€€€€А
Ъ Р
)__inference_patches_7_layer_call_fn_59330c9Ґ6
/Ґ,
*К'
images€€€€€€€€€аа
™ "&К#€€€€€€€€€€€€€€€€€€АЉ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_59846p=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аа
p 
™ "/Ґ,
%К"
0€€€€€€€€€аа
Ъ ј
H__inference_random_flip_3_layer_call_and_return_conditional_losses_59957tљ=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аа
p
™ "/Ґ,
%К"
0€€€€€€€€€аа
Ъ Ф
-__inference_random_flip_3_layer_call_fn_59835c=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аа
p 
™ ""К€€€€€€€€€ааШ
-__inference_random_flip_3_layer_call_fn_59842gљ=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аа
p
™ ""К€€€€€€€€€аај
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_59973p=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аа
p 
™ "/Ґ,
%К"
0€€€€€€€€€аа
Ъ ƒ
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_60091tЊ=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аа
p
™ "/Ґ,
%К"
0€€€€€€€€€аа
Ъ Ш
1__inference_random_rotation_3_layer_call_fn_59962c=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аа
p 
™ ""К€€€€€€€€€ааЬ
1__inference_random_rotation_3_layer_call_fn_59969gЊ=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аа
p
™ ""К€€€€€€€€€ааЉ
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_60107p=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аа
p 
™ "/Ґ,
%К"
0€€€€€€€€€аа
Ъ ј
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_60233tњ=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аа
p
™ "/Ґ,
%К"
0€€€€€€€€€аа
Ъ Ф
-__inference_random_zoom_3_layer_call_fn_60096c=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аа
p 
™ ""К€€€€€€€€€ааШ
-__inference_random_zoom_3_layer_call_fn_60103gњ=Ґ:
3Ґ0
*К'
inputs€€€€€€€€€аа
p
™ ""К€€€€€€€€€ааґ
F__inference_rescaling_3_layer_call_and_return_conditional_losses_59830l9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аа
™ "/Ґ,
%К"
0€€€€€€€€€аа
Ъ О
+__inference_rescaling_3_layer_call_fn_59822_9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аа
™ ""К€€€€€€€€€ааµ
E__inference_resizing_3_layer_call_and_return_conditional_losses_59817l9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аа
™ "/Ґ,
%К"
0€€€€€€€€€аа
Ъ Н
*__inference_resizing_3_layer_call_fn_59811_9Ґ6
/Ґ,
*К'
inputs€€€€€€€€€аа
™ ""К€€€€€€€€€аа–
#__inference_signature_wrapper_58906®*оп©™Ђ=>ђ≠Ѓѓ∞±≤≥XY`aopКЛЩЪEҐB
Ґ 
;™8
6
input_4+К(
input_4€€€€€€€€€аа"3™0
.
dense_35"К
dense_35€€€€€€€€€