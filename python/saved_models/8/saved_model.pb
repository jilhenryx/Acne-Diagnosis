Όμ-
 ξ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
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
Ώ
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
­
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

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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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

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
dtypetype
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

ResizeBilinear
images"T
size
resized_images"
Ttype:
2	"
align_cornersbool( "
half_pixel_centersbool( 
₯
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
list(type)(0
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

2	
Α
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
executor_typestring ¨
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
φ
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-0-g3f878cff5b68²ά)

layer_normalization_22/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_22/gamma

0layer_normalization_22/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_22/gamma*
_output_shapes	
:*
dtype0

layer_normalization_22/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_22/beta

/layer_normalization_22/beta/Read/ReadVariableOpReadVariableOplayer_normalization_22/beta*
_output_shapes	
:*
dtype0

layer_normalization_23/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namelayer_normalization_23/gamma

0layer_normalization_23/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_23/gamma*
_output_shapes	
:*
dtype0

layer_normalization_23/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namelayer_normalization_23/beta

/layer_normalization_23/beta/Read/ReadVariableOpReadVariableOplayer_normalization_23/beta*
_output_shapes	
:*
dtype0
|
dense_32/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_32/kernel
u
#dense_32/kernel/Read/ReadVariableOpReadVariableOpdense_32/kernel* 
_output_shapes
:
*
dtype0
s
dense_32/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_32/bias
l
!dense_32/bias/Read/ReadVariableOpReadVariableOpdense_32/bias*
_output_shapes	
:*
dtype0
|
dense_33/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
* 
shared_namedense_33/kernel
u
#dense_33/kernel/Read/ReadVariableOpReadVariableOpdense_33/kernel* 
_output_shapes
:
*
dtype0
s
dense_33/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_33/bias
l
!dense_33/bias/Read/ReadVariableOpReadVariableOpdense_33/bias*
_output_shapes	
:*
dtype0
}
dense_34/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:Δ* 
shared_namedense_34/kernel
v
#dense_34/kernel/Read/ReadVariableOpReadVariableOpdense_34/kernel*!
_output_shapes
:Δ*
dtype0
s
dense_34/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_34/bias
l
!dense_34/bias/Read/ReadVariableOpReadVariableOpdense_34/bias*
_output_shapes	
:*
dtype0
{
dense_35/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	* 
shared_namedense_35/kernel
t
#dense_35/kernel/Read/ReadVariableOpReadVariableOpdense_35/kernel*
_output_shapes
:	*
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

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

normalization_3/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namenormalization_3/variance

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

patch_encoder_3/dense_31/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*0
shared_name!patch_encoder_3/dense_31/kernel

3patch_encoder_3/dense_31/kernel/Read/ReadVariableOpReadVariableOppatch_encoder_3/dense_31/kernel* 
_output_shapes
:
*
dtype0

patch_encoder_3/dense_31/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_namepatch_encoder_3/dense_31/bias

1patch_encoder_3/dense_31/bias/Read/ReadVariableOpReadVariableOppatch_encoder_3/dense_31/bias*
_output_shapes	
:*
dtype0
ͺ
&patch_encoder_3/embedding_3/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Δ*7
shared_name(&patch_encoder_3/embedding_3/embeddings
£
:patch_encoder_3/embedding_3/embeddings/Read/ReadVariableOpReadVariableOp&patch_encoder_3/embedding_3/embeddings* 
_output_shapes
:
Δ*
dtype0
ͺ
$multi_head_attention_11/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_11/query/kernel
£
8multi_head_attention_11/query/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_11/query/kernel*$
_output_shapes
:*
dtype0
‘
"multi_head_attention_11/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"multi_head_attention_11/query/bias

6multi_head_attention_11/query/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_11/query/bias*
_output_shapes
:	*
dtype0
¦
"multi_head_attention_11/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"multi_head_attention_11/key/kernel

6multi_head_attention_11/key/kernel/Read/ReadVariableOpReadVariableOp"multi_head_attention_11/key/kernel*$
_output_shapes
:*
dtype0

 multi_head_attention_11/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*1
shared_name" multi_head_attention_11/key/bias

4multi_head_attention_11/key/bias/Read/ReadVariableOpReadVariableOp multi_head_attention_11/key/bias*
_output_shapes
:	*
dtype0
ͺ
$multi_head_attention_11/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$multi_head_attention_11/value/kernel
£
8multi_head_attention_11/value/kernel/Read/ReadVariableOpReadVariableOp$multi_head_attention_11/value/kernel*$
_output_shapes
:*
dtype0
‘
"multi_head_attention_11/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"multi_head_attention_11/value/bias

6multi_head_attention_11/value/bias/Read/ReadVariableOpReadVariableOp"multi_head_attention_11/value/bias*
_output_shapes
:	*
dtype0
ΐ
/multi_head_attention_11/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*@
shared_name1/multi_head_attention_11/attention_output/kernel
Ή
Cmulti_head_attention_11/attention_output/kernel/Read/ReadVariableOpReadVariableOp/multi_head_attention_11/attention_output/kernel*$
_output_shapes
:*
dtype0
³
-multi_head_attention_11/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*>
shared_name/-multi_head_attention_11/attention_output/bias
¬
Amulti_head_attention_11/attention_output/bias/Read/ReadVariableOpReadVariableOp-multi_head_attention_11/attention_output/bias*
_output_shapes	
:*
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
Έ
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
ΐ
4model_3/Data_Augmentation/random_rotation_3/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*E
shared_name64model_3/Data_Augmentation/random_rotation_3/StateVar
Ή
Hmodel_3/Data_Augmentation/random_rotation_3/StateVar/Read/ReadVariableOpReadVariableOp4model_3/Data_Augmentation/random_rotation_3/StateVar*
_output_shapes
:*
dtype0	
Έ
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

#Adam/layer_normalization_22/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/layer_normalization_22/gamma/m

7Adam/layer_normalization_22/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_22/gamma/m*
_output_shapes	
:*
dtype0

"Adam/layer_normalization_22/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/layer_normalization_22/beta/m

6Adam/layer_normalization_22/beta/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_22/beta/m*
_output_shapes	
:*
dtype0

#Adam/layer_normalization_23/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/layer_normalization_23/gamma/m

7Adam/layer_normalization_23/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_23/gamma/m*
_output_shapes	
:*
dtype0

"Adam/layer_normalization_23/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/layer_normalization_23/beta/m

6Adam/layer_normalization_23/beta/m/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_23/beta/m*
_output_shapes	
:*
dtype0

Adam/dense_32/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_32/kernel/m

*Adam/dense_32/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_32/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_32/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_32/bias/m
z
(Adam/dense_32/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_32/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_33/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_33/kernel/m

*Adam/dense_33/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_33/kernel/m* 
_output_shapes
:
*
dtype0

Adam/dense_33/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_33/bias/m
z
(Adam/dense_33/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_33/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_34/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Δ*'
shared_nameAdam/dense_34/kernel/m

*Adam/dense_34/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_34/kernel/m*!
_output_shapes
:Δ*
dtype0

Adam/dense_34/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_34/bias/m
z
(Adam/dense_34/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_34/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_35/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_35/kernel/m

*Adam/dense_35/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_35/kernel/m*
_output_shapes
:	*
dtype0

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
ͺ
&Adam/patch_encoder_3/dense_31/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*7
shared_name(&Adam/patch_encoder_3/dense_31/kernel/m
£
:Adam/patch_encoder_3/dense_31/kernel/m/Read/ReadVariableOpReadVariableOp&Adam/patch_encoder_3/dense_31/kernel/m* 
_output_shapes
:
*
dtype0
‘
$Adam/patch_encoder_3/dense_31/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/patch_encoder_3/dense_31/bias/m

8Adam/patch_encoder_3/dense_31/bias/m/Read/ReadVariableOpReadVariableOp$Adam/patch_encoder_3/dense_31/bias/m*
_output_shapes	
:*
dtype0
Έ
-Adam/patch_encoder_3/embedding_3/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Δ*>
shared_name/-Adam/patch_encoder_3/embedding_3/embeddings/m
±
AAdam/patch_encoder_3/embedding_3/embeddings/m/Read/ReadVariableOpReadVariableOp-Adam/patch_encoder_3/embedding_3/embeddings/m* 
_output_shapes
:
Δ*
dtype0
Έ
+Adam/multi_head_attention_11/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/multi_head_attention_11/query/kernel/m
±
?Adam/multi_head_attention_11/query/kernel/m/Read/ReadVariableOpReadVariableOp+Adam/multi_head_attention_11/query/kernel/m*$
_output_shapes
:*
dtype0
―
)Adam/multi_head_attention_11/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*:
shared_name+)Adam/multi_head_attention_11/query/bias/m
¨
=Adam/multi_head_attention_11/query/bias/m/Read/ReadVariableOpReadVariableOp)Adam/multi_head_attention_11/query/bias/m*
_output_shapes
:	*
dtype0
΄
)Adam/multi_head_attention_11/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)Adam/multi_head_attention_11/key/kernel/m
­
=Adam/multi_head_attention_11/key/kernel/m/Read/ReadVariableOpReadVariableOp)Adam/multi_head_attention_11/key/kernel/m*$
_output_shapes
:*
dtype0
«
'Adam/multi_head_attention_11/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*8
shared_name)'Adam/multi_head_attention_11/key/bias/m
€
;Adam/multi_head_attention_11/key/bias/m/Read/ReadVariableOpReadVariableOp'Adam/multi_head_attention_11/key/bias/m*
_output_shapes
:	*
dtype0
Έ
+Adam/multi_head_attention_11/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/multi_head_attention_11/value/kernel/m
±
?Adam/multi_head_attention_11/value/kernel/m/Read/ReadVariableOpReadVariableOp+Adam/multi_head_attention_11/value/kernel/m*$
_output_shapes
:*
dtype0
―
)Adam/multi_head_attention_11/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*:
shared_name+)Adam/multi_head_attention_11/value/bias/m
¨
=Adam/multi_head_attention_11/value/bias/m/Read/ReadVariableOpReadVariableOp)Adam/multi_head_attention_11/value/bias/m*
_output_shapes
:	*
dtype0
Ξ
6Adam/multi_head_attention_11/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86Adam/multi_head_attention_11/attention_output/kernel/m
Η
JAdam/multi_head_attention_11/attention_output/kernel/m/Read/ReadVariableOpReadVariableOp6Adam/multi_head_attention_11/attention_output/kernel/m*$
_output_shapes
:*
dtype0
Α
4Adam/multi_head_attention_11/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64Adam/multi_head_attention_11/attention_output/bias/m
Ί
HAdam/multi_head_attention_11/attention_output/bias/m/Read/ReadVariableOpReadVariableOp4Adam/multi_head_attention_11/attention_output/bias/m*
_output_shapes	
:*
dtype0

#Adam/layer_normalization_22/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/layer_normalization_22/gamma/v

7Adam/layer_normalization_22/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_22/gamma/v*
_output_shapes	
:*
dtype0

"Adam/layer_normalization_22/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/layer_normalization_22/beta/v

6Adam/layer_normalization_22/beta/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_22/beta/v*
_output_shapes	
:*
dtype0

#Adam/layer_normalization_23/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/layer_normalization_23/gamma/v

7Adam/layer_normalization_23/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/layer_normalization_23/gamma/v*
_output_shapes	
:*
dtype0

"Adam/layer_normalization_23/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/layer_normalization_23/beta/v

6Adam/layer_normalization_23/beta/v/Read/ReadVariableOpReadVariableOp"Adam/layer_normalization_23/beta/v*
_output_shapes	
:*
dtype0

Adam/dense_32/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_32/kernel/v

*Adam/dense_32/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_32/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_32/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_32/bias/v
z
(Adam/dense_32/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_32/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_33/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameAdam/dense_33/kernel/v

*Adam/dense_33/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_33/kernel/v* 
_output_shapes
:
*
dtype0

Adam/dense_33/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_33/bias/v
z
(Adam/dense_33/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_33/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_34/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Δ*'
shared_nameAdam/dense_34/kernel/v

*Adam/dense_34/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_34/kernel/v*!
_output_shapes
:Δ*
dtype0

Adam/dense_34/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_34/bias/v
z
(Adam/dense_34/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_34/bias/v*
_output_shapes	
:*
dtype0

Adam/dense_35/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_35/kernel/v

*Adam/dense_35/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_35/kernel/v*
_output_shapes
:	*
dtype0

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
ͺ
&Adam/patch_encoder_3/dense_31/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*7
shared_name(&Adam/patch_encoder_3/dense_31/kernel/v
£
:Adam/patch_encoder_3/dense_31/kernel/v/Read/ReadVariableOpReadVariableOp&Adam/patch_encoder_3/dense_31/kernel/v* 
_output_shapes
:
*
dtype0
‘
$Adam/patch_encoder_3/dense_31/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*5
shared_name&$Adam/patch_encoder_3/dense_31/bias/v

8Adam/patch_encoder_3/dense_31/bias/v/Read/ReadVariableOpReadVariableOp$Adam/patch_encoder_3/dense_31/bias/v*
_output_shapes	
:*
dtype0
Έ
-Adam/patch_encoder_3/embedding_3/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Δ*>
shared_name/-Adam/patch_encoder_3/embedding_3/embeddings/v
±
AAdam/patch_encoder_3/embedding_3/embeddings/v/Read/ReadVariableOpReadVariableOp-Adam/patch_encoder_3/embedding_3/embeddings/v* 
_output_shapes
:
Δ*
dtype0
Έ
+Adam/multi_head_attention_11/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/multi_head_attention_11/query/kernel/v
±
?Adam/multi_head_attention_11/query/kernel/v/Read/ReadVariableOpReadVariableOp+Adam/multi_head_attention_11/query/kernel/v*$
_output_shapes
:*
dtype0
―
)Adam/multi_head_attention_11/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*:
shared_name+)Adam/multi_head_attention_11/query/bias/v
¨
=Adam/multi_head_attention_11/query/bias/v/Read/ReadVariableOpReadVariableOp)Adam/multi_head_attention_11/query/bias/v*
_output_shapes
:	*
dtype0
΄
)Adam/multi_head_attention_11/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*:
shared_name+)Adam/multi_head_attention_11/key/kernel/v
­
=Adam/multi_head_attention_11/key/kernel/v/Read/ReadVariableOpReadVariableOp)Adam/multi_head_attention_11/key/kernel/v*$
_output_shapes
:*
dtype0
«
'Adam/multi_head_attention_11/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*8
shared_name)'Adam/multi_head_attention_11/key/bias/v
€
;Adam/multi_head_attention_11/key/bias/v/Read/ReadVariableOpReadVariableOp'Adam/multi_head_attention_11/key/bias/v*
_output_shapes
:	*
dtype0
Έ
+Adam/multi_head_attention_11/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*<
shared_name-+Adam/multi_head_attention_11/value/kernel/v
±
?Adam/multi_head_attention_11/value/kernel/v/Read/ReadVariableOpReadVariableOp+Adam/multi_head_attention_11/value/kernel/v*$
_output_shapes
:*
dtype0
―
)Adam/multi_head_attention_11/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*:
shared_name+)Adam/multi_head_attention_11/value/bias/v
¨
=Adam/multi_head_attention_11/value/bias/v/Read/ReadVariableOpReadVariableOp)Adam/multi_head_attention_11/value/bias/v*
_output_shapes
:	*
dtype0
Ξ
6Adam/multi_head_attention_11/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*G
shared_name86Adam/multi_head_attention_11/attention_output/kernel/v
Η
JAdam/multi_head_attention_11/attention_output/kernel/v/Read/ReadVariableOpReadVariableOp6Adam/multi_head_attention_11/attention_output/kernel/v*$
_output_shapes
:*
dtype0
Α
4Adam/multi_head_attention_11/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64Adam/multi_head_attention_11/attention_output/bias/v
Ί
HAdam/multi_head_attention_11/attention_output/bias/v/Read/ReadVariableOpReadVariableOp4Adam/multi_head_attention_11/attention_output/bias/v*
_output_shapes	
:*
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
valueB*  ?

NoOpNoOp
ρβ
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*©β
valueβBβ Bβ
¨
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
¨
layer-0
layer-1
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses* 
ή
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

.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses* 
Έ
4
projection
5position_embedding
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses*
―
<axis
	=gamma
>beta
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses*
ω
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

Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses* 
―
Waxis
	Xgamma
Ybeta
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses*
¦

`kernel
abias
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses*
₯
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l_random_generator
m__call__
*n&call_and_return_all_conditional_losses* 
¦

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses*
₯
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{_random_generator
|__call__
*}&call_and_return_all_conditional_losses* 

~	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses* 
?
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
¬
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses* 
?
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+ &call_and_return_all_conditional_losses*
³
	‘iter
’beta_1
£beta_2

€decay
₯learning_rate=mΐ>mΑXmΒYmΓ`mΔamΕomΖpmΗ	mΘ	mΙ	mΚ	mΛ	©mΜ	ͺmΝ	«mΞ	¬mΟ	­mΠ	?mΡ	―m?	°mΣ	±mΤ	²mΥ	³mΦ=vΧ>vΨXvΩYvΪ`vΫavάovέpvή	vί	vΰ	vα	vβ	©vγ	ͺvδ	«vε	¬vζ	­vη	?vθ	―vι	°vκ	±vλ	²vμ	³vν*
ά
¦0
§1
¨2
©3
ͺ4
«5
=6
>7
¬8
­9
?10
―11
°12
±13
²14
³15
X16
Y17
`18
a19
o20
p21
22
23
24
25*
Α
©0
ͺ1
«2
=3
>4
¬5
­6
?7
―8
°9
±10
²11
³12
X13
Y14
`15
a16
o17
p18
19
20
21
22*
* 
΅
΄non_trainable_variables
΅layers
Άmetrics
 ·layer_regularization_losses
Έlayer_metrics
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
Ήserving_default* 

Ί	variables
»trainable_variables
Όregularization_losses
½	keras_api
Ύ__call__
+Ώ&call_and_return_all_conditional_losses* 

ΐ	variables
Αtrainable_variables
Βregularization_losses
Γ	keras_api
Δ__call__
+Ε&call_and_return_all_conditional_losses* 
* 
* 
* 

Ζnon_trainable_variables
Ηlayers
Θmetrics
 Ιlayer_regularization_losses
Κlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses* 
* 
* 
³
Λ
_keep_axis
Μ_reduce_axis
Ν_reduce_axis_mask
Ξ_broadcast_shape
	¦mean
¦
adapt_mean
§variance
§adapt_variance

¨count
Ο	keras_api*
?
Π	variables
Ρtrainable_variables
?regularization_losses
Σ	keras_api
Τ_random_generator
Υ__call__
+Φ&call_and_return_all_conditional_losses*
?
Χ	variables
Ψtrainable_variables
Ωregularization_losses
Ϊ	keras_api
Ϋ_random_generator
ά__call__
+έ&call_and_return_all_conditional_losses*
?
ή	variables
ίtrainable_variables
ΰregularization_losses
α	keras_api
β_random_generator
γ__call__
+δ&call_and_return_all_conditional_losses*

¦0
§1
¨2*
* 
* 

εnon_trainable_variables
ζlayers
ηmetrics
 θlayer_regularization_losses
ιlayer_metrics
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

κnon_trainable_variables
λlayers
μmetrics
 νlayer_regularization_losses
ξlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 
* 
* 
?
©kernel
	ͺbias
ο	variables
πtrainable_variables
ρregularization_losses
ς	keras_api
σ__call__
+τ&call_and_return_all_conditional_losses*
§
«
embeddings
υ	variables
φtrainable_variables
χregularization_losses
ψ	keras_api
ω__call__
+ϊ&call_and_return_all_conditional_losses*

©0
ͺ1
«2*

©0
ͺ1
«2*
* 

ϋnon_trainable_variables
όlayers
ύmetrics
 ώlayer_regularization_losses
?layer_metrics
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

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses*
* 
* 
α
partial_output_shape
full_output_shape
¬kernel
	­bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
α
partial_output_shape
full_output_shape
?kernel
	―bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*
α
partial_output_shape
full_output_shape
°kernel
	±bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses*

	variables
trainable_variables
regularization_losses
 	keras_api
‘__call__
+’&call_and_return_all_conditional_losses* 
¬
£	variables
€trainable_variables
₯regularization_losses
¦	keras_api
§_random_generator
¨__call__
+©&call_and_return_all_conditional_losses* 
α
ͺpartial_output_shape
«full_output_shape
²kernel
	³bias
¬	variables
­trainable_variables
?regularization_losses
―	keras_api
°__call__
+±&call_and_return_all_conditional_losses*
D
¬0
­1
?2
―3
°4
±5
²6
³7*
D
¬0
­1
?2
―3
°4
±5
²6
³7*
* 

²non_trainable_variables
³layers
΄metrics
 ΅layer_regularization_losses
Άlayer_metrics
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

·non_trainable_variables
Έlayers
Ήmetrics
 Ίlayer_regularization_losses
»layer_metrics
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

Όnon_trainable_variables
½layers
Ύmetrics
 Ώlayer_regularization_losses
ΐlayer_metrics
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

Αnon_trainable_variables
Βlayers
Γmetrics
 Δlayer_regularization_losses
Εlayer_metrics
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

Ζnon_trainable_variables
Ηlayers
Θmetrics
 Ιlayer_regularization_losses
Κlayer_metrics
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

Λnon_trainable_variables
Μlayers
Νmetrics
 Ξlayer_regularization_losses
Οlayer_metrics
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

Πnon_trainable_variables
Ρlayers
?metrics
 Σlayer_regularization_losses
Τlayer_metrics
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

Υnon_trainable_variables
Φlayers
Χmetrics
 Ψlayer_regularization_losses
Ωlayer_metrics
~	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

Ϊnon_trainable_variables
Ϋlayers
άmetrics
 έlayer_regularization_losses
ήlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEdense_34/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_34/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

ίnon_trainable_variables
ΰlayers
αmetrics
 βlayer_regularization_losses
γlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

δnon_trainable_variables
εlayers
ζmetrics
 ηlayer_regularization_losses
θlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEdense_35/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_35/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

ιnon_trainable_variables
κlayers
λmetrics
 μlayer_regularization_losses
νlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses*
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

¦0
§1
¨2*

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
ξ0
ο1*
* 
* 
* 
* 
* 
* 

πnon_trainable_variables
ρlayers
ςmetrics
 σlayer_regularization_losses
τlayer_metrics
Ί	variables
»trainable_variables
Όregularization_losses
Ύ__call__
+Ώ&call_and_return_all_conditional_losses
'Ώ"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

υnon_trainable_variables
φlayers
χmetrics
 ψlayer_regularization_losses
ωlayer_metrics
ΐ	variables
Αtrainable_variables
Βregularization_losses
Δ__call__
+Ε&call_and_return_all_conditional_losses
'Ε"call_and_return_conditional_losses* 
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

ϊnon_trainable_variables
ϋlayers
όmetrics
 ύlayer_regularization_losses
ώlayer_metrics
Π	variables
Ρtrainable_variables
?regularization_losses
Υ__call__
+Φ&call_and_return_all_conditional_losses
'Φ"call_and_return_conditional_losses* 

?
_generator*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Χ	variables
Ψtrainable_variables
Ωregularization_losses
ά__call__
+έ&call_and_return_all_conditional_losses
'έ"call_and_return_conditional_losses* 


_generator*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ή	variables
ίtrainable_variables
ΰregularization_losses
γ__call__
+δ&call_and_return_all_conditional_losses
'δ"call_and_return_conditional_losses* 


_generator*
* 
* 

¦0
§1
¨2*
 
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
ͺ1*

©0
ͺ1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ο	variables
πtrainable_variables
ρregularization_losses
σ__call__
+τ&call_and_return_all_conditional_losses
'τ"call_and_return_conditional_losses*
* 
* 

«0*

«0*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
υ	variables
φtrainable_variables
χregularization_losses
ω__call__
+ϊ&call_and_return_all_conditional_losses
'ϊ"call_and_return_conditional_losses*
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
¬0
­1*

¬0
­1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 

?0
―1*

?0
―1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 

°0
±1*

°0
±1*
* 

 non_trainable_variables
‘layers
’metrics
 £layer_regularization_losses
€layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

₯non_trainable_variables
¦layers
§metrics
 ¨layer_regularization_losses
©layer_metrics
	variables
trainable_variables
regularization_losses
‘__call__
+’&call_and_return_all_conditional_losses
'’"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

ͺnon_trainable_variables
«layers
¬metrics
 ­layer_regularization_losses
?layer_metrics
£	variables
€trainable_variables
₯regularization_losses
¨__call__
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

²0
³1*

²0
³1*
* 

―non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
¬	variables
­trainable_variables
?regularization_losses
°__call__
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

΄total

΅count
Ά	variables
·	keras_api*
M

Έtotal

Ήcount
Ί
_fn_kwargs
»	variables
Ό	keras_api*
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
½
_state_var*
* 
* 
* 
* 
* 

Ύ
_state_var*
* 
* 
* 
* 
* 

Ώ
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
΄0
΅1*

Ά	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Έ0
Ή1*

»	variables*
ͺ£
VARIABLE_VALUE0model_3/Data_Augmentation/random_flip_3/StateVar_layer_with_weights-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
?§
VARIABLE_VALUE4model_3/Data_Augmentation/random_rotation_3/StateVar_layer_with_weights-0/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
ͺ£
VARIABLE_VALUE0model_3/Data_Augmentation/random_zoom_3/StateVar_layer_with_weights-0/layer-3/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/layer_normalization_22/gamma/mQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/layer_normalization_22/beta/mPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/layer_normalization_23/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/layer_normalization_23/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_32/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_32/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_33/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_33/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_34/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_34/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_35/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_35/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE&Adam/patch_encoder_3/dense_31/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE$Adam/patch_encoder_3/dense_31/bias/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/patch_encoder_3/embedding_3/embeddings/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/multi_head_attention_11/query/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/multi_head_attention_11/query/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/multi_head_attention_11/key/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE'Adam/multi_head_attention_11/key/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/multi_head_attention_11/value/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/multi_head_attention_11/value/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/multi_head_attention_11/attention_output/kernel/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE4Adam/multi_head_attention_11/attention_output/bias/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/layer_normalization_22/gamma/vQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/layer_normalization_22/beta/vPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/layer_normalization_23/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/layer_normalization_23/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_32/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_32/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_33/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_33/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_34/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_34/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_35/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_35/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE&Adam/patch_encoder_3/dense_31/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE$Adam/patch_encoder_3/dense_31/bias/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE-Adam/patch_encoder_3/embedding_3/embeddings/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/multi_head_attention_11/query/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/multi_head_attention_11/query/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/multi_head_attention_11/key/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUE'Adam/multi_head_attention_11/key/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/multi_head_attention_11/value/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE)Adam/multi_head_attention_11/value/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE6Adam/multi_head_attention_11/attention_output/kernel/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE4Adam/multi_head_attention_11/attention_output/bias/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_4Placeholder*1
_output_shapes
:?????????ΰΰ*
dtype0*&
shape:?????????ΰΰ

StatefulPartitionedCallStatefulPartitionedCallserving_default_input_4ConstConst_1patch_encoder_3/dense_31/kernelpatch_encoder_3/dense_31/bias&patch_encoder_3/embedding_3/embeddingslayer_normalization_22/gammalayer_normalization_22/beta$multi_head_attention_11/query/kernel"multi_head_attention_11/query/bias"multi_head_attention_11/key/kernel multi_head_attention_11/key/bias$multi_head_attention_11/value/kernel"multi_head_attention_11/value/bias/multi_head_attention_11/attention_output/kernel-multi_head_attention_11/attention_output/biaslayer_normalization_23/gammalayer_normalization_23/betadense_32/kerneldense_32/biasdense_33/kerneldense_33/biasdense_34/kerneldense_34/biasdense_35/kerneldense_35/bias*%
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_58906
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Π$
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
GPU 2J 8 *'
f"R 
__inference__traced_save_60525
Ή
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_60787ζν%
ζ)

R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_59539	
query	
valueC
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	A
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	C
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	N
6attention_output_einsum_einsum_readvariableop_resource:;
,attention_output_add_readvariableop_resource:	
identity’#attention_output/add/ReadVariableOp’-attention_output/einsum/Einsum/ReadVariableOp’key/add/ReadVariableOp’ key/einsum/Einsum/ReadVariableOp’query/add/ReadVariableOp’"query/einsum/Einsum/ReadVariableOp’value/add/ReadVariableOp’"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0²
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????Δ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0?
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????Δ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0²
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ΔJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *σ΅=e
MulMulquery/add:z:0Mul/y:output:0*
T0*1
_output_shapes
:?????????Δ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:?????????ΔΔ*
equationaecd,abcd->acben
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*1
_output_shapes
:?????????ΔΔ§
einsum_1/EinsumEinsumsoftmax/Softmax:softmax:0value/add:z:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationacbe,aecd->abcdͺ
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0Χ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:?????????Δ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes	
:*
dtype0«
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δm
IdentityIdentityattention_output/add:z:0^NoOp*
T0*-
_output_shapes
:?????????ΔΨ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:?????????Δ:?????????Δ: : : : : : : : 2J
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
:?????????Δ

_user_specified_namequery:TP
-
_output_shapes
:?????????Δ

_user_specified_namevalue
ν
T
.__inference_Resize_Rescale_layer_call_fn_56343
resizing_3_input
identityΘ
PartitionedCallPartitionedCallresizing_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56340j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:c _
1
_output_shapes
:?????????ΰΰ
*
_user_specified_nameresizing_3_input
£

d
E__inference_dropout_26_layer_call_and_return_conditional_losses_59716

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:?????????ΔC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:?????????Δ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=¬
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:?????????Δu
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:?????????Δo
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:?????????Δ_
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:?????????Δ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????Δ:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
τV
Ρ
B__inference_model_3_layer_call_and_return_conditional_losses_57956
input_4
data_augmentation_57883
data_augmentation_57885%
data_augmentation_57887:	%
data_augmentation_57889:	%
data_augmentation_57891:	)
patch_encoder_3_57895:
$
patch_encoder_3_57897:	)
patch_encoder_3_57899:
Δ+
layer_normalization_22_57902:	+
layer_normalization_22_57904:	5
multi_head_attention_11_57907:0
multi_head_attention_11_57909:	5
multi_head_attention_11_57911:0
multi_head_attention_11_57913:	5
multi_head_attention_11_57915:0
multi_head_attention_11_57917:	5
multi_head_attention_11_57919:,
multi_head_attention_11_57921:	+
layer_normalization_23_57925:	+
layer_normalization_23_57927:	"
dense_32_57930:

dense_32_57932:	"
dense_33_57936:

dense_33_57938:	#
dense_34_57944:Δ
dense_34_57946:	!
dense_35_57950:	
dense_35_57952:
identity’)Data_Augmentation/StatefulPartitionedCall’ dense_32/StatefulPartitionedCall’ dense_33/StatefulPartitionedCall’ dense_34/StatefulPartitionedCall’ dense_35/StatefulPartitionedCall’"dropout_25/StatefulPartitionedCall’"dropout_26/StatefulPartitionedCall’"dropout_27/StatefulPartitionedCall’.layer_normalization_22/StatefulPartitionedCall’.layer_normalization_23/StatefulPartitionedCall’/multi_head_attention_11/StatefulPartitionedCall’'patch_encoder_3/StatefulPartitionedCallΞ
Resize_Rescale/PartitionedCallPartitionedCallinput_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56368
)Data_Augmentation/StatefulPartitionedCallStatefulPartitionedCall'Resize_Rescale/PartitionedCall:output:0data_augmentation_57883data_augmentation_57885data_augmentation_57887data_augmentation_57889data_augmentation_57891*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56853σ
patches_7/PartitionedCallPartitionedCall2Data_Augmentation/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_patches_7_layer_call_and_return_conditional_losses_56942Δ
'patch_encoder_3/StatefulPartitionedCallStatefulPartitionedCall"patches_7/PartitionedCall:output:0patch_encoder_3_57895patch_encoder_3_57897patch_encoder_3_57899*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_patch_encoder_3_layer_call_and_return_conditional_losses_56984Υ
.layer_normalization_22/StatefulPartitionedCallStatefulPartitionedCall0patch_encoder_3/StatefulPartitionedCall:output:0layer_normalization_22_57902layer_normalization_22_57904*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_57014ΰ
/multi_head_attention_11/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_22/StatefulPartitionedCall:output:07layer_normalization_22/StatefulPartitionedCall:output:0multi_head_attention_11_57907multi_head_attention_11_57909multi_head_attention_11_57911multi_head_attention_11_57913multi_head_attention_11_57915multi_head_attention_11_57917multi_head_attention_11_57919multi_head_attention_11_57921*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_57507
add_22/PartitionedCallPartitionedCall8multi_head_attention_11/StatefulPartitionedCall:output:00patch_encoder_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_add_22_layer_call_and_return_conditional_losses_57079Δ
.layer_normalization_23/StatefulPartitionedCallStatefulPartitionedCalladd_22/PartitionedCall:output:0layer_normalization_23_57925layer_normalization_23_57927*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_57103€
 dense_32/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_23/StatefulPartitionedCall:output:0dense_32_57930dense_32_57932*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_32_layer_call_and_return_conditional_losses_57140τ
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_57417
 dense_33/StatefulPartitionedCallStatefulPartitionedCall+dropout_25/StatefulPartitionedCall:output:0dense_33_57936dense_33_57938*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_57184
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall)dense_33/StatefulPartitionedCall:output:0#^dropout_25/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_26_layer_call_and_return_conditional_losses_57384
add_23/PartitionedCallPartitionedCall+dropout_26/StatefulPartitionedCall:output:0add_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_add_23_layer_call_and_return_conditional_losses_57203Τ
flatten_3/PartitionedCallPartitionedCalladd_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_57211
 dense_34/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_34_57944dense_34_57946*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_57224
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0#^dropout_26/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_27_layer_call_and_return_conditional_losses_57338
 dense_35/StatefulPartitionedCallStatefulPartitionedCall+dropout_27/StatefulPartitionedCall:output:0dense_35_57950dense_35_57952*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_57248x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????«
NoOpNoOp*^Data_Augmentation/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall#^dropout_27/StatefulPartitionedCall/^layer_normalization_22/StatefulPartitionedCall/^layer_normalization_23/StatefulPartitionedCall0^multi_head_attention_11/StatefulPartitionedCall(^patch_encoder_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesw
u:?????????ΰΰ::: : : : : : : : : : : : : : : : : : : : : : : : : : 2V
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
:?????????ΰΰ
!
_user_specified_name	input_4:,(
&
_output_shapes
::,(
&
_output_shapes
:
€
©
B__inference_model_3_layer_call_and_return_conditional_losses_58282

inputs+
'data_augmentation_normalization_3_sub_y,
(data_augmentation_normalization_3_sqrt_xN
:patch_encoder_3_dense_31_tensordot_readvariableop_resource:
G
8patch_encoder_3_dense_31_biasadd_readvariableop_resource:	F
2patch_encoder_3_embedding_3_embedding_lookup_58134:
ΔK
<layer_normalization_22_batchnorm_mul_readvariableop_resource:	G
8layer_normalization_22_batchnorm_readvariableop_resource:	[
Cmulti_head_attention_11_query_einsum_einsum_readvariableop_resource:L
9multi_head_attention_11_query_add_readvariableop_resource:	Y
Amulti_head_attention_11_key_einsum_einsum_readvariableop_resource:J
7multi_head_attention_11_key_add_readvariableop_resource:	[
Cmulti_head_attention_11_value_einsum_einsum_readvariableop_resource:L
9multi_head_attention_11_value_add_readvariableop_resource:	f
Nmulti_head_attention_11_attention_output_einsum_einsum_readvariableop_resource:S
Dmulti_head_attention_11_attention_output_add_readvariableop_resource:	K
<layer_normalization_23_batchnorm_mul_readvariableop_resource:	G
8layer_normalization_23_batchnorm_readvariableop_resource:	>
*dense_32_tensordot_readvariableop_resource:
7
(dense_32_biasadd_readvariableop_resource:	>
*dense_33_tensordot_readvariableop_resource:
7
(dense_33_biasadd_readvariableop_resource:	<
'dense_34_matmul_readvariableop_resource:Δ7
(dense_34_biasadd_readvariableop_resource:	:
'dense_35_matmul_readvariableop_resource:	6
(dense_35_biasadd_readvariableop_resource:
identity’dense_32/BiasAdd/ReadVariableOp’!dense_32/Tensordot/ReadVariableOp’dense_33/BiasAdd/ReadVariableOp’!dense_33/Tensordot/ReadVariableOp’dense_34/BiasAdd/ReadVariableOp’dense_34/MatMul/ReadVariableOp’dense_35/BiasAdd/ReadVariableOp’dense_35/MatMul/ReadVariableOp’/layer_normalization_22/batchnorm/ReadVariableOp’3layer_normalization_22/batchnorm/mul/ReadVariableOp’/layer_normalization_23/batchnorm/ReadVariableOp’3layer_normalization_23/batchnorm/mul/ReadVariableOp’;multi_head_attention_11/attention_output/add/ReadVariableOp’Emulti_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp’.multi_head_attention_11/key/add/ReadVariableOp’8multi_head_attention_11/key/einsum/Einsum/ReadVariableOp’0multi_head_attention_11/query/add/ReadVariableOp’:multi_head_attention_11/query/einsum/Einsum/ReadVariableOp’0multi_head_attention_11/value/add/ReadVariableOp’:multi_head_attention_11/value/einsum/Einsum/ReadVariableOp’/patch_encoder_3/dense_31/BiasAdd/ReadVariableOp’1patch_encoder_3/dense_31/Tensordot/ReadVariableOp’,patch_encoder_3/embedding_3/embedding_lookupv
%Resize_Rescale/resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"ΰ   ΰ   Ο
/Resize_Rescale/resizing_3/resize/ResizeBilinearResizeBilinearinputs.Resize_Rescale/resizing_3/resize/size:output:0*
T0*1
_output_shapes
:?????????ΰΰ*
half_pixel_centers(f
!Resize_Rescale/rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;h
#Resize_Rescale/rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Ο
Resize_Rescale/rescaling_3/mulMul@Resize_Rescale/resizing_3/resize/ResizeBilinear:resized_images:0*Resize_Rescale/rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:?????????ΰΰ΅
Resize_Rescale/rescaling_3/addAddV2"Resize_Rescale/rescaling_3/mul:z:0,Resize_Rescale/rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:?????????ΰΰ΅
%Data_Augmentation/normalization_3/subSub"Resize_Rescale/rescaling_3/add:z:0'data_augmentation_normalization_3_sub_y*
T0*1
_output_shapes
:?????????ΰΰ
&Data_Augmentation/normalization_3/SqrtSqrt(data_augmentation_normalization_3_sqrt_x*
T0*&
_output_shapes
:p
+Data_Augmentation/normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3Η
)Data_Augmentation/normalization_3/MaximumMaximum*Data_Augmentation/normalization_3/Sqrt:y:04Data_Augmentation/normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:Κ
)Data_Augmentation/normalization_3/truedivRealDiv)Data_Augmentation/normalization_3/sub:z:0-Data_Augmentation/normalization_3/Maximum:z:0*
T0*1
_output_shapes
:?????????ΰΰl
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
valueB:
patches_7/strided_sliceStridedSlicepatches_7/Shape:output:0&patches_7/strided_slice/stack:output:0(patches_7/strided_slice/stack_1:output:0(patches_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskξ
patches_7/ExtractImagePatchesExtractImagePatches-Data_Augmentation/normalization_3/truediv:z:0*
T0*0
_output_shapes
:?????????*
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
?????????\
patches_7/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :·
patches_7/Reshape/shapePack patches_7/strided_slice:output:0"patches_7/Reshape/shape/1:output:0"patches_7/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:§
patches_7/ReshapeReshape'patches_7/ExtractImagePatches:patches:0 patches_7/Reshape/shape:output:0*
T0*5
_output_shapes#
!:??????????????????]
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
B :Δ]
patch_encoder_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :­
patch_encoder_3/rangeRange$patch_encoder_3/range/start:output:0$patch_encoder_3/range/limit:output:0$patch_encoder_3/range/delta:output:0*
_output_shapes	
:Δ?
1patch_encoder_3/dense_31/Tensordot/ReadVariableOpReadVariableOp:patch_encoder_3_dense_31_tensordot_readvariableop_resource* 
_output_shapes
:
*
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
value	B : 
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
valueB: Ή
'patch_encoder_3/dense_31/Tensordot/ProdProd4patch_encoder_3/dense_31/Tensordot/GatherV2:output:01patch_encoder_3/dense_31/Tensordot/Const:output:0*
T0*
_output_shapes
: t
*patch_encoder_3/dense_31/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ώ
)patch_encoder_3/dense_31/Tensordot/Prod_1Prod6patch_encoder_3/dense_31/Tensordot/GatherV2_1:output:03patch_encoder_3/dense_31/Tensordot/Const_1:output:0*
T0*
_output_shapes
: p
.patch_encoder_3/dense_31/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)patch_encoder_3/dense_31/Tensordot/concatConcatV20patch_encoder_3/dense_31/Tensordot/free:output:00patch_encoder_3/dense_31/Tensordot/axes:output:07patch_encoder_3/dense_31/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Δ
(patch_encoder_3/dense_31/Tensordot/stackPack0patch_encoder_3/dense_31/Tensordot/Prod:output:02patch_encoder_3/dense_31/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ι
,patch_encoder_3/dense_31/Tensordot/transpose	Transposepatches_7/Reshape:output:02patch_encoder_3/dense_31/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:??????????????????Υ
*patch_encoder_3/dense_31/Tensordot/ReshapeReshape0patch_encoder_3/dense_31/Tensordot/transpose:y:01patch_encoder_3/dense_31/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????Φ
)patch_encoder_3/dense_31/Tensordot/MatMulMatMul3patch_encoder_3/dense_31/Tensordot/Reshape:output:09patch_encoder_3/dense_31/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????u
*patch_encoder_3/dense_31/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:r
0patch_encoder_3/dense_31/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
+patch_encoder_3/dense_31/Tensordot/concat_1ConcatV24patch_encoder_3/dense_31/Tensordot/GatherV2:output:03patch_encoder_3/dense_31/Tensordot/Const_2:output:09patch_encoder_3/dense_31/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ψ
"patch_encoder_3/dense_31/TensordotReshape3patch_encoder_3/dense_31/Tensordot/MatMul:product:04patch_encoder_3/dense_31/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:??????????????????₯
/patch_encoder_3/dense_31/BiasAdd/ReadVariableOpReadVariableOp8patch_encoder_3_dense_31_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ρ
 patch_encoder_3/dense_31/BiasAddBiasAdd+patch_encoder_3/dense_31/Tensordot:output:07patch_encoder_3/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:??????????????????
,patch_encoder_3/embedding_3/embedding_lookupResourceGather2patch_encoder_3_embedding_3_embedding_lookup_58134patch_encoder_3/range:output:0*
Tindices0*E
_class;
97loc:@patch_encoder_3/embedding_3/embedding_lookup/58134* 
_output_shapes
:
Δ*
dtype0κ
5patch_encoder_3/embedding_3/embedding_lookup/IdentityIdentity5patch_encoder_3/embedding_3/embedding_lookup:output:0*
T0*E
_class;
97loc:@patch_encoder_3/embedding_3/embedding_lookup/58134* 
_output_shapes
:
Δ?
7patch_encoder_3/embedding_3/embedding_lookup/Identity_1Identity>patch_encoder_3/embedding_3/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
ΔΑ
patch_encoder_3/addAddV2)patch_encoder_3/dense_31/BiasAdd:output:0@patch_encoder_3/embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:?????????Δ
5layer_normalization_22/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Μ
#layer_normalization_22/moments/meanMeanpatch_encoder_3/add:z:0>layer_normalization_22/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims( 
+layer_normalization_22/moments/StopGradientStopGradient,layer_normalization_22/moments/mean:output:0*
T0*,
_output_shapes
:?????????ΔΜ
0layer_normalization_22/moments/SquaredDifferenceSquaredDifferencepatch_encoder_3/add:z:04layer_normalization_22/moments/StopGradient:output:0*
T0*-
_output_shapes
:?????????Δ
9layer_normalization_22/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ρ
'layer_normalization_22/moments/varianceMean4layer_normalization_22/moments/SquaredDifference:z:0Blayer_normalization_22/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims(k
&layer_normalization_22/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Η
$layer_normalization_22/batchnorm/addAddV20layer_normalization_22/moments/variance:output:0/layer_normalization_22/batchnorm/add/y:output:0*
T0*,
_output_shapes
:?????????Δ
&layer_normalization_22/batchnorm/RsqrtRsqrt(layer_normalization_22/batchnorm/add:z:0*
T0*,
_output_shapes
:?????????Δ­
3layer_normalization_22/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_22_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0Μ
$layer_normalization_22/batchnorm/mulMul*layer_normalization_22/batchnorm/Rsqrt:y:0;layer_normalization_22/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δ¨
&layer_normalization_22/batchnorm/mul_1Mulpatch_encoder_3/add:z:0(layer_normalization_22/batchnorm/mul:z:0*
T0*-
_output_shapes
:?????????Δ½
&layer_normalization_22/batchnorm/mul_2Mul,layer_normalization_22/moments/mean:output:0(layer_normalization_22/batchnorm/mul:z:0*
T0*-
_output_shapes
:?????????Δ₯
/layer_normalization_22/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_22_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0Θ
$layer_normalization_22/batchnorm/subSub7layer_normalization_22/batchnorm/ReadVariableOp:value:0*layer_normalization_22/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:?????????Δ½
&layer_normalization_22/batchnorm/add_1AddV2*layer_normalization_22/batchnorm/mul_1:z:0(layer_normalization_22/batchnorm/sub:z:0*
T0*-
_output_shapes
:?????????ΔΔ
:multi_head_attention_11/query/einsum/Einsum/ReadVariableOpReadVariableOpCmulti_head_attention_11_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0
+multi_head_attention_11/query/einsum/EinsumEinsum*layer_normalization_22/batchnorm/add_1:z:0Bmulti_head_attention_11/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abde«
0multi_head_attention_11/query/add/ReadVariableOpReadVariableOp9multi_head_attention_11_query_add_readvariableop_resource*
_output_shapes
:	*
dtype0Φ
!multi_head_attention_11/query/addAddV24multi_head_attention_11/query/einsum/Einsum:output:08multi_head_attention_11/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????Δΐ
8multi_head_attention_11/key/einsum/Einsum/ReadVariableOpReadVariableOpAmulti_head_attention_11_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0
)multi_head_attention_11/key/einsum/EinsumEinsum*layer_normalization_22/batchnorm/add_1:z:0@multi_head_attention_11/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abde§
.multi_head_attention_11/key/add/ReadVariableOpReadVariableOp7multi_head_attention_11_key_add_readvariableop_resource*
_output_shapes
:	*
dtype0Π
multi_head_attention_11/key/addAddV22multi_head_attention_11/key/einsum/Einsum:output:06multi_head_attention_11/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ΔΔ
:multi_head_attention_11/value/einsum/Einsum/ReadVariableOpReadVariableOpCmulti_head_attention_11_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0
+multi_head_attention_11/value/einsum/EinsumEinsum*layer_normalization_22/batchnorm/add_1:z:0Bmulti_head_attention_11/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abde«
0multi_head_attention_11/value/add/ReadVariableOpReadVariableOp9multi_head_attention_11_value_add_readvariableop_resource*
_output_shapes
:	*
dtype0Φ
!multi_head_attention_11/value/addAddV24multi_head_attention_11/value/einsum/Einsum:output:08multi_head_attention_11/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????Δb
multi_head_attention_11/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *σ΅=­
multi_head_attention_11/MulMul%multi_head_attention_11/query/add:z:0&multi_head_attention_11/Mul/y:output:0*
T0*1
_output_shapes
:?????????ΔΩ
%multi_head_attention_11/einsum/EinsumEinsum#multi_head_attention_11/key/add:z:0multi_head_attention_11/Mul:z:0*
N*
T0*1
_output_shapes
:?????????ΔΔ*
equationaecd,abcd->acbe
'multi_head_attention_11/softmax/SoftmaxSoftmax.multi_head_attention_11/einsum/Einsum:output:0*
T0*1
_output_shapes
:?????????ΔΔ£
(multi_head_attention_11/dropout/IdentityIdentity1multi_head_attention_11/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:?????????ΔΔο
'multi_head_attention_11/einsum_1/EinsumEinsum1multi_head_attention_11/dropout/Identity:output:0%multi_head_attention_11/value/add:z:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationacbe,aecd->abcdΪ
Emulti_head_attention_11/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpNmulti_head_attention_11_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0
6multi_head_attention_11/attention_output/einsum/EinsumEinsum0multi_head_attention_11/einsum_1/Einsum:output:0Mmulti_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:?????????Δ*
equationabcd,cde->abe½
;multi_head_attention_11/attention_output/add/ReadVariableOpReadVariableOpDmulti_head_attention_11_attention_output_add_readvariableop_resource*
_output_shapes	
:*
dtype0σ
,multi_head_attention_11/attention_output/addAddV2?multi_head_attention_11/attention_output/einsum/Einsum:output:0Cmulti_head_attention_11/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δ

add_22/addAddV20multi_head_attention_11/attention_output/add:z:0patch_encoder_3/add:z:0*
T0*-
_output_shapes
:?????????Δ
5layer_normalization_23/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Γ
#layer_normalization_23/moments/meanMeanadd_22/add:z:0>layer_normalization_23/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims( 
+layer_normalization_23/moments/StopGradientStopGradient,layer_normalization_23/moments/mean:output:0*
T0*,
_output_shapes
:?????????ΔΓ
0layer_normalization_23/moments/SquaredDifferenceSquaredDifferenceadd_22/add:z:04layer_normalization_23/moments/StopGradient:output:0*
T0*-
_output_shapes
:?????????Δ
9layer_normalization_23/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ρ
'layer_normalization_23/moments/varianceMean4layer_normalization_23/moments/SquaredDifference:z:0Blayer_normalization_23/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims(k
&layer_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Η
$layer_normalization_23/batchnorm/addAddV20layer_normalization_23/moments/variance:output:0/layer_normalization_23/batchnorm/add/y:output:0*
T0*,
_output_shapes
:?????????Δ
&layer_normalization_23/batchnorm/RsqrtRsqrt(layer_normalization_23/batchnorm/add:z:0*
T0*,
_output_shapes
:?????????Δ­
3layer_normalization_23/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_23_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0Μ
$layer_normalization_23/batchnorm/mulMul*layer_normalization_23/batchnorm/Rsqrt:y:0;layer_normalization_23/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δ
&layer_normalization_23/batchnorm/mul_1Muladd_22/add:z:0(layer_normalization_23/batchnorm/mul:z:0*
T0*-
_output_shapes
:?????????Δ½
&layer_normalization_23/batchnorm/mul_2Mul,layer_normalization_23/moments/mean:output:0(layer_normalization_23/batchnorm/mul:z:0*
T0*-
_output_shapes
:?????????Δ₯
/layer_normalization_23/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_23_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0Θ
$layer_normalization_23/batchnorm/subSub7layer_normalization_23/batchnorm/ReadVariableOp:value:0*layer_normalization_23/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:?????????Δ½
&layer_normalization_23/batchnorm/add_1AddV2*layer_normalization_23/batchnorm/mul_1:z:0(layer_normalization_23/batchnorm/sub:z:0*
T0*-
_output_shapes
:?????????Δ
!dense_32/Tensordot/ReadVariableOpReadVariableOp*dense_32_tensordot_readvariableop_resource* 
_output_shapes
:
*
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
value	B : ί
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
value	B : γ
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
valueB: 
dense_32/Tensordot/ProdProd$dense_32/Tensordot/GatherV2:output:0!dense_32/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_32/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_32/Tensordot/Prod_1Prod&dense_32/Tensordot/GatherV2_1:output:0#dense_32/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_32/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ΐ
dense_32/Tensordot/concatConcatV2 dense_32/Tensordot/free:output:0 dense_32/Tensordot/axes:output:0'dense_32/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_32/Tensordot/stackPack dense_32/Tensordot/Prod:output:0"dense_32/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:±
dense_32/Tensordot/transpose	Transpose*layer_normalization_23/batchnorm/add_1:z:0"dense_32/Tensordot/concat:output:0*
T0*-
_output_shapes
:?????????Δ₯
dense_32/Tensordot/ReshapeReshape dense_32/Tensordot/transpose:y:0!dense_32/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????¦
dense_32/Tensordot/MatMulMatMul#dense_32/Tensordot/Reshape:output:0)dense_32/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????e
dense_32/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_32/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Λ
dense_32/Tensordot/concat_1ConcatV2$dense_32/Tensordot/GatherV2:output:0#dense_32/Tensordot/Const_2:output:0)dense_32/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
: 
dense_32/TensordotReshape#dense_32/Tensordot/MatMul:product:0$dense_32/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:?????????Δ
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_32/BiasAddBiasAdddense_32/Tensordot:output:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δh
dense_32/ReluReludense_32/BiasAdd:output:0*
T0*-
_output_shapes
:?????????Δt
dropout_25/IdentityIdentitydense_32/Relu:activations:0*
T0*-
_output_shapes
:?????????Δ
!dense_33/Tensordot/ReadVariableOpReadVariableOp*dense_33_tensordot_readvariableop_resource* 
_output_shapes
:
*
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
value	B : ί
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
value	B : γ
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
valueB: 
dense_33/Tensordot/ProdProd$dense_33/Tensordot/GatherV2:output:0!dense_33/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_33/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_33/Tensordot/Prod_1Prod&dense_33/Tensordot/GatherV2_1:output:0#dense_33/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_33/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ΐ
dense_33/Tensordot/concatConcatV2 dense_33/Tensordot/free:output:0 dense_33/Tensordot/axes:output:0'dense_33/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_33/Tensordot/stackPack dense_33/Tensordot/Prod:output:0"dense_33/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:£
dense_33/Tensordot/transpose	Transposedropout_25/Identity:output:0"dense_33/Tensordot/concat:output:0*
T0*-
_output_shapes
:?????????Δ₯
dense_33/Tensordot/ReshapeReshape dense_33/Tensordot/transpose:y:0!dense_33/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????¦
dense_33/Tensordot/MatMulMatMul#dense_33/Tensordot/Reshape:output:0)dense_33/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????e
dense_33/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_33/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Λ
dense_33/Tensordot/concat_1ConcatV2$dense_33/Tensordot/GatherV2:output:0#dense_33/Tensordot/Const_2:output:0)dense_33/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
: 
dense_33/TensordotReshape#dense_33/Tensordot/MatMul:product:0$dense_33/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:?????????Δ
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_33/BiasAddBiasAdddense_33/Tensordot:output:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δh
dense_33/ReluReludense_33/BiasAdd:output:0*
T0*-
_output_shapes
:?????????Δt
dropout_26/IdentityIdentitydense_33/Relu:activations:0*
T0*-
_output_shapes
:?????????Δy

add_23/addAddV2dropout_26/Identity:output:0add_22/add:z:0*
T0*-
_output_shapes
:?????????Δ`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? b  z
flatten_3/ReshapeReshapeadd_23/add:z:0flatten_3/Const:output:0*
T0*)
_output_shapes
:?????????Δ
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*!
_output_shapes
:Δ*
dtype0
dense_34/MatMulMatMulflatten_3/Reshape:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????c
dense_34/ReluReludense_34/BiasAdd:output:0*
T0*(
_output_shapes
:?????????o
dropout_27/IdentityIdentitydense_34/Relu:activations:0*
T0*(
_output_shapes
:?????????
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_35/MatMulMatMuldropout_27/Identity:output:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_35/SoftmaxSoftmaxdense_35/BiasAdd:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_35/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????	
NoOpNoOp ^dense_32/BiasAdd/ReadVariableOp"^dense_32/Tensordot/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp"^dense_33/Tensordot/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp0^layer_normalization_22/batchnorm/ReadVariableOp4^layer_normalization_22/batchnorm/mul/ReadVariableOp0^layer_normalization_23/batchnorm/ReadVariableOp4^layer_normalization_23/batchnorm/mul/ReadVariableOp<^multi_head_attention_11/attention_output/add/ReadVariableOpF^multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp/^multi_head_attention_11/key/add/ReadVariableOp9^multi_head_attention_11/key/einsum/Einsum/ReadVariableOp1^multi_head_attention_11/query/add/ReadVariableOp;^multi_head_attention_11/query/einsum/Einsum/ReadVariableOp1^multi_head_attention_11/value/add/ReadVariableOp;^multi_head_attention_11/value/einsum/Einsum/ReadVariableOp0^patch_encoder_3/dense_31/BiasAdd/ReadVariableOp2^patch_encoder_3/dense_31/Tensordot/ReadVariableOp-^patch_encoder_3/embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesq
o:?????????ΰΰ::: : : : : : : : : : : : : : : : : : : : : : : 2B
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
;multi_head_attention_11/attention_output/add/ReadVariableOp;multi_head_attention_11/attention_output/add/ReadVariableOp2
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
:?????????ΰΰ
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
₯	
e
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_58936

inputs
identityg
resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"ΰ   ΰ   ±
 resizing_3/resize/ResizeBilinearResizeBilinearinputsresizing_3/resize/size:output:0*
T0*1
_output_shapes
:?????????ΰΰ*
half_pixel_centers(W
rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;Y
rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ’
rescaling_3/mulMul1resizing_3/resize/ResizeBilinear:resized_images:0rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:?????????ΰΰ
rescaling_3/addAddV2rescaling_3/mul:z:0rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:?????????ΰΰe
IdentityIdentityrescaling_3/add:z:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
Δ
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_57211

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? b  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:?????????ΔZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:?????????Δ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????Δ:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs

c
*__inference_dropout_26_layer_call_fn_59699

inputs
identity’StatefulPartitionedCallΖ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_26_layer_call_and_return_conditional_losses_57384u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:?????????Δ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????Δ22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
Έ
ύ
C__inference_dense_33_layer_call_and_return_conditional_losses_57184

inputs5
!tensordot_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
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
value	B : »
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
value	B : Ώ
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
value	B : 
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
:?????????Δ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:?????????Δs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????ΔV
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:?????????Δg
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:?????????Δz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????Δ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
π
c
E__inference_dropout_26_layer_call_and_return_conditional_losses_59704

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:?????????Δa

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:?????????Δ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????Δ:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs

Ε
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_56693

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity’stateful_uniform/RngReadAndSkip;
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
valueB:Ρ
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
ύ????????j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
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
ώ????????j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
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
 *ΫIΐY
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ΫI@`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
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
: Ά
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
valueB:¬
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
valueB:’
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????Y
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
valueB:‘
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
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
valueB"      Τ
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
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
valueB"      Τ
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????v
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
valueB"      Φ
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
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
valueB"      Τ
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
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
valueB"      Τ
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

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
valueB"      Ψ
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

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
 *    
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????E
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
valueB:ο
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
 *    ‘
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:?????????ΰΰ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:?????????ΰΰh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ΰΰ: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
Ν
I
-__inference_random_flip_3_layer_call_fn_59835

inputs
identity½
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_56406j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs


Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_57103

inputs4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity’batchnorm/ReadVariableOp’batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:?????????Δ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*-
_output_shapes
:?????????Δl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¬
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:?????????Δb
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:?????????Δ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δi
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:?????????Δx
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*-
_output_shapes
:?????????Δw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*-
_output_shapes
:?????????Δx
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:?????????Δh
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*-
_output_shapes
:?????????Δ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????Δ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
£

υ
C__inference_dense_35_layer_call_and_return_conditional_losses_57248

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Π	

L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_58971

inputs
normalization_3_sub_y
normalization_3_sqrt_x
identityu
normalization_3/subSubinputsnormalization_3_sub_y*
T0*1
_output_shapes
:?????????ΰΰe
normalization_3/SqrtSqrtnormalization_3_sqrt_x*
T0*&
_output_shapes
:^
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*1
_output_shapes
:?????????ΰΰm
IdentityIdentitynormalization_3/truediv:z:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????ΰΰ:::Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
·
F
*__inference_dropout_25_layer_call_fn_59627

inputs
identityΆ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_57151f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:?????????Δ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????Δ:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs

h
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_59973

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
ͺ

ψ
C__inference_dense_34_layer_call_and_return_conditional_losses_57224

inputs3
matmul_readvariableop_resource:Δ.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:Δ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:?????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????Δ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:?????????Δ
 
_user_specified_nameinputs

h
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_56412

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
δ
e
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56340

inputs
identityΕ
resizing_3/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_3_layer_call_and_return_conditional_losses_56327δ
rescaling_3/PartitionedCallPartitionedCall#resizing_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_rescaling_3_layer_call_and_return_conditional_losses_56337v
IdentityIdentity$rescaling_3/PartitionedCall:output:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
δ
e
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56368

inputs
identityΕ
resizing_3/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_3_layer_call_and_return_conditional_losses_56327δ
rescaling_3/PartitionedCallPartitionedCall#resizing_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_rescaling_3_layer_call_and_return_conditional_losses_56337v
IdentityIdentity$rescaling_3/PartitionedCall:output:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
£

d
E__inference_dropout_26_layer_call_and_return_conditional_losses_57384

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:?????????ΔC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:?????????Δ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=¬
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:?????????Δu
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:?????????Δo
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:?????????Δ_
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:?????????Δ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????Δ:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
ΐ
R
&__inference_add_22_layer_call_fn_59545
inputs_0
inputs_1
identityΏ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_add_22_layer_call_and_return_conditional_losses_57079f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:?????????Δ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????Δ:?????????Δ:W S
-
_output_shapes
:?????????Δ
"
_user_specified_name
inputs/0:WS
-
_output_shapes
:?????????Δ
"
_user_specified_name
inputs/1

ψ
7__inference_multi_head_attention_11_layer_call_fn_59470	
query	
value
unknown:
	unknown_0:	!
	unknown_1:
	unknown_2:	!
	unknown_3:
	unknown_4:	!
	unknown_5:
	unknown_6:	
identity’StatefulPartitionedCallΒ
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_57507u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:?????????Δ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:?????????Δ:?????????Δ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
-
_output_shapes
:?????????Δ

_user_specified_namequery:TP
-
_output_shapes
:?????????Δ

_user_specified_namevalue

d
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_60107

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
ν
T
.__inference_Resize_Rescale_layer_call_fn_56376
resizing_3_input
identityΘ
PartitionedCallPartitionedCallresizing_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56368j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:c _
1
_output_shapes
:?????????ΰΰ
*
_user_specified_nameresizing_3_input
ΰ
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
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask½
ExtractImagePatchesExtractImagePatchesimages*
T0*0
_output_shapes
:?????????*
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
?????????R
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
ReshapeReshapeExtractImagePatches:patches:0Reshape/shape:output:0*
T0*5
_output_shapes#
!:??????????????????f
IdentityIdentityReshape:output:0*
T0*5
_output_shapes#
!:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameimages
υ
c
*__inference_dropout_27_layer_call_fn_59769

inputs
identity’StatefulPartitionedCallΑ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_27_layer_call_and_return_conditional_losses_57338p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
§Ψ
δ;
!__inference__traced_restore_60787
file_prefix<
-assignvariableop_layer_normalization_22_gamma:	=
.assignvariableop_1_layer_normalization_22_beta:	>
/assignvariableop_2_layer_normalization_23_gamma:	=
.assignvariableop_3_layer_normalization_23_beta:	6
"assignvariableop_4_dense_32_kernel:
/
 assignvariableop_5_dense_32_bias:	6
"assignvariableop_6_dense_33_kernel:
/
 assignvariableop_7_dense_33_bias:	7
"assignvariableop_8_dense_34_kernel:Δ/
 assignvariableop_9_dense_34_bias:	6
#assignvariableop_10_dense_35_kernel:	/
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
@
1assignvariableop_21_patch_encoder_3_dense_31_bias:	N
:assignvariableop_22_patch_encoder_3_embedding_3_embeddings:
ΔP
8assignvariableop_23_multi_head_attention_11_query_kernel:I
6assignvariableop_24_multi_head_attention_11_query_bias:	N
6assignvariableop_25_multi_head_attention_11_key_kernel:G
4assignvariableop_26_multi_head_attention_11_key_bias:	P
8assignvariableop_27_multi_head_attention_11_value_kernel:I
6assignvariableop_28_multi_head_attention_11_value_bias:	[
Cassignvariableop_29_multi_head_attention_11_attention_output_kernel:P
Aassignvariableop_30_multi_head_attention_11_attention_output_bias:	#
assignvariableop_31_total: #
assignvariableop_32_count: %
assignvariableop_33_total_1: %
assignvariableop_34_count_1: R
Dassignvariableop_35_model_3_data_augmentation_random_flip_3_statevar:	V
Hassignvariableop_36_model_3_data_augmentation_random_rotation_3_statevar:	R
Dassignvariableop_37_model_3_data_augmentation_random_zoom_3_statevar:	F
7assignvariableop_38_adam_layer_normalization_22_gamma_m:	E
6assignvariableop_39_adam_layer_normalization_22_beta_m:	F
7assignvariableop_40_adam_layer_normalization_23_gamma_m:	E
6assignvariableop_41_adam_layer_normalization_23_beta_m:	>
*assignvariableop_42_adam_dense_32_kernel_m:
7
(assignvariableop_43_adam_dense_32_bias_m:	>
*assignvariableop_44_adam_dense_33_kernel_m:
7
(assignvariableop_45_adam_dense_33_bias_m:	?
*assignvariableop_46_adam_dense_34_kernel_m:Δ7
(assignvariableop_47_adam_dense_34_bias_m:	=
*assignvariableop_48_adam_dense_35_kernel_m:	6
(assignvariableop_49_adam_dense_35_bias_m:N
:assignvariableop_50_adam_patch_encoder_3_dense_31_kernel_m:
G
8assignvariableop_51_adam_patch_encoder_3_dense_31_bias_m:	U
Aassignvariableop_52_adam_patch_encoder_3_embedding_3_embeddings_m:
ΔW
?assignvariableop_53_adam_multi_head_attention_11_query_kernel_m:P
=assignvariableop_54_adam_multi_head_attention_11_query_bias_m:	U
=assignvariableop_55_adam_multi_head_attention_11_key_kernel_m:N
;assignvariableop_56_adam_multi_head_attention_11_key_bias_m:	W
?assignvariableop_57_adam_multi_head_attention_11_value_kernel_m:P
=assignvariableop_58_adam_multi_head_attention_11_value_bias_m:	b
Jassignvariableop_59_adam_multi_head_attention_11_attention_output_kernel_m:W
Hassignvariableop_60_adam_multi_head_attention_11_attention_output_bias_m:	F
7assignvariableop_61_adam_layer_normalization_22_gamma_v:	E
6assignvariableop_62_adam_layer_normalization_22_beta_v:	F
7assignvariableop_63_adam_layer_normalization_23_gamma_v:	E
6assignvariableop_64_adam_layer_normalization_23_beta_v:	>
*assignvariableop_65_adam_dense_32_kernel_v:
7
(assignvariableop_66_adam_dense_32_bias_v:	>
*assignvariableop_67_adam_dense_33_kernel_v:
7
(assignvariableop_68_adam_dense_33_bias_v:	?
*assignvariableop_69_adam_dense_34_kernel_v:Δ7
(assignvariableop_70_adam_dense_34_bias_v:	=
*assignvariableop_71_adam_dense_35_kernel_v:	6
(assignvariableop_72_adam_dense_35_bias_v:N
:assignvariableop_73_adam_patch_encoder_3_dense_31_kernel_v:
G
8assignvariableop_74_adam_patch_encoder_3_dense_31_bias_v:	U
Aassignvariableop_75_adam_patch_encoder_3_embedding_3_embeddings_v:
ΔW
?assignvariableop_76_adam_multi_head_attention_11_query_kernel_v:P
=assignvariableop_77_adam_multi_head_attention_11_query_bias_v:	U
=assignvariableop_78_adam_multi_head_attention_11_key_kernel_v:N
;assignvariableop_79_adam_multi_head_attention_11_key_bias_v:	W
?assignvariableop_80_adam_multi_head_attention_11_value_kernel_v:P
=assignvariableop_81_adam_multi_head_attention_11_value_bias_v:	b
Jassignvariableop_82_adam_multi_head_attention_11_attention_output_kernel_v:W
Hassignvariableop_83_adam_multi_head_attention_11_attention_output_bias_v:	
identity_85’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_12’AssignVariableOp_13’AssignVariableOp_14’AssignVariableOp_15’AssignVariableOp_16’AssignVariableOp_17’AssignVariableOp_18’AssignVariableOp_19’AssignVariableOp_2’AssignVariableOp_20’AssignVariableOp_21’AssignVariableOp_22’AssignVariableOp_23’AssignVariableOp_24’AssignVariableOp_25’AssignVariableOp_26’AssignVariableOp_27’AssignVariableOp_28’AssignVariableOp_29’AssignVariableOp_3’AssignVariableOp_30’AssignVariableOp_31’AssignVariableOp_32’AssignVariableOp_33’AssignVariableOp_34’AssignVariableOp_35’AssignVariableOp_36’AssignVariableOp_37’AssignVariableOp_38’AssignVariableOp_39’AssignVariableOp_4’AssignVariableOp_40’AssignVariableOp_41’AssignVariableOp_42’AssignVariableOp_43’AssignVariableOp_44’AssignVariableOp_45’AssignVariableOp_46’AssignVariableOp_47’AssignVariableOp_48’AssignVariableOp_49’AssignVariableOp_5’AssignVariableOp_50’AssignVariableOp_51’AssignVariableOp_52’AssignVariableOp_53’AssignVariableOp_54’AssignVariableOp_55’AssignVariableOp_56’AssignVariableOp_57’AssignVariableOp_58’AssignVariableOp_59’AssignVariableOp_6’AssignVariableOp_60’AssignVariableOp_61’AssignVariableOp_62’AssignVariableOp_63’AssignVariableOp_64’AssignVariableOp_65’AssignVariableOp_66’AssignVariableOp_67’AssignVariableOp_68’AssignVariableOp_69’AssignVariableOp_7’AssignVariableOp_70’AssignVariableOp_71’AssignVariableOp_72’AssignVariableOp_73’AssignVariableOp_74’AssignVariableOp_75’AssignVariableOp_76’AssignVariableOp_77’AssignVariableOp_78’AssignVariableOp_79’AssignVariableOp_8’AssignVariableOp_80’AssignVariableOp_81’AssignVariableOp_82’AssignVariableOp_83’AssignVariableOp_9έ+
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*+
valueω*Bφ*UB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-0/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-0/layer-3/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*Ώ
value΅B²UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Κ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*κ
_output_shapesΧ
Τ:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*c
dtypesY
W2U					[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp-assignvariableop_layer_normalization_22_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp.assignvariableop_1_layer_normalization_22_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp/assignvariableop_2_layer_normalization_23_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp.assignvariableop_3_layer_normalization_23_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_32_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_32_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_33_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_33_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_34_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_34_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_35_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_35_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_iterIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_beta_2Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp&assignvariableop_16_adam_learning_rateIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp(assignvariableop_17_normalization_3_meanIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp,assignvariableop_18_normalization_3_varianceIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_19AssignVariableOp)assignvariableop_19_normalization_3_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:€
AssignVariableOp_20AssignVariableOp3assignvariableop_20_patch_encoder_3_dense_31_kernelIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_21AssignVariableOp1assignvariableop_21_patch_encoder_3_dense_31_biasIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:«
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
:§
AssignVariableOp_24AssignVariableOp6assignvariableop_24_multi_head_attention_11_query_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_25AssignVariableOp6assignvariableop_25_multi_head_attention_11_key_kernelIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:₯
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
:§
AssignVariableOp_28AssignVariableOp6assignvariableop_28_multi_head_attention_11_value_biasIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:΄
AssignVariableOp_29AssignVariableOpCassignvariableop_29_multi_head_attention_11_attention_output_kernelIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_30AssignVariableOpAassignvariableop_30_multi_head_attention_11_attention_output_biasIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOpassignvariableop_31_totalIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOpassignvariableop_32_countIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOpassignvariableop_33_total_1Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOpassignvariableop_34_count_1Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0	*
_output_shapes
:΅
AssignVariableOp_35AssignVariableOpDassignvariableop_35_model_3_data_augmentation_random_flip_3_statevarIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0	*
_output_shapes
:Ή
AssignVariableOp_36AssignVariableOpHassignvariableop_36_model_3_data_augmentation_random_rotation_3_statevarIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0	*
_output_shapes
:΅
AssignVariableOp_37AssignVariableOpDassignvariableop_37_model_3_data_augmentation_random_zoom_3_statevarIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_38AssignVariableOp7assignvariableop_38_adam_layer_normalization_22_gamma_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_39AssignVariableOp6assignvariableop_39_adam_layer_normalization_22_beta_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_40AssignVariableOp7assignvariableop_40_adam_layer_normalization_23_gamma_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_41AssignVariableOp6assignvariableop_41_adam_layer_normalization_23_beta_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_dense_32_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_dense_32_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_dense_33_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_45AssignVariableOp(assignvariableop_45_adam_dense_33_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adam_dense_34_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp(assignvariableop_47_adam_dense_34_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp*assignvariableop_48_adam_dense_35_kernel_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_dense_35_bias_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:«
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
:²
AssignVariableOp_52AssignVariableOpAassignvariableop_52_adam_patch_encoder_3_embedding_3_embeddings_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_53AssignVariableOp?assignvariableop_53_adam_multi_head_attention_11_query_kernel_mIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOp=assignvariableop_54_adam_multi_head_attention_11_query_bias_mIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOp=assignvariableop_55_adam_multi_head_attention_11_key_kernel_mIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_56AssignVariableOp;assignvariableop_56_adam_multi_head_attention_11_key_bias_mIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_57AssignVariableOp?assignvariableop_57_adam_multi_head_attention_11_value_kernel_mIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp=assignvariableop_58_adam_multi_head_attention_11_value_bias_mIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_59AssignVariableOpJassignvariableop_59_adam_multi_head_attention_11_attention_output_kernel_mIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:Ή
AssignVariableOp_60AssignVariableOpHassignvariableop_60_adam_multi_head_attention_11_attention_output_bias_mIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_61AssignVariableOp7assignvariableop_61_adam_layer_normalization_22_gamma_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_62AssignVariableOp6assignvariableop_62_adam_layer_normalization_22_beta_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_63AssignVariableOp7assignvariableop_63_adam_layer_normalization_23_gamma_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_64AssignVariableOp6assignvariableop_64_adam_layer_normalization_23_beta_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_65AssignVariableOp*assignvariableop_65_adam_dense_32_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_66AssignVariableOp(assignvariableop_66_adam_dense_32_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_67AssignVariableOp*assignvariableop_67_adam_dense_33_kernel_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_68AssignVariableOp(assignvariableop_68_adam_dense_33_bias_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_69AssignVariableOp*assignvariableop_69_adam_dense_34_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_70AssignVariableOp(assignvariableop_70_adam_dense_34_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_71AssignVariableOp*assignvariableop_71_adam_dense_35_kernel_vIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_72AssignVariableOp(assignvariableop_72_adam_dense_35_bias_vIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:«
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
:²
AssignVariableOp_75AssignVariableOpAassignvariableop_75_adam_patch_encoder_3_embedding_3_embeddings_vIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_76AssignVariableOp?assignvariableop_76_adam_multi_head_attention_11_query_kernel_vIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_77AssignVariableOp=assignvariableop_77_adam_multi_head_attention_11_query_bias_vIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_78AssignVariableOp=assignvariableop_78_adam_multi_head_attention_11_key_kernel_vIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_79AssignVariableOp;assignvariableop_79_adam_multi_head_attention_11_key_bias_vIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_80AssignVariableOp?assignvariableop_80_adam_multi_head_attention_11_value_kernel_vIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_81AssignVariableOp=assignvariableop_81_adam_multi_head_attention_11_value_bias_vIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:»
AssignVariableOp_82AssignVariableOpJassignvariableop_82_adam_multi_head_attention_11_attention_output_kernel_vIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:Ή
AssignVariableOp_83AssignVariableOpHassignvariableop_83_adam_multi_head_attention_11_attention_output_bias_vIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 
Identity_84Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_85IdentityIdentity_84:output:0^NoOp_1*
T0*
_output_shapes
: τ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_85Identity_85:output:0*Ώ
_input_shapes­
ͺ: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
Β
}
-__inference_random_flip_3_layer_call_fn_59842

inputs
unknown:	
identity’StatefulPartitionedCallΧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_56817y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????ΰΰ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ΰΰ: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs

d
H__inference_random_flip_3_layer_call_and_return_conditional_losses_59846

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
―
a
E__inference_resizing_3_layer_call_and_return_conditional_losses_56327

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"ΰ   ΰ   
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:?????????ΰΰ*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
Λ
ό
'__inference_model_3_layer_call_fn_57808
input_4
unknown
	unknown_0
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:

	unknown_5:	
	unknown_6:
Δ
	unknown_7:	
	unknown_8:	!
	unknown_9:

unknown_10:	"

unknown_11:

unknown_12:	"

unknown_13:

unknown_14:	"

unknown_15:

unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:


unknown_20:	

unknown_21:


unknown_22:	

unknown_23:Δ

unknown_24:	

unknown_25:	

unknown_26:
identity’StatefulPartitionedCallΆ
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
:?????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_57688o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesw
u:?????????ΰΰ::: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:?????????ΰΰ
!
_user_specified_name	input_4:,(
&
_output_shapes
::,(
&
_output_shapes
:
Κ

(__inference_dense_34_layer_call_fn_59748

inputs
unknown:Δ
	unknown_0:	
identity’StatefulPartitionedCallΩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_57224p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????Δ: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
Ν
­
'__inference_model_3_layer_call_fn_58017

inputs
unknown
	unknown_0
	unknown_1:

	unknown_2:	
	unknown_3:
Δ
	unknown_4:	
	unknown_5:	!
	unknown_6:
	unknown_7:	!
	unknown_8:
	unknown_9:	"

unknown_10:

unknown_11:	"

unknown_12:

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:


unknown_17:	

unknown_18:


unknown_19:	

unknown_20:Δ

unknown_21:	

unknown_22:	

unknown_23:
identity’StatefulPartitionedCall
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
:?????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_57255o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesq
o:?????????ΰΰ::: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
Γ

(__inference_dense_35_layer_call_fn_59795

inputs
unknown:	
	unknown_0:
identity’StatefulPartitionedCallΨ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_57248o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
ϋ	
d
E__inference_dropout_27_layer_call_and_return_conditional_losses_59786

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:?????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ϋ

(__inference_dense_33_layer_call_fn_59658

inputs
unknown:

	unknown_0:	
identity’StatefulPartitionedCallή
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_57184u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:?????????Δ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????Δ: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
ρV
Π
B__inference_model_3_layer_call_and_return_conditional_losses_57688

inputs
data_augmentation_57615
data_augmentation_57617%
data_augmentation_57619:	%
data_augmentation_57621:	%
data_augmentation_57623:	)
patch_encoder_3_57627:
$
patch_encoder_3_57629:	)
patch_encoder_3_57631:
Δ+
layer_normalization_22_57634:	+
layer_normalization_22_57636:	5
multi_head_attention_11_57639:0
multi_head_attention_11_57641:	5
multi_head_attention_11_57643:0
multi_head_attention_11_57645:	5
multi_head_attention_11_57647:0
multi_head_attention_11_57649:	5
multi_head_attention_11_57651:,
multi_head_attention_11_57653:	+
layer_normalization_23_57657:	+
layer_normalization_23_57659:	"
dense_32_57662:

dense_32_57664:	"
dense_33_57668:

dense_33_57670:	#
dense_34_57676:Δ
dense_34_57678:	!
dense_35_57682:	
dense_35_57684:
identity’)Data_Augmentation/StatefulPartitionedCall’ dense_32/StatefulPartitionedCall’ dense_33/StatefulPartitionedCall’ dense_34/StatefulPartitionedCall’ dense_35/StatefulPartitionedCall’"dropout_25/StatefulPartitionedCall’"dropout_26/StatefulPartitionedCall’"dropout_27/StatefulPartitionedCall’.layer_normalization_22/StatefulPartitionedCall’.layer_normalization_23/StatefulPartitionedCall’/multi_head_attention_11/StatefulPartitionedCall’'patch_encoder_3/StatefulPartitionedCallΝ
Resize_Rescale/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56368
)Data_Augmentation/StatefulPartitionedCallStatefulPartitionedCall'Resize_Rescale/PartitionedCall:output:0data_augmentation_57615data_augmentation_57617data_augmentation_57619data_augmentation_57621data_augmentation_57623*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56853σ
patches_7/PartitionedCallPartitionedCall2Data_Augmentation/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_patches_7_layer_call_and_return_conditional_losses_56942Δ
'patch_encoder_3/StatefulPartitionedCallStatefulPartitionedCall"patches_7/PartitionedCall:output:0patch_encoder_3_57627patch_encoder_3_57629patch_encoder_3_57631*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_patch_encoder_3_layer_call_and_return_conditional_losses_56984Υ
.layer_normalization_22/StatefulPartitionedCallStatefulPartitionedCall0patch_encoder_3/StatefulPartitionedCall:output:0layer_normalization_22_57634layer_normalization_22_57636*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_57014ΰ
/multi_head_attention_11/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_22/StatefulPartitionedCall:output:07layer_normalization_22/StatefulPartitionedCall:output:0multi_head_attention_11_57639multi_head_attention_11_57641multi_head_attention_11_57643multi_head_attention_11_57645multi_head_attention_11_57647multi_head_attention_11_57649multi_head_attention_11_57651multi_head_attention_11_57653*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_57507
add_22/PartitionedCallPartitionedCall8multi_head_attention_11/StatefulPartitionedCall:output:00patch_encoder_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_add_22_layer_call_and_return_conditional_losses_57079Δ
.layer_normalization_23/StatefulPartitionedCallStatefulPartitionedCalladd_22/PartitionedCall:output:0layer_normalization_23_57657layer_normalization_23_57659*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_57103€
 dense_32/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_23/StatefulPartitionedCall:output:0dense_32_57662dense_32_57664*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_32_layer_call_and_return_conditional_losses_57140τ
"dropout_25/StatefulPartitionedCallStatefulPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_57417
 dense_33/StatefulPartitionedCallStatefulPartitionedCall+dropout_25/StatefulPartitionedCall:output:0dense_33_57668dense_33_57670*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_57184
"dropout_26/StatefulPartitionedCallStatefulPartitionedCall)dense_33/StatefulPartitionedCall:output:0#^dropout_25/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_26_layer_call_and_return_conditional_losses_57384
add_23/PartitionedCallPartitionedCall+dropout_26/StatefulPartitionedCall:output:0add_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_add_23_layer_call_and_return_conditional_losses_57203Τ
flatten_3/PartitionedCallPartitionedCalladd_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_57211
 dense_34/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_34_57676dense_34_57678*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_57224
"dropout_27/StatefulPartitionedCallStatefulPartitionedCall)dense_34/StatefulPartitionedCall:output:0#^dropout_26/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_27_layer_call_and_return_conditional_losses_57338
 dense_35/StatefulPartitionedCallStatefulPartitionedCall+dropout_27/StatefulPartitionedCall:output:0dense_35_57682dense_35_57684*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_57248x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????«
NoOpNoOp*^Data_Augmentation/StatefulPartitionedCall!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall#^dropout_25/StatefulPartitionedCall#^dropout_26/StatefulPartitionedCall#^dropout_27/StatefulPartitionedCall/^layer_normalization_22/StatefulPartitionedCall/^layer_normalization_23/StatefulPartitionedCall0^multi_head_attention_11/StatefulPartitionedCall(^patch_encoder_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesw
u:?????????ΰΰ::: : : : : : : : : : : : : : : : : : : : : : : : : : 2V
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
:?????????ΰΰ
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
β
m
A__inference_add_23_layer_call_and_return_conditional_losses_59728
inputs_0
inputs_1
identityX
addAddV2inputs_0inputs_1*
T0*-
_output_shapes
:?????????ΔU
IdentityIdentityadd:z:0*
T0*-
_output_shapes
:?????????Δ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????Δ:?????????Δ:W S
-
_output_shapes
:?????????Δ
"
_user_specified_name
inputs/0:WS
-
_output_shapes
:?????????Δ
"
_user_specified_name
inputs/1


Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_59582

inputs4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity’batchnorm/ReadVariableOp’batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:?????????Δ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*-
_output_shapes
:?????????Δl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¬
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:?????????Δb
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:?????????Δ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δi
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:?????????Δx
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*-
_output_shapes
:?????????Δw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*-
_output_shapes
:?????????Δx
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:?????????Δh
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*-
_output_shapes
:?????????Δ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????Δ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
Ϊ
k
A__inference_add_22_layer_call_and_return_conditional_losses_57079

inputs
inputs_1
identityV
addAddV2inputsinputs_1*
T0*-
_output_shapes
:?????????ΔU
IdentityIdentityadd:z:0*
T0*-
_output_shapes
:?????????Δ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????Δ:?????????Δ:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs:UQ
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
Υ
M
1__inference_random_rotation_3_layer_call_fn_59962

inputs
identityΑ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_56412j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
λ

L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56853

inputs
normalization_3_sub_y
normalization_3_sqrt_x!
random_flip_3_56843:	%
random_rotation_3_56846:	!
random_zoom_3_56849:	
identity’%random_flip_3/StatefulPartitionedCall’)random_rotation_3/StatefulPartitionedCall’%random_zoom_3/StatefulPartitionedCallu
normalization_3/subSubinputsnormalization_3_sub_y*
T0*1
_output_shapes
:?????????ΰΰe
normalization_3/SqrtSqrtnormalization_3_sqrt_x*
T0*&
_output_shapes
:^
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*1
_output_shapes
:?????????ΰΰ
%random_flip_3/StatefulPartitionedCallStatefulPartitionedCallnormalization_3/truediv:z:0random_flip_3_56843*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_56817₯
)random_rotation_3/StatefulPartitionedCallStatefulPartitionedCall.random_flip_3/StatefulPartitionedCall:output:0random_rotation_3_56846*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_56693
%random_zoom_3/StatefulPartitionedCallStatefulPartitionedCall2random_rotation_3/StatefulPartitionedCall:output:0random_zoom_3_56849*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_56562
IdentityIdentity.random_zoom_3/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????ΰΰΒ
NoOpNoOp&^random_flip_3/StatefulPartitionedCall*^random_rotation_3/StatefulPartitionedCall&^random_zoom_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????ΰΰ::: : : 2N
%random_flip_3/StatefulPartitionedCall%random_flip_3/StatefulPartitionedCall2V
)random_rotation_3/StatefulPartitionedCall)random_rotation_3/StatefulPartitionedCall2N
%random_zoom_3/StatefulPartitionedCall%random_zoom_3/StatefulPartitionedCall:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:


L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56915
normalization_3_input
normalization_3_sub_y
normalization_3_sqrt_x!
random_flip_3_56905:	%
random_rotation_3_56908:	!
random_zoom_3_56911:	
identity’%random_flip_3/StatefulPartitionedCall’)random_rotation_3/StatefulPartitionedCall’%random_zoom_3/StatefulPartitionedCall
normalization_3/subSubnormalization_3_inputnormalization_3_sub_y*
T0*1
_output_shapes
:?????????ΰΰe
normalization_3/SqrtSqrtnormalization_3_sqrt_x*
T0*&
_output_shapes
:^
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*1
_output_shapes
:?????????ΰΰ
%random_flip_3/StatefulPartitionedCallStatefulPartitionedCallnormalization_3/truediv:z:0random_flip_3_56905*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_56817₯
)random_rotation_3/StatefulPartitionedCallStatefulPartitionedCall.random_flip_3/StatefulPartitionedCall:output:0random_rotation_3_56908*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_56693
%random_zoom_3/StatefulPartitionedCallStatefulPartitionedCall2random_rotation_3/StatefulPartitionedCall:output:0random_zoom_3_56911*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_56562
IdentityIdentity.random_zoom_3/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????ΰΰΒ
NoOpNoOp&^random_flip_3/StatefulPartitionedCall*^random_rotation_3/StatefulPartitionedCall&^random_zoom_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????ΰΰ::: : : 2N
%random_flip_3/StatefulPartitionedCall%random_flip_3/StatefulPartitionedCall2V
)random_rotation_3/StatefulPartitionedCall)random_rotation_3/StatefulPartitionedCall2N
%random_zoom_3/StatefulPartitionedCall%random_zoom_3/StatefulPartitionedCall:h d
1
_output_shapes
:?????????ΰΰ
/
_user_specified_namenormalization_3_input:,(
&
_output_shapes
::,(
&
_output_shapes
:

c
*__inference_dropout_25_layer_call_fn_59632

inputs
identity’StatefulPartitionedCallΖ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_57417u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:?????????Δ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????Δ22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
Έ
ύ
C__inference_dense_32_layer_call_and_return_conditional_losses_59622

inputs5
!tensordot_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
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
value	B : »
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
value	B : Ώ
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
value	B : 
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
:?????????Δ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:?????????Δs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????ΔV
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:?????????Δg
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:?????????Δz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????Δ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs


Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_57014

inputs4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity’batchnorm/ReadVariableOp’batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:?????????Δ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*-
_output_shapes
:?????????Δl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¬
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:?????????Δb
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:?????????Δ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δi
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:?????????Δx
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*-
_output_shapes
:?????????Δw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*-
_output_shapes
:?????????Δx
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:?????????Δh
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*-
_output_shapes
:?????????Δ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????Δ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
Ν
E
)__inference_patches_7_layer_call_fn_59330

images
identity½
PartitionedCallPartitionedCallimages*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_patches_7_layer_call_and_return_conditional_losses_56942n
IdentityIdentityPartitionedCall:output:0*
T0*5
_output_shapes#
!:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameimages
½
ε
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_60233

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity’stateful_uniform/RngReadAndSkip’!stateful_uniform_1/RngReadAndSkip;
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
valueB:Ρ
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
ύ????????j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
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
ώ????????j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
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
value	B :
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
 *ff¦?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
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
: Ά
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
valueB:¬
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
valueB:’
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????\
stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
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
 *ff¦?b
stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
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
: ή
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
valueB:Ά
 stateful_uniform_1/strided_sliceStridedSlice)stateful_uniform_1/RngReadAndSkip:value:0/stateful_uniform_1/strided_slice/stack:output:01stateful_uniform_1/strided_slice/stack_1:output:01stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
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
valueB:¬
"stateful_uniform_1/strided_slice_1StridedSlice)stateful_uniform_1/RngReadAndSkip:value:01stateful_uniform_1/strided_slice_1/stack:output:03stateful_uniform_1/strided_slice_1/stack_1:output:03stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform_1/Bitcast_1Bitcast+stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0q
/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
+stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2!stateful_uniform_1/shape:output:0%stateful_uniform_1/Bitcast_1:output:0#stateful_uniform_1/Bitcast:output:08stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????
stateful_uniform_1/subSubstateful_uniform_1/max:output:0stateful_uniform_1/min:output:0*
T0*
_output_shapes
: ‘
stateful_uniform_1/mulMul4stateful_uniform_1/StatelessRandomUniformV2:output:0stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????
stateful_uniform_1AddV2stateful_uniform_1/mul:z:0stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2stateful_uniform_1:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????P
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
valueB:
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
 *  ?_
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
valueB"         ?
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?a
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
valueB"         ?
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????v
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
valueB"         ?
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
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
 *    
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
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
 *    
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????v
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
valueB"         ?
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
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
 *    
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Λ
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????E
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
valueB:ο
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
 *    
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:?????????ΰΰ*
dtype0*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:?????????ΰΰ
NoOpNoOp ^stateful_uniform/RngReadAndSkip"^stateful_uniform_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ΰΰ: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip2F
!stateful_uniform_1/RngReadAndSkip!stateful_uniform_1/RngReadAndSkip:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
?³

 __inference__wrapped_model_56314
input_43
/model_3_data_augmentation_normalization_3_sub_y4
0model_3_data_augmentation_normalization_3_sqrt_xV
Bmodel_3_patch_encoder_3_dense_31_tensordot_readvariableop_resource:
O
@model_3_patch_encoder_3_dense_31_biasadd_readvariableop_resource:	N
:model_3_patch_encoder_3_embedding_3_embedding_lookup_56166:
ΔS
Dmodel_3_layer_normalization_22_batchnorm_mul_readvariableop_resource:	O
@model_3_layer_normalization_22_batchnorm_readvariableop_resource:	c
Kmodel_3_multi_head_attention_11_query_einsum_einsum_readvariableop_resource:T
Amodel_3_multi_head_attention_11_query_add_readvariableop_resource:	a
Imodel_3_multi_head_attention_11_key_einsum_einsum_readvariableop_resource:R
?model_3_multi_head_attention_11_key_add_readvariableop_resource:	c
Kmodel_3_multi_head_attention_11_value_einsum_einsum_readvariableop_resource:T
Amodel_3_multi_head_attention_11_value_add_readvariableop_resource:	n
Vmodel_3_multi_head_attention_11_attention_output_einsum_einsum_readvariableop_resource:[
Lmodel_3_multi_head_attention_11_attention_output_add_readvariableop_resource:	S
Dmodel_3_layer_normalization_23_batchnorm_mul_readvariableop_resource:	O
@model_3_layer_normalization_23_batchnorm_readvariableop_resource:	F
2model_3_dense_32_tensordot_readvariableop_resource:
?
0model_3_dense_32_biasadd_readvariableop_resource:	F
2model_3_dense_33_tensordot_readvariableop_resource:
?
0model_3_dense_33_biasadd_readvariableop_resource:	D
/model_3_dense_34_matmul_readvariableop_resource:Δ?
0model_3_dense_34_biasadd_readvariableop_resource:	B
/model_3_dense_35_matmul_readvariableop_resource:	>
0model_3_dense_35_biasadd_readvariableop_resource:
identity’'model_3/dense_32/BiasAdd/ReadVariableOp’)model_3/dense_32/Tensordot/ReadVariableOp’'model_3/dense_33/BiasAdd/ReadVariableOp’)model_3/dense_33/Tensordot/ReadVariableOp’'model_3/dense_34/BiasAdd/ReadVariableOp’&model_3/dense_34/MatMul/ReadVariableOp’'model_3/dense_35/BiasAdd/ReadVariableOp’&model_3/dense_35/MatMul/ReadVariableOp’7model_3/layer_normalization_22/batchnorm/ReadVariableOp’;model_3/layer_normalization_22/batchnorm/mul/ReadVariableOp’7model_3/layer_normalization_23/batchnorm/ReadVariableOp’;model_3/layer_normalization_23/batchnorm/mul/ReadVariableOp’Cmodel_3/multi_head_attention_11/attention_output/add/ReadVariableOp’Mmodel_3/multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp’6model_3/multi_head_attention_11/key/add/ReadVariableOp’@model_3/multi_head_attention_11/key/einsum/Einsum/ReadVariableOp’8model_3/multi_head_attention_11/query/add/ReadVariableOp’Bmodel_3/multi_head_attention_11/query/einsum/Einsum/ReadVariableOp’8model_3/multi_head_attention_11/value/add/ReadVariableOp’Bmodel_3/multi_head_attention_11/value/einsum/Einsum/ReadVariableOp’7model_3/patch_encoder_3/dense_31/BiasAdd/ReadVariableOp’9model_3/patch_encoder_3/dense_31/Tensordot/ReadVariableOp’4model_3/patch_encoder_3/embedding_3/embedding_lookup~
-model_3/Resize_Rescale/resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"ΰ   ΰ   ΰ
7model_3/Resize_Rescale/resizing_3/resize/ResizeBilinearResizeBilinearinput_46model_3/Resize_Rescale/resizing_3/resize/size:output:0*
T0*1
_output_shapes
:?????????ΰΰ*
half_pixel_centers(n
)model_3/Resize_Rescale/rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;p
+model_3/Resize_Rescale/rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    η
&model_3/Resize_Rescale/rescaling_3/mulMulHmodel_3/Resize_Rescale/resizing_3/resize/ResizeBilinear:resized_images:02model_3/Resize_Rescale/rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:?????????ΰΰΝ
&model_3/Resize_Rescale/rescaling_3/addAddV2*model_3/Resize_Rescale/rescaling_3/mul:z:04model_3/Resize_Rescale/rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:?????????ΰΰΝ
-model_3/Data_Augmentation/normalization_3/subSub*model_3/Resize_Rescale/rescaling_3/add:z:0/model_3_data_augmentation_normalization_3_sub_y*
T0*1
_output_shapes
:?????????ΰΰ
.model_3/Data_Augmentation/normalization_3/SqrtSqrt0model_3_data_augmentation_normalization_3_sqrt_x*
T0*&
_output_shapes
:x
3model_3/Data_Augmentation/normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3ί
1model_3/Data_Augmentation/normalization_3/MaximumMaximum2model_3/Data_Augmentation/normalization_3/Sqrt:y:0<model_3/Data_Augmentation/normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:β
1model_3/Data_Augmentation/normalization_3/truedivRealDiv1model_3/Data_Augmentation/normalization_3/sub:z:05model_3/Data_Augmentation/normalization_3/Maximum:z:0*
T0*1
_output_shapes
:?????????ΰΰ|
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
valueB:«
model_3/patches_7/strided_sliceStridedSlice model_3/patches_7/Shape:output:0.model_3/patches_7/strided_slice/stack:output:00model_3/patches_7/strided_slice/stack_1:output:00model_3/patches_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskώ
%model_3/patches_7/ExtractImagePatchesExtractImagePatches5model_3/Data_Augmentation/normalization_3/truediv:z:0*
T0*0
_output_shapes
:?????????*
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
?????????d
!model_3/patches_7/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :Χ
model_3/patches_7/Reshape/shapePack(model_3/patches_7/strided_slice:output:0*model_3/patches_7/Reshape/shape/1:output:0*model_3/patches_7/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:Ώ
model_3/patches_7/ReshapeReshape/model_3/patches_7/ExtractImagePatches:patches:0(model_3/patches_7/Reshape/shape:output:0*
T0*5
_output_shapes#
!:??????????????????e
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
B :Δe
#model_3/patch_encoder_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :Ν
model_3/patch_encoder_3/rangeRange,model_3/patch_encoder_3/range/start:output:0,model_3/patch_encoder_3/range/limit:output:0,model_3/patch_encoder_3/range/delta:output:0*
_output_shapes	
:ΔΎ
9model_3/patch_encoder_3/dense_31/Tensordot/ReadVariableOpReadVariableOpBmodel_3_patch_encoder_3_dense_31_tensordot_readvariableop_resource* 
_output_shapes
:
*
dtype0y
/model_3/patch_encoder_3/dense_31/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:
/model_3/patch_encoder_3/dense_31/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       
0model_3/patch_encoder_3/dense_31/Tensordot/ShapeShape"model_3/patches_7/Reshape:output:0*
T0*
_output_shapes
:z
8model_3/patch_encoder_3/dense_31/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ώ
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
value	B : Γ
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
valueB: Ρ
/model_3/patch_encoder_3/dense_31/Tensordot/ProdProd<model_3/patch_encoder_3/dense_31/Tensordot/GatherV2:output:09model_3/patch_encoder_3/dense_31/Tensordot/Const:output:0*
T0*
_output_shapes
: |
2model_3/patch_encoder_3/dense_31/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Χ
1model_3/patch_encoder_3/dense_31/Tensordot/Prod_1Prod>model_3/patch_encoder_3/dense_31/Tensordot/GatherV2_1:output:0;model_3/patch_encoder_3/dense_31/Tensordot/Const_1:output:0*
T0*
_output_shapes
: x
6model_3/patch_encoder_3/dense_31/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :  
1model_3/patch_encoder_3/dense_31/Tensordot/concatConcatV28model_3/patch_encoder_3/dense_31/Tensordot/free:output:08model_3/patch_encoder_3/dense_31/Tensordot/axes:output:0?model_3/patch_encoder_3/dense_31/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:ά
0model_3/patch_encoder_3/dense_31/Tensordot/stackPack8model_3/patch_encoder_3/dense_31/Tensordot/Prod:output:0:model_3/patch_encoder_3/dense_31/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:α
4model_3/patch_encoder_3/dense_31/Tensordot/transpose	Transpose"model_3/patches_7/Reshape:output:0:model_3/patch_encoder_3/dense_31/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:??????????????????ν
2model_3/patch_encoder_3/dense_31/Tensordot/ReshapeReshape8model_3/patch_encoder_3/dense_31/Tensordot/transpose:y:09model_3/patch_encoder_3/dense_31/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????ξ
1model_3/patch_encoder_3/dense_31/Tensordot/MatMulMatMul;model_3/patch_encoder_3/dense_31/Tensordot/Reshape:output:0Amodel_3/patch_encoder_3/dense_31/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????}
2model_3/patch_encoder_3/dense_31/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:z
8model_3/patch_encoder_3/dense_31/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : «
3model_3/patch_encoder_3/dense_31/Tensordot/concat_1ConcatV2<model_3/patch_encoder_3/dense_31/Tensordot/GatherV2:output:0;model_3/patch_encoder_3/dense_31/Tensordot/Const_2:output:0Amodel_3/patch_encoder_3/dense_31/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:π
*model_3/patch_encoder_3/dense_31/TensordotReshape;model_3/patch_encoder_3/dense_31/Tensordot/MatMul:product:0<model_3/patch_encoder_3/dense_31/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:??????????????????΅
7model_3/patch_encoder_3/dense_31/BiasAdd/ReadVariableOpReadVariableOp@model_3_patch_encoder_3_dense_31_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ι
(model_3/patch_encoder_3/dense_31/BiasAddBiasAdd3model_3/patch_encoder_3/dense_31/Tensordot:output:0?model_3/patch_encoder_3/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:??????????????????Έ
4model_3/patch_encoder_3/embedding_3/embedding_lookupResourceGather:model_3_patch_encoder_3_embedding_3_embedding_lookup_56166&model_3/patch_encoder_3/range:output:0*
Tindices0*M
_classC
A?loc:@model_3/patch_encoder_3/embedding_3/embedding_lookup/56166* 
_output_shapes
:
Δ*
dtype0
=model_3/patch_encoder_3/embedding_3/embedding_lookup/IdentityIdentity=model_3/patch_encoder_3/embedding_3/embedding_lookup:output:0*
T0*M
_classC
A?loc:@model_3/patch_encoder_3/embedding_3/embedding_lookup/56166* 
_output_shapes
:
ΔΎ
?model_3/patch_encoder_3/embedding_3/embedding_lookup/Identity_1IdentityFmodel_3/patch_encoder_3/embedding_3/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
ΔΩ
model_3/patch_encoder_3/addAddV21model_3/patch_encoder_3/dense_31/BiasAdd:output:0Hmodel_3/patch_encoder_3/embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:?????????Δ
=model_3/layer_normalization_22/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:δ
+model_3/layer_normalization_22/moments/meanMeanmodel_3/patch_encoder_3/add:z:0Fmodel_3/layer_normalization_22/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims(°
3model_3/layer_normalization_22/moments/StopGradientStopGradient4model_3/layer_normalization_22/moments/mean:output:0*
T0*,
_output_shapes
:?????????Δδ
8model_3/layer_normalization_22/moments/SquaredDifferenceSquaredDifferencemodel_3/patch_encoder_3/add:z:0<model_3/layer_normalization_22/moments/StopGradient:output:0*
T0*-
_output_shapes
:?????????Δ
Amodel_3/layer_normalization_22/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
/model_3/layer_normalization_22/moments/varianceMean<model_3/layer_normalization_22/moments/SquaredDifference:z:0Jmodel_3/layer_normalization_22/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims(s
.model_3/layer_normalization_22/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ί
,model_3/layer_normalization_22/batchnorm/addAddV28model_3/layer_normalization_22/moments/variance:output:07model_3/layer_normalization_22/batchnorm/add/y:output:0*
T0*,
_output_shapes
:?????????Δ 
.model_3/layer_normalization_22/batchnorm/RsqrtRsqrt0model_3/layer_normalization_22/batchnorm/add:z:0*
T0*,
_output_shapes
:?????????Δ½
;model_3/layer_normalization_22/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_3_layer_normalization_22_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0δ
,model_3/layer_normalization_22/batchnorm/mulMul2model_3/layer_normalization_22/batchnorm/Rsqrt:y:0Cmodel_3/layer_normalization_22/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δΐ
.model_3/layer_normalization_22/batchnorm/mul_1Mulmodel_3/patch_encoder_3/add:z:00model_3/layer_normalization_22/batchnorm/mul:z:0*
T0*-
_output_shapes
:?????????ΔΥ
.model_3/layer_normalization_22/batchnorm/mul_2Mul4model_3/layer_normalization_22/moments/mean:output:00model_3/layer_normalization_22/batchnorm/mul:z:0*
T0*-
_output_shapes
:?????????Δ΅
7model_3/layer_normalization_22/batchnorm/ReadVariableOpReadVariableOp@model_3_layer_normalization_22_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0ΰ
,model_3/layer_normalization_22/batchnorm/subSub?model_3/layer_normalization_22/batchnorm/ReadVariableOp:value:02model_3/layer_normalization_22/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:?????????ΔΥ
.model_3/layer_normalization_22/batchnorm/add_1AddV22model_3/layer_normalization_22/batchnorm/mul_1:z:00model_3/layer_normalization_22/batchnorm/sub:z:0*
T0*-
_output_shapes
:?????????ΔΤ
Bmodel_3/multi_head_attention_11/query/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_3_multi_head_attention_11_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0
3model_3/multi_head_attention_11/query/einsum/EinsumEinsum2model_3/layer_normalization_22/batchnorm/add_1:z:0Jmodel_3/multi_head_attention_11/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abde»
8model_3/multi_head_attention_11/query/add/ReadVariableOpReadVariableOpAmodel_3_multi_head_attention_11_query_add_readvariableop_resource*
_output_shapes
:	*
dtype0ξ
)model_3/multi_head_attention_11/query/addAddV2<model_3/multi_head_attention_11/query/einsum/Einsum:output:0@model_3/multi_head_attention_11/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ΔΠ
@model_3/multi_head_attention_11/key/einsum/Einsum/ReadVariableOpReadVariableOpImodel_3_multi_head_attention_11_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0
1model_3/multi_head_attention_11/key/einsum/EinsumEinsum2model_3/layer_normalization_22/batchnorm/add_1:z:0Hmodel_3/multi_head_attention_11/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abde·
6model_3/multi_head_attention_11/key/add/ReadVariableOpReadVariableOp?model_3_multi_head_attention_11_key_add_readvariableop_resource*
_output_shapes
:	*
dtype0θ
'model_3/multi_head_attention_11/key/addAddV2:model_3/multi_head_attention_11/key/einsum/Einsum:output:0>model_3/multi_head_attention_11/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ΔΤ
Bmodel_3/multi_head_attention_11/value/einsum/Einsum/ReadVariableOpReadVariableOpKmodel_3_multi_head_attention_11_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0
3model_3/multi_head_attention_11/value/einsum/EinsumEinsum2model_3/layer_normalization_22/batchnorm/add_1:z:0Jmodel_3/multi_head_attention_11/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abde»
8model_3/multi_head_attention_11/value/add/ReadVariableOpReadVariableOpAmodel_3_multi_head_attention_11_value_add_readvariableop_resource*
_output_shapes
:	*
dtype0ξ
)model_3/multi_head_attention_11/value/addAddV2<model_3/multi_head_attention_11/value/einsum/Einsum:output:0@model_3/multi_head_attention_11/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????Δj
%model_3/multi_head_attention_11/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *σ΅=Ε
#model_3/multi_head_attention_11/MulMul-model_3/multi_head_attention_11/query/add:z:0.model_3/multi_head_attention_11/Mul/y:output:0*
T0*1
_output_shapes
:?????????Δρ
-model_3/multi_head_attention_11/einsum/EinsumEinsum+model_3/multi_head_attention_11/key/add:z:0'model_3/multi_head_attention_11/Mul:z:0*
N*
T0*1
_output_shapes
:?????????ΔΔ*
equationaecd,abcd->acbe?
/model_3/multi_head_attention_11/softmax/SoftmaxSoftmax6model_3/multi_head_attention_11/einsum/Einsum:output:0*
T0*1
_output_shapes
:?????????ΔΔ³
0model_3/multi_head_attention_11/dropout/IdentityIdentity9model_3/multi_head_attention_11/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:?????????ΔΔ
/model_3/multi_head_attention_11/einsum_1/EinsumEinsum9model_3/multi_head_attention_11/dropout/Identity:output:0-model_3/multi_head_attention_11/value/add:z:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationacbe,aecd->abcdκ
Mmodel_3/multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpVmodel_3_multi_head_attention_11_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0·
>model_3/multi_head_attention_11/attention_output/einsum/EinsumEinsum8model_3/multi_head_attention_11/einsum_1/Einsum:output:0Umodel_3/multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:?????????Δ*
equationabcd,cde->abeΝ
Cmodel_3/multi_head_attention_11/attention_output/add/ReadVariableOpReadVariableOpLmodel_3_multi_head_attention_11_attention_output_add_readvariableop_resource*
_output_shapes	
:*
dtype0
4model_3/multi_head_attention_11/attention_output/addAddV2Gmodel_3/multi_head_attention_11/attention_output/einsum/Einsum:output:0Kmodel_3/multi_head_attention_11/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δ?
model_3/add_22/addAddV28model_3/multi_head_attention_11/attention_output/add:z:0model_3/patch_encoder_3/add:z:0*
T0*-
_output_shapes
:?????????Δ
=model_3/layer_normalization_23/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Ϋ
+model_3/layer_normalization_23/moments/meanMeanmodel_3/add_22/add:z:0Fmodel_3/layer_normalization_23/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims(°
3model_3/layer_normalization_23/moments/StopGradientStopGradient4model_3/layer_normalization_23/moments/mean:output:0*
T0*,
_output_shapes
:?????????ΔΫ
8model_3/layer_normalization_23/moments/SquaredDifferenceSquaredDifferencemodel_3/add_22/add:z:0<model_3/layer_normalization_23/moments/StopGradient:output:0*
T0*-
_output_shapes
:?????????Δ
Amodel_3/layer_normalization_23/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
/model_3/layer_normalization_23/moments/varianceMean<model_3/layer_normalization_23/moments/SquaredDifference:z:0Jmodel_3/layer_normalization_23/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims(s
.model_3/layer_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75ί
,model_3/layer_normalization_23/batchnorm/addAddV28model_3/layer_normalization_23/moments/variance:output:07model_3/layer_normalization_23/batchnorm/add/y:output:0*
T0*,
_output_shapes
:?????????Δ 
.model_3/layer_normalization_23/batchnorm/RsqrtRsqrt0model_3/layer_normalization_23/batchnorm/add:z:0*
T0*,
_output_shapes
:?????????Δ½
;model_3/layer_normalization_23/batchnorm/mul/ReadVariableOpReadVariableOpDmodel_3_layer_normalization_23_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0δ
,model_3/layer_normalization_23/batchnorm/mulMul2model_3/layer_normalization_23/batchnorm/Rsqrt:y:0Cmodel_3/layer_normalization_23/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δ·
.model_3/layer_normalization_23/batchnorm/mul_1Mulmodel_3/add_22/add:z:00model_3/layer_normalization_23/batchnorm/mul:z:0*
T0*-
_output_shapes
:?????????ΔΥ
.model_3/layer_normalization_23/batchnorm/mul_2Mul4model_3/layer_normalization_23/moments/mean:output:00model_3/layer_normalization_23/batchnorm/mul:z:0*
T0*-
_output_shapes
:?????????Δ΅
7model_3/layer_normalization_23/batchnorm/ReadVariableOpReadVariableOp@model_3_layer_normalization_23_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0ΰ
,model_3/layer_normalization_23/batchnorm/subSub?model_3/layer_normalization_23/batchnorm/ReadVariableOp:value:02model_3/layer_normalization_23/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:?????????ΔΥ
.model_3/layer_normalization_23/batchnorm/add_1AddV22model_3/layer_normalization_23/batchnorm/mul_1:z:00model_3/layer_normalization_23/batchnorm/sub:z:0*
T0*-
_output_shapes
:?????????Δ
)model_3/dense_32/Tensordot/ReadVariableOpReadVariableOp2model_3_dense_32_tensordot_readvariableop_resource* 
_output_shapes
:
*
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
valueB"       
 model_3/dense_32/Tensordot/ShapeShape2model_3/layer_normalization_23/batchnorm/add_1:z:0*
T0*
_output_shapes
:j
(model_3/dense_32/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
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
value	B : 
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
valueB: ‘
model_3/dense_32/Tensordot/ProdProd,model_3/dense_32/Tensordot/GatherV2:output:0)model_3/dense_32/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"model_3/dense_32/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: §
!model_3/dense_32/Tensordot/Prod_1Prod.model_3/dense_32/Tensordot/GatherV2_1:output:0+model_3/dense_32/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&model_3/dense_32/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ΰ
!model_3/dense_32/Tensordot/concatConcatV2(model_3/dense_32/Tensordot/free:output:0(model_3/dense_32/Tensordot/axes:output:0/model_3/dense_32/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¬
 model_3/dense_32/Tensordot/stackPack(model_3/dense_32/Tensordot/Prod:output:0*model_3/dense_32/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ι
$model_3/dense_32/Tensordot/transpose	Transpose2model_3/layer_normalization_23/batchnorm/add_1:z:0*model_3/dense_32/Tensordot/concat:output:0*
T0*-
_output_shapes
:?????????Δ½
"model_3/dense_32/Tensordot/ReshapeReshape(model_3/dense_32/Tensordot/transpose:y:0)model_3/dense_32/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????Ύ
!model_3/dense_32/Tensordot/MatMulMatMul+model_3/dense_32/Tensordot/Reshape:output:01model_3/dense_32/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????m
"model_3/dense_32/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:j
(model_3/dense_32/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : λ
#model_3/dense_32/Tensordot/concat_1ConcatV2,model_3/dense_32/Tensordot/GatherV2:output:0+model_3/dense_32/Tensordot/Const_2:output:01model_3/dense_32/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Έ
model_3/dense_32/TensordotReshape+model_3/dense_32/Tensordot/MatMul:product:0,model_3/dense_32/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:?????????Δ
'model_3/dense_32/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_32_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0±
model_3/dense_32/BiasAddBiasAdd#model_3/dense_32/Tensordot:output:0/model_3/dense_32/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δx
model_3/dense_32/ReluRelu!model_3/dense_32/BiasAdd:output:0*
T0*-
_output_shapes
:?????????Δ
model_3/dropout_25/IdentityIdentity#model_3/dense_32/Relu:activations:0*
T0*-
_output_shapes
:?????????Δ
)model_3/dense_33/Tensordot/ReadVariableOpReadVariableOp2model_3_dense_33_tensordot_readvariableop_resource* 
_output_shapes
:
*
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
value	B : ?
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
value	B : 
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
valueB: ‘
model_3/dense_33/Tensordot/ProdProd,model_3/dense_33/Tensordot/GatherV2:output:0)model_3/dense_33/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"model_3/dense_33/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: §
!model_3/dense_33/Tensordot/Prod_1Prod.model_3/dense_33/Tensordot/GatherV2_1:output:0+model_3/dense_33/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&model_3/dense_33/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ΰ
!model_3/dense_33/Tensordot/concatConcatV2(model_3/dense_33/Tensordot/free:output:0(model_3/dense_33/Tensordot/axes:output:0/model_3/dense_33/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:¬
 model_3/dense_33/Tensordot/stackPack(model_3/dense_33/Tensordot/Prod:output:0*model_3/dense_33/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:»
$model_3/dense_33/Tensordot/transpose	Transpose$model_3/dropout_25/Identity:output:0*model_3/dense_33/Tensordot/concat:output:0*
T0*-
_output_shapes
:?????????Δ½
"model_3/dense_33/Tensordot/ReshapeReshape(model_3/dense_33/Tensordot/transpose:y:0)model_3/dense_33/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????Ύ
!model_3/dense_33/Tensordot/MatMulMatMul+model_3/dense_33/Tensordot/Reshape:output:01model_3/dense_33/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????m
"model_3/dense_33/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:j
(model_3/dense_33/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : λ
#model_3/dense_33/Tensordot/concat_1ConcatV2,model_3/dense_33/Tensordot/GatherV2:output:0+model_3/dense_33/Tensordot/Const_2:output:01model_3/dense_33/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Έ
model_3/dense_33/TensordotReshape+model_3/dense_33/Tensordot/MatMul:product:0,model_3/dense_33/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:?????????Δ
'model_3/dense_33/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0±
model_3/dense_33/BiasAddBiasAdd#model_3/dense_33/Tensordot:output:0/model_3/dense_33/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δx
model_3/dense_33/ReluRelu!model_3/dense_33/BiasAdd:output:0*
T0*-
_output_shapes
:?????????Δ
model_3/dropout_26/IdentityIdentity#model_3/dense_33/Relu:activations:0*
T0*-
_output_shapes
:?????????Δ
model_3/add_23/addAddV2$model_3/dropout_26/Identity:output:0model_3/add_22/add:z:0*
T0*-
_output_shapes
:?????????Δh
model_3/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? b  
model_3/flatten_3/ReshapeReshapemodel_3/add_23/add:z:0 model_3/flatten_3/Const:output:0*
T0*)
_output_shapes
:?????????Δ
&model_3/dense_34/MatMul/ReadVariableOpReadVariableOp/model_3_dense_34_matmul_readvariableop_resource*!
_output_shapes
:Δ*
dtype0¨
model_3/dense_34/MatMulMatMul"model_3/flatten_3/Reshape:output:0.model_3/dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
'model_3/dense_34/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_34_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ͺ
model_3/dense_34/BiasAddBiasAdd!model_3/dense_34/MatMul:product:0/model_3/dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
model_3/dense_34/ReluRelu!model_3/dense_34/BiasAdd:output:0*
T0*(
_output_shapes
:?????????
model_3/dropout_27/IdentityIdentity#model_3/dense_34/Relu:activations:0*
T0*(
_output_shapes
:?????????
&model_3/dense_35/MatMul/ReadVariableOpReadVariableOp/model_3_dense_35_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0©
model_3/dense_35/MatMulMatMul$model_3/dropout_27/Identity:output:0.model_3/dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
'model_3/dense_35/BiasAdd/ReadVariableOpReadVariableOp0model_3_dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0©
model_3/dense_35/BiasAddBiasAdd!model_3/dense_35/MatMul:product:0/model_3/dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????x
model_3/dense_35/SoftmaxSoftmax!model_3/dense_35/BiasAdd:output:0*
T0*'
_output_shapes
:?????????q
IdentityIdentity"model_3/dense_35/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????Η

NoOpNoOp(^model_3/dense_32/BiasAdd/ReadVariableOp*^model_3/dense_32/Tensordot/ReadVariableOp(^model_3/dense_33/BiasAdd/ReadVariableOp*^model_3/dense_33/Tensordot/ReadVariableOp(^model_3/dense_34/BiasAdd/ReadVariableOp'^model_3/dense_34/MatMul/ReadVariableOp(^model_3/dense_35/BiasAdd/ReadVariableOp'^model_3/dense_35/MatMul/ReadVariableOp8^model_3/layer_normalization_22/batchnorm/ReadVariableOp<^model_3/layer_normalization_22/batchnorm/mul/ReadVariableOp8^model_3/layer_normalization_23/batchnorm/ReadVariableOp<^model_3/layer_normalization_23/batchnorm/mul/ReadVariableOpD^model_3/multi_head_attention_11/attention_output/add/ReadVariableOpN^model_3/multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp7^model_3/multi_head_attention_11/key/add/ReadVariableOpA^model_3/multi_head_attention_11/key/einsum/Einsum/ReadVariableOp9^model_3/multi_head_attention_11/query/add/ReadVariableOpC^model_3/multi_head_attention_11/query/einsum/Einsum/ReadVariableOp9^model_3/multi_head_attention_11/value/add/ReadVariableOpC^model_3/multi_head_attention_11/value/einsum/Einsum/ReadVariableOp8^model_3/patch_encoder_3/dense_31/BiasAdd/ReadVariableOp:^model_3/patch_encoder_3/dense_31/Tensordot/ReadVariableOp5^model_3/patch_encoder_3/embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesq
o:?????????ΰΰ::: : : : : : : : : : : : : : : : : : : : : : : 2R
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
;model_3/layer_normalization_23/batchnorm/mul/ReadVariableOp;model_3/layer_normalization_23/batchnorm/mul/ReadVariableOp2
Cmodel_3/multi_head_attention_11/attention_output/add/ReadVariableOpCmodel_3/multi_head_attention_11/attention_output/add/ReadVariableOp2
Mmodel_3/multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOpMmodel_3/multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp2p
6model_3/multi_head_attention_11/key/add/ReadVariableOp6model_3/multi_head_attention_11/key/add/ReadVariableOp2
@model_3/multi_head_attention_11/key/einsum/Einsum/ReadVariableOp@model_3/multi_head_attention_11/key/einsum/Einsum/ReadVariableOp2t
8model_3/multi_head_attention_11/query/add/ReadVariableOp8model_3/multi_head_attention_11/query/add/ReadVariableOp2
Bmodel_3/multi_head_attention_11/query/einsum/Einsum/ReadVariableOpBmodel_3/multi_head_attention_11/query/einsum/Einsum/ReadVariableOp2t
8model_3/multi_head_attention_11/value/add/ReadVariableOp8model_3/multi_head_attention_11/value/add/ReadVariableOp2
Bmodel_3/multi_head_attention_11/value/einsum/Einsum/ReadVariableOpBmodel_3/multi_head_attention_11/value/einsum/Einsum/ReadVariableOp2r
7model_3/patch_encoder_3/dense_31/BiasAdd/ReadVariableOp7model_3/patch_encoder_3/dense_31/BiasAdd/ReadVariableOp2v
9model_3/patch_encoder_3/dense_31/Tensordot/ReadVariableOp9model_3/patch_encoder_3/dense_31/Tensordot/ReadVariableOp2l
4model_3/patch_encoder_3/embedding_3/embedding_lookup4model_3/patch_encoder_3/embedding_3/embedding_lookup:Z V
1
_output_shapes
:?????????ΰΰ
!
_user_specified_name	input_4:,(
&
_output_shapes
::,(
&
_output_shapes
:
ΐ
R
&__inference_add_23_layer_call_fn_59722
inputs_0
inputs_1
identityΏ
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_add_23_layer_call_and_return_conditional_losses_57203f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:?????????Δ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????Δ:?????????Δ:W S
-
_output_shapes
:?????????Δ
"
_user_specified_name
inputs/0:WS
-
_output_shapes
:?????????Δ
"
_user_specified_name
inputs/1
Δ
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_59739

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"???? b  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:?????????ΔZ
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:?????????Δ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????Δ:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
ΰ
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
valueB:Ρ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask½
ExtractImagePatchesExtractImagePatchesimages*
T0*0
_output_shapes
:?????????*
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
?????????R
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:
ReshapeReshapeExtractImagePatches:patches:0Reshape/shape:output:0*
T0*5
_output_shapes#
!:??????????????????f
IdentityIdentityReshape:output:0*
T0*5
_output_shapes#
!:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
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
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_27_layer_call_and_return_conditional_losses_57235a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Θύ

L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_59325

inputs
normalization_3_sub_y
normalization_3_sqrt_xM
?random_flip_3_stateful_uniform_full_int_rngreadandskip_resource:	H
:random_rotation_3_stateful_uniform_rngreadandskip_resource:	D
6random_zoom_3_stateful_uniform_rngreadandskip_resource:	
identity’6random_flip_3/stateful_uniform_full_int/RngReadAndSkip’8random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip’1random_rotation_3/stateful_uniform/RngReadAndSkip’-random_zoom_3/stateful_uniform/RngReadAndSkip’/random_zoom_3/stateful_uniform_1/RngReadAndSkipu
normalization_3/subSubinputsnormalization_3_sub_y*
T0*1
_output_shapes
:?????????ΰΰe
normalization_3/SqrtSqrtnormalization_3_sqrt_x*
T0*&
_output_shapes
:^
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*1
_output_shapes
:?????????ΰΰw
-random_flip_3/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:w
-random_flip_3/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ε
,random_flip_3/stateful_uniform_full_int/ProdProd6random_flip_3/stateful_uniform_full_int/shape:output:06random_flip_3/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: p
.random_flip_3/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
.random_flip_3/stateful_uniform_full_int/Cast_1Cast5random_flip_3/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
6random_flip_3/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkip?random_flip_3_stateful_uniform_full_int_rngreadandskip_resource7random_flip_3/stateful_uniform_full_int/Cast/x:output:02random_flip_3/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
;random_flip_3/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=random_flip_3/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=random_flip_3/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5random_flip_3/stateful_uniform_full_int/strided_sliceStridedSlice>random_flip_3/stateful_uniform_full_int/RngReadAndSkip:value:0Drandom_flip_3/stateful_uniform_full_int/strided_slice/stack:output:0Frandom_flip_3/stateful_uniform_full_int/strided_slice/stack_1:output:0Frandom_flip_3/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask«
/random_flip_3/stateful_uniform_full_int/BitcastBitcast>random_flip_3/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
=random_flip_3/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?random_flip_3/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?random_flip_3/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
7random_flip_3/stateful_uniform_full_int/strided_slice_1StridedSlice>random_flip_3/stateful_uniform_full_int/RngReadAndSkip:value:0Frandom_flip_3/stateful_uniform_full_int/strided_slice_1/stack:output:0Hrandom_flip_3/stateful_uniform_full_int/strided_slice_1/stack_1:output:0Hrandom_flip_3/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:―
1random_flip_3/stateful_uniform_full_int/Bitcast_1Bitcast@random_flip_3/stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0m
+random_flip_3/stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :Χ
'random_flip_3/stateful_uniform_full_intStatelessRandomUniformFullIntV26random_flip_3/stateful_uniform_full_int/shape:output:0:random_flip_3/stateful_uniform_full_int/Bitcast_1:output:08random_flip_3/stateful_uniform_full_int/Bitcast:output:04random_flip_3/stateful_uniform_full_int/alg:output:0*
_output_shapes
:*
dtype0	b
random_flip_3/zeros_likeConst*
_output_shapes
:*
dtype0	*
valueB	R ’
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
valueB"      ½
random_flip_3/strided_sliceStridedSlicerandom_flip_3/stack:output:0*random_flip_3/strided_slice/stack:output:0,random_flip_3/strided_slice/stack_1:output:0,random_flip_3/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask?
Arandom_flip_3/stateless_random_flip_left_right/control_dependencyIdentitynormalization_3/truediv:z:0*
T0**
_class 
loc:@normalization_3/truediv*1
_output_shapes
:?????????ΰΰ?
4random_flip_3/stateless_random_flip_left_right/ShapeShapeJrandom_flip_3/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:
Brandom_flip_3/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Drandom_flip_3/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Drandom_flip_3/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ό
<random_flip_3/stateless_random_flip_left_right/strided_sliceStridedSlice=random_flip_3/stateless_random_flip_left_right/Shape:output:0Krandom_flip_3/stateless_random_flip_left_right/strided_slice/stack:output:0Mrandom_flip_3/stateless_random_flip_left_right/strided_slice/stack_1:output:0Mrandom_flip_3/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskΚ
Mrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/shapePackErandom_flip_3/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:
Krandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Krandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Μ
drandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter$random_flip_3/strided_slice:output:0* 
_output_shapes
::¦
drandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Δ
`random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Vrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0jrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0nrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0mrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????
Krandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/subSubTrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/max:output:0Trandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: Ό
Krandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/mulMulirandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Orandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:?????????₯
Grandom_flip_3/stateless_random_flip_left_right/stateless_random_uniformAddV2Orandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0Trandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:?????????
>random_flip_3/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
>random_flip_3/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
>random_flip_3/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :
<random_flip_3/stateless_random_flip_left_right/Reshape/shapePackErandom_flip_3/stateless_random_flip_left_right/strided_slice:output:0Grandom_flip_3/stateless_random_flip_left_right/Reshape/shape/1:output:0Grandom_flip_3/stateless_random_flip_left_right/Reshape/shape/2:output:0Grandom_flip_3/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
6random_flip_3/stateless_random_flip_left_right/ReshapeReshapeKrandom_flip_3/stateless_random_flip_left_right/stateless_random_uniform:z:0Erandom_flip_3/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????Έ
4random_flip_3/stateless_random_flip_left_right/RoundRound?random_flip_3/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????
=random_flip_3/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
8random_flip_3/stateless_random_flip_left_right/ReverseV2	ReverseV2Jrandom_flip_3/stateless_random_flip_left_right/control_dependency:output:0Frandom_flip_3/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:?????????ΰΰς
2random_flip_3/stateless_random_flip_left_right/mulMul8random_flip_3/stateless_random_flip_left_right/Round:y:0Arandom_flip_3/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:?????????ΰΰy
4random_flip_3/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?μ
2random_flip_3/stateless_random_flip_left_right/subSub=random_flip_3/stateless_random_flip_left_right/sub/x:output:08random_flip_3/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????ϋ
4random_flip_3/stateless_random_flip_left_right/mul_1Mul6random_flip_3/stateless_random_flip_left_right/sub:z:0Jrandom_flip_3/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:?????????ΰΰι
2random_flip_3/stateless_random_flip_left_right/addAddV26random_flip_3/stateless_random_flip_left_right/mul:z:08random_flip_3/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:?????????ΰΰy
/random_flip_3/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:y
/random_flip_3/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: Λ
.random_flip_3/stateful_uniform_full_int_1/ProdProd8random_flip_3/stateful_uniform_full_int_1/shape:output:08random_flip_3/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: r
0random_flip_3/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :‘
0random_flip_3/stateful_uniform_full_int_1/Cast_1Cast7random_flip_3/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ρ
8random_flip_3/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkip?random_flip_3_stateful_uniform_full_int_rngreadandskip_resource9random_flip_3/stateful_uniform_full_int_1/Cast/x:output:04random_flip_3/stateful_uniform_full_int_1/Cast_1:y:07^random_flip_3/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
=random_flip_3/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?random_flip_3/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
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

begin_mask―
1random_flip_3/stateful_uniform_full_int_1/BitcastBitcast@random_flip_3/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
?random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Arandom_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Arandom_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
9random_flip_3/stateful_uniform_full_int_1/strided_slice_1StridedSlice@random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip:value:0Hrandom_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack:output:0Jrandom_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0Jrandom_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:³
3random_flip_3/stateful_uniform_full_int_1/Bitcast_1BitcastBrandom_flip_3/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-random_flip_3/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :α
)random_flip_3/stateful_uniform_full_int_1StatelessRandomUniformFullIntV28random_flip_3/stateful_uniform_full_int_1/shape:output:0<random_flip_3/stateful_uniform_full_int_1/Bitcast_1:output:0:random_flip_3/stateful_uniform_full_int_1/Bitcast:output:06random_flip_3/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	d
random_flip_3/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ¨
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
valueB"      Η
random_flip_3/strided_slice_1StridedSlicerandom_flip_3/stack_1:output:0,random_flip_3/strided_slice_1/stack:output:0.random_flip_3/strided_slice_1/stack_1:output:0.random_flip_3/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
>random_flip_3/stateless_random_flip_up_down/control_dependencyIdentity6random_flip_3/stateless_random_flip_left_right/add:z:0*
T0*E
_class;
97loc:@random_flip_3/stateless_random_flip_left_right/add*1
_output_shapes
:?????????ΰΰ¨
1random_flip_3/stateless_random_flip_up_down/ShapeShapeGrandom_flip_3/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:
?random_flip_3/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Arandom_flip_3/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Arandom_flip_3/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:­
9random_flip_3/stateless_random_flip_up_down/strided_sliceStridedSlice:random_flip_3/stateless_random_flip_up_down/Shape:output:0Hrandom_flip_3/stateless_random_flip_up_down/strided_slice/stack:output:0Jrandom_flip_3/stateless_random_flip_up_down/strided_slice/stack_1:output:0Jrandom_flip_3/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskΔ
Jrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/shapePackBrandom_flip_3/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
Hrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
Hrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Λ
arandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter&random_flip_3/strided_slice_1:output:0* 
_output_shapes
::£
arandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :΅
]random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Srandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0grandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0krandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0jrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????
Hrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/subSubQrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/max:output:0Qrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ³
Hrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/mulMulfrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0Lrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:?????????
Drandom_flip_3/stateless_random_flip_up_down/stateless_random_uniformAddV2Lrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Qrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:?????????}
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
value	B :
9random_flip_3/stateless_random_flip_up_down/Reshape/shapePackBrandom_flip_3/stateless_random_flip_up_down/strided_slice:output:0Drandom_flip_3/stateless_random_flip_up_down/Reshape/shape/1:output:0Drandom_flip_3/stateless_random_flip_up_down/Reshape/shape/2:output:0Drandom_flip_3/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:
3random_flip_3/stateless_random_flip_up_down/ReshapeReshapeHrandom_flip_3/stateless_random_flip_up_down/stateless_random_uniform:z:0Brandom_flip_3/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????²
1random_flip_3/stateless_random_flip_up_down/RoundRound<random_flip_3/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:?????????
:random_flip_3/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:
5random_flip_3/stateless_random_flip_up_down/ReverseV2	ReverseV2Grandom_flip_3/stateless_random_flip_up_down/control_dependency:output:0Crandom_flip_3/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:?????????ΰΰι
/random_flip_3/stateless_random_flip_up_down/mulMul5random_flip_3/stateless_random_flip_up_down/Round:y:0>random_flip_3/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:?????????ΰΰv
1random_flip_3/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?γ
/random_flip_3/stateless_random_flip_up_down/subSub:random_flip_3/stateless_random_flip_up_down/sub/x:output:05random_flip_3/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:?????????ς
1random_flip_3/stateless_random_flip_up_down/mul_1Mul3random_flip_3/stateless_random_flip_up_down/sub:z:0Grandom_flip_3/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:?????????ΰΰΰ
/random_flip_3/stateless_random_flip_up_down/addAddV23random_flip_3/stateless_random_flip_up_down/mul:z:05random_flip_3/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:?????????ΰΰz
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
valueB:«
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
ύ????????|
)random_rotation_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????s
)random_rotation_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:³
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
ώ????????|
)random_rotation_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????s
)random_rotation_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:³
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
: 
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
 *ΫIΐk
&random_rotation_3/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ΫI@r
(random_rotation_3/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: Ά
'random_rotation_3/stateful_uniform/ProdProd1random_rotation_3/stateful_uniform/shape:output:01random_rotation_3/stateful_uniform/Const:output:0*
T0*
_output_shapes
: k
)random_rotation_3/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
)random_rotation_3/stateful_uniform/Cast_1Cast0random_rotation_3/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ώ
1random_rotation_3/stateful_uniform/RngReadAndSkipRngReadAndSkip:random_rotation_3_stateful_uniform_rngreadandskip_resource2random_rotation_3/stateful_uniform/Cast/x:output:0-random_rotation_3/stateful_uniform/Cast_1:y:0*
_output_shapes
:
6random_rotation_3/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8random_rotation_3/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8random_rotation_3/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0random_rotation_3/stateful_uniform/strided_sliceStridedSlice9random_rotation_3/stateful_uniform/RngReadAndSkip:value:0?random_rotation_3/stateful_uniform/strided_slice/stack:output:0Arandom_rotation_3/stateful_uniform/strided_slice/stack_1:output:0Arandom_rotation_3/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask‘
*random_rotation_3/stateful_uniform/BitcastBitcast9random_rotation_3/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
8random_rotation_3/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
:random_rotation_3/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:random_rotation_3/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ό
2random_rotation_3/stateful_uniform/strided_slice_1StridedSlice9random_rotation_3/stateful_uniform/RngReadAndSkip:value:0Arandom_rotation_3/stateful_uniform/strided_slice_1/stack:output:0Crandom_rotation_3/stateful_uniform/strided_slice_1/stack_1:output:0Crandom_rotation_3/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:₯
,random_rotation_3/stateful_uniform/Bitcast_1Bitcast;random_rotation_3/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
?random_rotation_3/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ε
;random_rotation_3/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV21random_rotation_3/stateful_uniform/shape:output:05random_rotation_3/stateful_uniform/Bitcast_1:output:03random_rotation_3/stateful_uniform/Bitcast:output:0Hrandom_rotation_3/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????°
&random_rotation_3/stateful_uniform/subSub/random_rotation_3/stateful_uniform/max:output:0/random_rotation_3/stateful_uniform/min:output:0*
T0*
_output_shapes
: Ν
&random_rotation_3/stateful_uniform/mulMulDrandom_rotation_3/stateful_uniform/StatelessRandomUniformV2:output:0*random_rotation_3/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????Ά
"random_rotation_3/stateful_uniformAddV2*random_rotation_3/stateful_uniform/mul:z:0/random_rotation_3/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????l
'random_rotation_3/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
%random_rotation_3/rotation_matrix/subSubrandom_rotation_3/Cast_1:y:00random_rotation_3/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 
%random_rotation_3/rotation_matrix/CosCos&random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????n
)random_rotation_3/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?‘
'random_rotation_3/rotation_matrix/sub_1Subrandom_rotation_3/Cast_1:y:02random_rotation_3/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: ²
%random_rotation_3/rotation_matrix/mulMul)random_rotation_3/rotation_matrix/Cos:y:0+random_rotation_3/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????
%random_rotation_3/rotation_matrix/SinSin&random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????n
)random_rotation_3/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
'random_rotation_3/rotation_matrix/sub_2Subrandom_rotation_3/Cast:y:02random_rotation_3/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ΄
'random_rotation_3/rotation_matrix/mul_1Mul)random_rotation_3/rotation_matrix/Sin:y:0+random_rotation_3/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????΄
'random_rotation_3/rotation_matrix/sub_3Sub)random_rotation_3/rotation_matrix/mul:z:0+random_rotation_3/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????΄
'random_rotation_3/rotation_matrix/sub_4Sub)random_rotation_3/rotation_matrix/sub:z:0+random_rotation_3/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????p
+random_rotation_3/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ε
)random_rotation_3/rotation_matrix/truedivRealDiv+random_rotation_3/rotation_matrix/sub_4:z:04random_rotation_3/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????n
)random_rotation_3/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
'random_rotation_3/rotation_matrix/sub_5Subrandom_rotation_3/Cast:y:02random_rotation_3/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 
'random_rotation_3/rotation_matrix/Sin_1Sin&random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????n
)random_rotation_3/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?‘
'random_rotation_3/rotation_matrix/sub_6Subrandom_rotation_3/Cast_1:y:02random_rotation_3/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: Ά
'random_rotation_3/rotation_matrix/mul_2Mul+random_rotation_3/rotation_matrix/Sin_1:y:0+random_rotation_3/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????
'random_rotation_3/rotation_matrix/Cos_1Cos&random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????n
)random_rotation_3/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
'random_rotation_3/rotation_matrix/sub_7Subrandom_rotation_3/Cast:y:02random_rotation_3/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: Ά
'random_rotation_3/rotation_matrix/mul_3Mul+random_rotation_3/rotation_matrix/Cos_1:y:0+random_rotation_3/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????Ά
%random_rotation_3/rotation_matrix/addAddV2+random_rotation_3/rotation_matrix/mul_2:z:0+random_rotation_3/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????΄
'random_rotation_3/rotation_matrix/sub_8Sub+random_rotation_3/rotation_matrix/sub_5:z:0)random_rotation_3/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????r
-random_rotation_3/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ι
+random_rotation_3/rotation_matrix/truediv_1RealDiv+random_rotation_3/rotation_matrix/sub_8:z:06random_rotation_3/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????}
'random_rotation_3/rotation_matrix/ShapeShape&random_rotation_3/stateful_uniform:z:0*
T0*
_output_shapes
:
5random_rotation_3/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7random_rotation_3/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7random_rotation_3/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ϋ
/random_rotation_3/rotation_matrix/strided_sliceStridedSlice0random_rotation_3/rotation_matrix/Shape:output:0>random_rotation_3/rotation_matrix/strided_slice/stack:output:0@random_rotation_3/rotation_matrix/strided_slice/stack_1:output:0@random_rotation_3/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
'random_rotation_3/rotation_matrix/Cos_2Cos&random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
7random_rotation_3/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_3/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_3/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
1random_rotation_3/rotation_matrix/strided_slice_1StridedSlice+random_rotation_3/rotation_matrix/Cos_2:y:0@random_rotation_3/rotation_matrix/strided_slice_1/stack:output:0Brandom_rotation_3/rotation_matrix/strided_slice_1/stack_1:output:0Brandom_rotation_3/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
'random_rotation_3/rotation_matrix/Sin_2Sin&random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
7random_rotation_3/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_3/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_3/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
1random_rotation_3/rotation_matrix/strided_slice_2StridedSlice+random_rotation_3/rotation_matrix/Sin_2:y:0@random_rotation_3/rotation_matrix/strided_slice_2/stack:output:0Brandom_rotation_3/rotation_matrix/strided_slice_2/stack_1:output:0Brandom_rotation_3/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
%random_rotation_3/rotation_matrix/NegNeg:random_rotation_3/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????
7random_rotation_3/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_3/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_3/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      °
1random_rotation_3/rotation_matrix/strided_slice_3StridedSlice-random_rotation_3/rotation_matrix/truediv:z:0@random_rotation_3/rotation_matrix/strided_slice_3/stack:output:0Brandom_rotation_3/rotation_matrix/strided_slice_3/stack_1:output:0Brandom_rotation_3/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
'random_rotation_3/rotation_matrix/Sin_3Sin&random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
7random_rotation_3/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_3/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_3/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
1random_rotation_3/rotation_matrix/strided_slice_4StridedSlice+random_rotation_3/rotation_matrix/Sin_3:y:0@random_rotation_3/rotation_matrix/strided_slice_4/stack:output:0Brandom_rotation_3/rotation_matrix/strided_slice_4/stack_1:output:0Brandom_rotation_3/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
'random_rotation_3/rotation_matrix/Cos_3Cos&random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
7random_rotation_3/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_3/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_3/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ?
1random_rotation_3/rotation_matrix/strided_slice_5StridedSlice+random_rotation_3/rotation_matrix/Cos_3:y:0@random_rotation_3/rotation_matrix/strided_slice_5/stack:output:0Brandom_rotation_3/rotation_matrix/strided_slice_5/stack_1:output:0Brandom_rotation_3/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
7random_rotation_3/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_3/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
9random_rotation_3/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ²
1random_rotation_3/rotation_matrix/strided_slice_6StridedSlice/random_rotation_3/rotation_matrix/truediv_1:z:0@random_rotation_3/rotation_matrix/strided_slice_6/stack:output:0Brandom_rotation_3/rotation_matrix/strided_slice_6/stack_1:output:0Brandom_rotation_3/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_maskr
0random_rotation_3/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ω
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
 *    ?
'random_rotation_3/rotation_matrix/zerosFill7random_rotation_3/rotation_matrix/zeros/packed:output:06random_rotation_3/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????o
-random_rotation_3/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :°
(random_rotation_3/rotation_matrix/concatConcatV2:random_rotation_3/rotation_matrix/strided_slice_1:output:0)random_rotation_3/rotation_matrix/Neg:y:0:random_rotation_3/rotation_matrix/strided_slice_3:output:0:random_rotation_3/rotation_matrix/strided_slice_4:output:0:random_rotation_3/rotation_matrix/strided_slice_5:output:0:random_rotation_3/rotation_matrix/strided_slice_6:output:00random_rotation_3/rotation_matrix/zeros:output:06random_rotation_3/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????
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
valueB:Ι
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
 *    
6random_rotation_3/transform/ImageProjectiveTransformV3ImageProjectiveTransformV33random_flip_3/stateless_random_flip_up_down/add:z:01random_rotation_3/rotation_matrix/concat:output:02random_rotation_3/transform/strided_slice:output:0/random_rotation_3/transform/fill_value:output:0*1
_output_shapes
:?????????ΰΰ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
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
valueB:
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
ύ????????x
%random_zoom_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????o
%random_zoom_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
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
ώ????????x
%random_zoom_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????o
%random_zoom_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
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
 *ff¦?n
$random_zoom_3/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ͺ
#random_zoom_3/stateful_uniform/ProdProd-random_zoom_3/stateful_uniform/shape:output:0-random_zoom_3/stateful_uniform/Const:output:0*
T0*
_output_shapes
: g
%random_zoom_3/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
%random_zoom_3/stateful_uniform/Cast_1Cast,random_zoom_3/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ξ
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
valueB:ς
,random_zoom_3/stateful_uniform/strided_sliceStridedSlice5random_zoom_3/stateful_uniform/RngReadAndSkip:value:0;random_zoom_3/stateful_uniform/strided_slice/stack:output:0=random_zoom_3/stateful_uniform/strided_slice/stack_1:output:0=random_zoom_3/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
&random_zoom_3/stateful_uniform/BitcastBitcast5random_zoom_3/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0~
4random_zoom_3/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
6random_zoom_3/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6random_zoom_3/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:θ
.random_zoom_3/stateful_uniform/strided_slice_1StridedSlice5random_zoom_3/stateful_uniform/RngReadAndSkip:value:0=random_zoom_3/stateful_uniform/strided_slice_1/stack:output:0?random_zoom_3/stateful_uniform/strided_slice_1/stack_1:output:0?random_zoom_3/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
(random_zoom_3/stateful_uniform/Bitcast_1Bitcast7random_zoom_3/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0}
;random_zoom_3/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Υ
7random_zoom_3/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2-random_zoom_3/stateful_uniform/shape:output:01random_zoom_3/stateful_uniform/Bitcast_1:output:0/random_zoom_3/stateful_uniform/Bitcast:output:0Drandom_zoom_3/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????€
"random_zoom_3/stateful_uniform/subSub+random_zoom_3/stateful_uniform/max:output:0+random_zoom_3/stateful_uniform/min:output:0*
T0*
_output_shapes
: Ε
"random_zoom_3/stateful_uniform/mulMul@random_zoom_3/stateful_uniform/StatelessRandomUniformV2:output:0&random_zoom_3/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:??????????
random_zoom_3/stateful_uniformAddV2&random_zoom_3/stateful_uniform/mul:z:0+random_zoom_3/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????j
(random_zoom_3/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :΅
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
 *ff¦?p
&random_zoom_3/stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: °
%random_zoom_3/stateful_uniform_1/ProdProd/random_zoom_3/stateful_uniform_1/shape:output:0/random_zoom_3/stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: i
'random_zoom_3/stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
'random_zoom_3/stateful_uniform_1/Cast_1Cast.random_zoom_3/stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: €
/random_zoom_3/stateful_uniform_1/RngReadAndSkipRngReadAndSkip6random_zoom_3_stateful_uniform_rngreadandskip_resource0random_zoom_3/stateful_uniform_1/Cast/x:output:0+random_zoom_3/stateful_uniform_1/Cast_1:y:0.^random_zoom_3/stateful_uniform/RngReadAndSkip*
_output_shapes
:~
4random_zoom_3/stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6random_zoom_3/stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6random_zoom_3/stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ό
.random_zoom_3/stateful_uniform_1/strided_sliceStridedSlice7random_zoom_3/stateful_uniform_1/RngReadAndSkip:value:0=random_zoom_3/stateful_uniform_1/strided_slice/stack:output:0?random_zoom_3/stateful_uniform_1/strided_slice/stack_1:output:0?random_zoom_3/stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
(random_zoom_3/stateful_uniform_1/BitcastBitcast7random_zoom_3/stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
6random_zoom_3/stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
8random_zoom_3/stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8random_zoom_3/stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ς
0random_zoom_3/stateful_uniform_1/strided_slice_1StridedSlice7random_zoom_3/stateful_uniform_1/RngReadAndSkip:value:0?random_zoom_3/stateful_uniform_1/strided_slice_1/stack:output:0Arandom_zoom_3/stateful_uniform_1/strided_slice_1/stack_1:output:0Arandom_zoom_3/stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:‘
*random_zoom_3/stateful_uniform_1/Bitcast_1Bitcast9random_zoom_3/stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
=random_zoom_3/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ί
9random_zoom_3/stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2/random_zoom_3/stateful_uniform_1/shape:output:03random_zoom_3/stateful_uniform_1/Bitcast_1:output:01random_zoom_3/stateful_uniform_1/Bitcast:output:0Frandom_zoom_3/stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????ͺ
$random_zoom_3/stateful_uniform_1/subSub-random_zoom_3/stateful_uniform_1/max:output:0-random_zoom_3/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: Λ
$random_zoom_3/stateful_uniform_1/mulMulBrandom_zoom_3/stateful_uniform_1/StatelessRandomUniformV2:output:0(random_zoom_3/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????΄
 random_zoom_3/stateful_uniform_1AddV2(random_zoom_3/stateful_uniform_1/mul:z:0-random_zoom_3/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????[
random_zoom_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ι
random_zoom_3/concatConcatV2$random_zoom_3/stateful_uniform_1:z:0"random_zoom_3/stateful_uniform:z:0"random_zoom_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????l
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
valueB:Σ
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
 *  ?
random_zoom_3/zoom_matrix/subSubrandom_zoom_3/Cast_1:y:0(random_zoom_3/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: h
#random_zoom_3/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
!random_zoom_3/zoom_matrix/truedivRealDiv!random_zoom_3/zoom_matrix/sub:z:0,random_zoom_3/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 
/random_zoom_3/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
1random_zoom_3/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_3/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
)random_zoom_3/zoom_matrix/strided_slice_1StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_1/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_1/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskf
!random_zoom_3/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Έ
random_zoom_3/zoom_matrix/sub_1Sub*random_zoom_3/zoom_matrix/sub_1/x:output:02random_zoom_3/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????’
random_zoom_3/zoom_matrix/mulMul%random_zoom_3/zoom_matrix/truediv:z:0#random_zoom_3/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????f
!random_zoom_3/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
random_zoom_3/zoom_matrix/sub_2Subrandom_zoom_3/Cast:y:0*random_zoom_3/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: j
%random_zoom_3/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @€
#random_zoom_3/zoom_matrix/truediv_1RealDiv#random_zoom_3/zoom_matrix/sub_2:z:0.random_zoom_3/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 
/random_zoom_3/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_3/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_3/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
)random_zoom_3/zoom_matrix/strided_slice_2StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_2/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_2/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskf
!random_zoom_3/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Έ
random_zoom_3/zoom_matrix/sub_3Sub*random_zoom_3/zoom_matrix/sub_3/x:output:02random_zoom_3/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????¦
random_zoom_3/zoom_matrix/mul_1Mul'random_zoom_3/zoom_matrix/truediv_1:z:0#random_zoom_3/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????
/random_zoom_3/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
1random_zoom_3/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_3/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
)random_zoom_3/zoom_matrix/strided_slice_3StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_3/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_3/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskj
(random_zoom_3/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Α
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
 *    Ί
random_zoom_3/zoom_matrix/zerosFill/random_zoom_3/zoom_matrix/zeros/packed:output:0.random_zoom_3/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????l
*random_zoom_3/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ε
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
 *    ΐ
!random_zoom_3/zoom_matrix/zeros_1Fill1random_zoom_3/zoom_matrix/zeros_1/packed:output:00random_zoom_3/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
/random_zoom_3/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_3/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
1random_zoom_3/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         
)random_zoom_3/zoom_matrix/strided_slice_4StridedSlicerandom_zoom_3/concat:output:08random_zoom_3/zoom_matrix/strided_slice_4/stack:output:0:random_zoom_3/zoom_matrix/strided_slice_4/stack_1:output:0:random_zoom_3/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskl
*random_zoom_3/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ε
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
 *    ΐ
!random_zoom_3/zoom_matrix/zeros_2Fill1random_zoom_3/zoom_matrix/zeros_2/packed:output:00random_zoom_3/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????g
%random_zoom_3/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ι
 random_zoom_3/zoom_matrix/concatConcatV22random_zoom_3/zoom_matrix/strided_slice_3:output:0(random_zoom_3/zoom_matrix/zeros:output:0!random_zoom_3/zoom_matrix/mul:z:0*random_zoom_3/zoom_matrix/zeros_1:output:02random_zoom_3/zoom_matrix/strided_slice_4:output:0#random_zoom_3/zoom_matrix/mul_1:z:0*random_zoom_3/zoom_matrix/zeros_2:output:0.random_zoom_3/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????
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
valueB:΅
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
 *    
2random_zoom_3/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3Krandom_rotation_3/transform/ImageProjectiveTransformV3:transformed_images:0)random_zoom_3/zoom_matrix/concat:output:0.random_zoom_3/transform/strided_slice:output:0+random_zoom_3/transform/fill_value:output:0*1
_output_shapes
:?????????ΰΰ*
dtype0*
interpolation
BILINEAR 
IdentityIdentityGrandom_zoom_3/transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:?????????ΰΰΠ
NoOpNoOp7^random_flip_3/stateful_uniform_full_int/RngReadAndSkip9^random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip2^random_rotation_3/stateful_uniform/RngReadAndSkip.^random_zoom_3/stateful_uniform/RngReadAndSkip0^random_zoom_3/stateful_uniform_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????ΰΰ::: : : 2p
6random_flip_3/stateful_uniform_full_int/RngReadAndSkip6random_flip_3/stateful_uniform_full_int/RngReadAndSkip2t
8random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip8random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip2f
1random_rotation_3/stateful_uniform/RngReadAndSkip1random_rotation_3/stateful_uniform/RngReadAndSkip2^
-random_zoom_3/stateful_uniform/RngReadAndSkip-random_zoom_3/stateful_uniform/RngReadAndSkip2b
/random_zoom_3/stateful_uniform_1/RngReadAndSkip/random_zoom_3/stateful_uniform_1/RngReadAndSkip:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
Έ
ύ
C__inference_dense_33_layer_call_and_return_conditional_losses_59689

inputs5
!tensordot_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
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
value	B : »
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
value	B : Ώ
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
value	B : 
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
:?????????Δ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:?????????Δs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????ΔV
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:?????????Δg
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:?????????Δz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????Δ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
ό	
ΰ
1__inference_Data_Augmentation_layer_call_fn_56881
normalization_3_input
unknown
	unknown_0
	unknown_1:	
	unknown_2:	
	unknown_3:	
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallnormalization_3_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56853y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????ΰΰ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????ΰΰ::: : : 22
StatefulPartitionedCallStatefulPartitionedCall:h d
1
_output_shapes
:?????????ΰΰ
/
_user_specified_namenormalization_3_input:,(
&
_output_shapes
::,(
&
_output_shapes
:

Ε
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_60091

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity’stateful_uniform/RngReadAndSkip;
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
valueB:Ρ
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
ύ????????j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
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
ώ????????j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
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
 *ΫIΐY
stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ΫI@`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
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
: Ά
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
valueB:¬
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
valueB:’
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????Z
rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?g
rotation_matrix/subSub
Cast_1:y:0rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ^
rotation_matrix/CosCosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_1Sub
Cast_1:y:0 rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: |
rotation_matrix/mulMulrotation_matrix/Cos:y:0rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????^
rotation_matrix/SinSinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_2SubCast:y:0 rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: ~
rotation_matrix/mul_1Mulrotation_matrix/Sin:y:0rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????~
rotation_matrix/sub_3Subrotation_matrix/mul:z:0rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????~
rotation_matrix/sub_4Subrotation_matrix/sub:z:0rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????^
rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truedivRealDivrotation_matrix/sub_4:z:0"rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_5SubCast:y:0 rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: `
rotation_matrix/Sin_1Sinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?k
rotation_matrix/sub_6Sub
Cast_1:y:0 rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_2Mulrotation_matrix/Sin_1:y:0rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????`
rotation_matrix/Cos_1Cosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????\
rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?i
rotation_matrix/sub_7SubCast:y:0 rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 
rotation_matrix/mul_3Mulrotation_matrix/Cos_1:y:0rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????
rotation_matrix/addAddV2rotation_matrix/mul_2:z:0rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????~
rotation_matrix/sub_8Subrotation_matrix/sub_5:z:0rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????`
rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @
rotation_matrix/truediv_1RealDivrotation_matrix/sub_8:z:0$rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????Y
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
valueB:‘
rotation_matrix/strided_sliceStridedSlicerotation_matrix/Shape:output:0,rotation_matrix/strided_slice/stack:output:0.rotation_matrix/strided_slice/stack_1:output:0.rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
rotation_matrix/Cos_2Cosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
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
valueB"      Τ
rotation_matrix/strided_slice_1StridedSlicerotation_matrix/Cos_2:y:0.rotation_matrix/strided_slice_1/stack:output:00rotation_matrix/strided_slice_1/stack_1:output:00rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_2Sinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
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
valueB"      Τ
rotation_matrix/strided_slice_2StridedSlicerotation_matrix/Sin_2:y:0.rotation_matrix/strided_slice_2/stack:output:00rotation_matrix/strided_slice_2/stack_1:output:00rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_maskv
rotation_matrix/NegNeg(rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????v
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
valueB"      Φ
rotation_matrix/strided_slice_3StridedSlicerotation_matrix/truediv:z:0.rotation_matrix/strided_slice_3/stack:output:00rotation_matrix/strided_slice_3/stack_1:output:00rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Sin_3Sinstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
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
valueB"      Τ
rotation_matrix/strided_slice_4StridedSlicerotation_matrix/Sin_3:y:0.rotation_matrix/strided_slice_4/stack:output:00rotation_matrix/strided_slice_4/stack_1:output:00rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask`
rotation_matrix/Cos_3Cosstateful_uniform:z:0*
T0*#
_output_shapes
:?????????v
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
valueB"      Τ
rotation_matrix/strided_slice_5StridedSlicerotation_matrix/Cos_3:y:0.rotation_matrix/strided_slice_5/stack:output:00rotation_matrix/strided_slice_5/stack_1:output:00rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

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
valueB"      Ψ
rotation_matrix/strided_slice_6StridedSlicerotation_matrix/truediv_1:z:0.rotation_matrix/strided_slice_6/stack:output:00rotation_matrix/strided_slice_6/stack_1:output:00rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

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
 *    
rotation_matrix/zerosFill%rotation_matrix/zeros/packed:output:0$rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????]
rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
rotation_matrix/concatConcatV2(rotation_matrix/strided_slice_1:output:0rotation_matrix/Neg:y:0(rotation_matrix/strided_slice_3:output:0(rotation_matrix/strided_slice_4:output:0(rotation_matrix/strided_slice_5:output:0(rotation_matrix/strided_slice_6:output:0rotation_matrix/zeros:output:0$rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????E
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
valueB:ο
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
 *    ‘
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputsrotation_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:?????????ΰΰ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:?????????ΰΰh
NoOpNoOp ^stateful_uniform/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ΰΰ: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs


Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_59426

inputs4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity’batchnorm/ReadVariableOp’batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:?????????Δ
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*-
_output_shapes
:?????????Δl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:¬
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:?????????Δb
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:?????????Δ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δi
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*-
_output_shapes
:?????????Δx
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*-
_output_shapes
:?????????Δw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*-
_output_shapes
:?????????Δx
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*-
_output_shapes
:?????????Δh
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*-
_output_shapes
:?????????Δ
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????Δ: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
Ο
J
.__inference_Resize_Rescale_layer_call_fn_58916

inputs
identityΎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56368j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
€
½
/__inference_patch_encoder_3_layer_call_fn_59355	
patch
unknown:

	unknown_0:	
	unknown_1:
Δ
identity’StatefulPartitionedCallρ
StatefulPartitionedCallStatefulPartitionedCallpatchunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_patch_encoder_3_layer_call_and_return_conditional_losses_56984u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:?????????Δ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':??????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
5
_output_shapes#
!:??????????????????

_user_specified_namepatch
ζ)

R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_57507	
query	
valueC
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	A
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	C
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	N
6attention_output_einsum_einsum_readvariableop_resource:;
,attention_output_add_readvariableop_resource:	
identity’#attention_output/add/ReadVariableOp’-attention_output/einsum/Einsum/ReadVariableOp’key/add/ReadVariableOp’ key/einsum/Einsum/ReadVariableOp’query/add/ReadVariableOp’"query/einsum/Einsum/ReadVariableOp’value/add/ReadVariableOp’"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0²
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????Δ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0?
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????Δ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0²
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ΔJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *σ΅=e
MulMulquery/add:z:0Mul/y:output:0*
T0*1
_output_shapes
:?????????Δ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:?????????ΔΔ*
equationaecd,abcd->acben
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*1
_output_shapes
:?????????ΔΔ§
einsum_1/EinsumEinsumsoftmax/Softmax:softmax:0value/add:z:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationacbe,aecd->abcdͺ
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0Χ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:?????????Δ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes	
:*
dtype0«
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δm
IdentityIdentityattention_output/add:z:0^NoOp*
T0*-
_output_shapes
:?????????ΔΨ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:?????????Δ:?????????Δ: : : : : : : : 2J
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
:?????????Δ

_user_specified_namequery:TP
-
_output_shapes
:?????????Δ

_user_specified_namevalue
Ϋ

(__inference_dense_32_layer_call_fn_59591

inputs
unknown:

	unknown_0:	
identity’StatefulPartitionedCallή
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_32_layer_call_and_return_conditional_losses_57140u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:?????????Δ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????Δ: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
Β
}
-__inference_random_zoom_3_layer_call_fn_60103

inputs
unknown:	
identity’StatefulPartitionedCallΧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_56562y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????ΰΰ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ΰΰ: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
΅
’
B__inference_model_3_layer_call_and_return_conditional_losses_58849

inputs+
'data_augmentation_normalization_3_sub_y,
(data_augmentation_normalization_3_sqrt_x_
Qdata_augmentation_random_flip_3_stateful_uniform_full_int_rngreadandskip_resource:	Z
Ldata_augmentation_random_rotation_3_stateful_uniform_rngreadandskip_resource:	V
Hdata_augmentation_random_zoom_3_stateful_uniform_rngreadandskip_resource:	N
:patch_encoder_3_dense_31_tensordot_readvariableop_resource:
G
8patch_encoder_3_dense_31_biasadd_readvariableop_resource:	F
2patch_encoder_3_embedding_3_embedding_lookup_58681:
ΔK
<layer_normalization_22_batchnorm_mul_readvariableop_resource:	G
8layer_normalization_22_batchnorm_readvariableop_resource:	[
Cmulti_head_attention_11_query_einsum_einsum_readvariableop_resource:L
9multi_head_attention_11_query_add_readvariableop_resource:	Y
Amulti_head_attention_11_key_einsum_einsum_readvariableop_resource:J
7multi_head_attention_11_key_add_readvariableop_resource:	[
Cmulti_head_attention_11_value_einsum_einsum_readvariableop_resource:L
9multi_head_attention_11_value_add_readvariableop_resource:	f
Nmulti_head_attention_11_attention_output_einsum_einsum_readvariableop_resource:S
Dmulti_head_attention_11_attention_output_add_readvariableop_resource:	K
<layer_normalization_23_batchnorm_mul_readvariableop_resource:	G
8layer_normalization_23_batchnorm_readvariableop_resource:	>
*dense_32_tensordot_readvariableop_resource:
7
(dense_32_biasadd_readvariableop_resource:	>
*dense_33_tensordot_readvariableop_resource:
7
(dense_33_biasadd_readvariableop_resource:	<
'dense_34_matmul_readvariableop_resource:Δ7
(dense_34_biasadd_readvariableop_resource:	:
'dense_35_matmul_readvariableop_resource:	6
(dense_35_biasadd_readvariableop_resource:
identity’HData_Augmentation/random_flip_3/stateful_uniform_full_int/RngReadAndSkip’JData_Augmentation/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip’CData_Augmentation/random_rotation_3/stateful_uniform/RngReadAndSkip’?Data_Augmentation/random_zoom_3/stateful_uniform/RngReadAndSkip’AData_Augmentation/random_zoom_3/stateful_uniform_1/RngReadAndSkip’dense_32/BiasAdd/ReadVariableOp’!dense_32/Tensordot/ReadVariableOp’dense_33/BiasAdd/ReadVariableOp’!dense_33/Tensordot/ReadVariableOp’dense_34/BiasAdd/ReadVariableOp’dense_34/MatMul/ReadVariableOp’dense_35/BiasAdd/ReadVariableOp’dense_35/MatMul/ReadVariableOp’/layer_normalization_22/batchnorm/ReadVariableOp’3layer_normalization_22/batchnorm/mul/ReadVariableOp’/layer_normalization_23/batchnorm/ReadVariableOp’3layer_normalization_23/batchnorm/mul/ReadVariableOp’;multi_head_attention_11/attention_output/add/ReadVariableOp’Emulti_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp’.multi_head_attention_11/key/add/ReadVariableOp’8multi_head_attention_11/key/einsum/Einsum/ReadVariableOp’0multi_head_attention_11/query/add/ReadVariableOp’:multi_head_attention_11/query/einsum/Einsum/ReadVariableOp’0multi_head_attention_11/value/add/ReadVariableOp’:multi_head_attention_11/value/einsum/Einsum/ReadVariableOp’/patch_encoder_3/dense_31/BiasAdd/ReadVariableOp’1patch_encoder_3/dense_31/Tensordot/ReadVariableOp’,patch_encoder_3/embedding_3/embedding_lookupv
%Resize_Rescale/resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"ΰ   ΰ   Ο
/Resize_Rescale/resizing_3/resize/ResizeBilinearResizeBilinearinputs.Resize_Rescale/resizing_3/resize/size:output:0*
T0*1
_output_shapes
:?????????ΰΰ*
half_pixel_centers(f
!Resize_Rescale/rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;h
#Resize_Rescale/rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    Ο
Resize_Rescale/rescaling_3/mulMul@Resize_Rescale/resizing_3/resize/ResizeBilinear:resized_images:0*Resize_Rescale/rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:?????????ΰΰ΅
Resize_Rescale/rescaling_3/addAddV2"Resize_Rescale/rescaling_3/mul:z:0,Resize_Rescale/rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:?????????ΰΰ΅
%Data_Augmentation/normalization_3/subSub"Resize_Rescale/rescaling_3/add:z:0'data_augmentation_normalization_3_sub_y*
T0*1
_output_shapes
:?????????ΰΰ
&Data_Augmentation/normalization_3/SqrtSqrt(data_augmentation_normalization_3_sqrt_x*
T0*&
_output_shapes
:p
+Data_Augmentation/normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3Η
)Data_Augmentation/normalization_3/MaximumMaximum*Data_Augmentation/normalization_3/Sqrt:y:04Data_Augmentation/normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:Κ
)Data_Augmentation/normalization_3/truedivRealDiv)Data_Augmentation/normalization_3/sub:z:0-Data_Augmentation/normalization_3/Maximum:z:0*
T0*1
_output_shapes
:?????????ΰΰ
?Data_Augmentation/random_flip_3/stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?Data_Augmentation/random_flip_3/stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: ϋ
>Data_Augmentation/random_flip_3/stateful_uniform_full_int/ProdProdHData_Augmentation/random_flip_3/stateful_uniform_full_int/shape:output:0HData_Augmentation/random_flip_3/stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: 
@Data_Augmentation/random_flip_3/stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Α
@Data_Augmentation/random_flip_3/stateful_uniform_full_int/Cast_1CastGData_Augmentation/random_flip_3/stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ϊ
HData_Augmentation/random_flip_3/stateful_uniform_full_int/RngReadAndSkipRngReadAndSkipQdata_augmentation_random_flip_3_stateful_uniform_full_int_rngreadandskip_resourceIData_Augmentation/random_flip_3/stateful_uniform_full_int/Cast/x:output:0DData_Augmentation/random_flip_3/stateful_uniform_full_int/Cast_1:y:0*
_output_shapes
:
MData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
OData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
OData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
GData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_sliceStridedSlicePData_Augmentation/random_flip_3/stateful_uniform_full_int/RngReadAndSkip:value:0VData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice/stack:output:0XData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice/stack_1:output:0XData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskΟ
AData_Augmentation/random_flip_3/stateful_uniform_full_int/BitcastBitcastPData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
OData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
QData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
QData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ο
IData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice_1StridedSlicePData_Augmentation/random_flip_3/stateful_uniform_full_int/RngReadAndSkip:value:0XData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice_1/stack:output:0ZData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice_1/stack_1:output:0ZData_Augmentation/random_flip_3/stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Σ
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
valueB	R Ψ
%Data_Augmentation/random_flip_3/stackPackBData_Augmentation/random_flip_3/stateful_uniform_full_int:output:03Data_Augmentation/random_flip_3/zeros_like:output:0*
N*
T0	*
_output_shapes

:
3Data_Augmentation/random_flip_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
5Data_Augmentation/random_flip_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
5Data_Augmentation/random_flip_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
-Data_Augmentation/random_flip_3/strided_sliceStridedSlice.Data_Augmentation/random_flip_3/stack:output:0<Data_Augmentation/random_flip_3/strided_slice/stack:output:0>Data_Augmentation/random_flip_3/strided_slice/stack_1:output:0>Data_Augmentation/random_flip_3/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
SData_Augmentation/random_flip_3/stateless_random_flip_left_right/control_dependencyIdentity-Data_Augmentation/normalization_3/truediv:z:0*
T0*<
_class2
0.loc:@Data_Augmentation/normalization_3/truediv*1
_output_shapes
:?????????ΰΰ?
FData_Augmentation/random_flip_3/stateless_random_flip_left_right/ShapeShape\Data_Augmentation/random_flip_3/stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:
TData_Augmentation/random_flip_3/stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:  
VData_Augmentation/random_flip_3/stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
VData_Augmentation/random_flip_3/stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
NData_Augmentation/random_flip_3/stateless_random_flip_left_right/strided_sliceStridedSliceOData_Augmentation/random_flip_3/stateless_random_flip_left_right/Shape:output:0]Data_Augmentation/random_flip_3/stateless_random_flip_left_right/strided_slice/stack:output:0_Data_Augmentation/random_flip_3/stateless_random_flip_left_right/strided_slice/stack_1:output:0_Data_Augmentation/random_flip_3/stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskξ
_Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/shapePackWData_Augmentation/random_flip_3/stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:’
]Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    ’
]Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?π
vData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter6Data_Augmentation/random_flip_3/strided_slice:output:0* 
_output_shapes
::Έ
vData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
rData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2hData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/shape:output:0|Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????Υ
]Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/subSubfData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/max:output:0fData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ς
]Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/mulMul{Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0aData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:?????????Ϋ
YData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniformAddV2aData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/mul:z:0fData_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:?????????
PData_Augmentation/random_flip_3/stateless_random_flip_left_right/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
PData_Augmentation/random_flip_3/stateless_random_flip_left_right/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
PData_Augmentation/random_flip_3/stateless_random_flip_left_right/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ξ
NData_Augmentation/random_flip_3/stateless_random_flip_left_right/Reshape/shapePackWData_Augmentation/random_flip_3/stateless_random_flip_left_right/strided_slice:output:0YData_Augmentation/random_flip_3/stateless_random_flip_left_right/Reshape/shape/1:output:0YData_Augmentation/random_flip_3/stateless_random_flip_left_right/Reshape/shape/2:output:0YData_Augmentation/random_flip_3/stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Ε
HData_Augmentation/random_flip_3/stateless_random_flip_left_right/ReshapeReshape]Data_Augmentation/random_flip_3/stateless_random_flip_left_right/stateless_random_uniform:z:0WData_Augmentation/random_flip_3/stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????ά
FData_Augmentation/random_flip_3/stateless_random_flip_left_right/RoundRoundQData_Augmentation/random_flip_3/stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????
OData_Augmentation/random_flip_3/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Λ
JData_Augmentation/random_flip_3/stateless_random_flip_left_right/ReverseV2	ReverseV2\Data_Augmentation/random_flip_3/stateless_random_flip_left_right/control_dependency:output:0XData_Augmentation/random_flip_3/stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:?????????ΰΰ¨
DData_Augmentation/random_flip_3/stateless_random_flip_left_right/mulMulJData_Augmentation/random_flip_3/stateless_random_flip_left_right/Round:y:0SData_Augmentation/random_flip_3/stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:?????????ΰΰ
FData_Augmentation/random_flip_3/stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?’
DData_Augmentation/random_flip_3/stateless_random_flip_left_right/subSubOData_Augmentation/random_flip_3/stateless_random_flip_left_right/sub/x:output:0JData_Augmentation/random_flip_3/stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????±
FData_Augmentation/random_flip_3/stateless_random_flip_left_right/mul_1MulHData_Augmentation/random_flip_3/stateless_random_flip_left_right/sub:z:0\Data_Augmentation/random_flip_3/stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:?????????ΰΰ
DData_Augmentation/random_flip_3/stateless_random_flip_left_right/addAddV2HData_Augmentation/random_flip_3/stateless_random_flip_left_right/mul:z:0JData_Augmentation/random_flip_3/stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:?????????ΰΰ
AData_Augmentation/random_flip_3/stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
AData_Augmentation/random_flip_3/stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
@Data_Augmentation/random_flip_3/stateful_uniform_full_int_1/ProdProdJData_Augmentation/random_flip_3/stateful_uniform_full_int_1/shape:output:0JData_Augmentation/random_flip_3/stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: 
BData_Augmentation/random_flip_3/stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :Ε
BData_Augmentation/random_flip_3/stateful_uniform_full_int_1/Cast_1CastIData_Augmentation/random_flip_3/stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: «
JData_Augmentation/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkipRngReadAndSkipQdata_augmentation_random_flip_3_stateful_uniform_full_int_rngreadandskip_resourceKData_Augmentation/random_flip_3/stateful_uniform_full_int_1/Cast/x:output:0FData_Augmentation/random_flip_3/stateful_uniform_full_int_1/Cast_1:y:0I^Data_Augmentation/random_flip_3/stateful_uniform_full_int/RngReadAndSkip*
_output_shapes
:
OData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
QData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
QData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
IData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_sliceStridedSliceRData_Augmentation/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip:value:0XData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice/stack:output:0ZData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice/stack_1:output:0ZData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskΣ
CData_Augmentation/random_flip_3/stateful_uniform_full_int_1/BitcastBitcastRData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
QData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
SData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
SData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
KData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice_1StridedSliceRData_Augmentation/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip:value:0ZData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack:output:0\Data_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0\Data_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Χ
EData_Augmentation/random_flip_3/stateful_uniform_full_int_1/Bitcast_1BitcastTData_Augmentation/random_flip_3/stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
?Data_Augmentation/random_flip_3/stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :»
;Data_Augmentation/random_flip_3/stateful_uniform_full_int_1StatelessRandomUniformFullIntV2JData_Augmentation/random_flip_3/stateful_uniform_full_int_1/shape:output:0NData_Augmentation/random_flip_3/stateful_uniform_full_int_1/Bitcast_1:output:0LData_Augmentation/random_flip_3/stateful_uniform_full_int_1/Bitcast:output:0HData_Augmentation/random_flip_3/stateful_uniform_full_int_1/alg:output:0*
_output_shapes
:*
dtype0	v
,Data_Augmentation/random_flip_3/zeros_like_1Const*
_output_shapes
:*
dtype0	*
valueB	R ή
'Data_Augmentation/random_flip_3/stack_1PackDData_Augmentation/random_flip_3/stateful_uniform_full_int_1:output:05Data_Augmentation/random_flip_3/zeros_like_1:output:0*
N*
T0	*
_output_shapes

:
5Data_Augmentation/random_flip_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
7Data_Augmentation/random_flip_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
7Data_Augmentation/random_flip_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ‘
/Data_Augmentation/random_flip_3/strided_slice_1StridedSlice0Data_Augmentation/random_flip_3/stack_1:output:0>Data_Augmentation/random_flip_3/strided_slice_1/stack:output:0@Data_Augmentation/random_flip_3/strided_slice_1/stack_1:output:0@Data_Augmentation/random_flip_3/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask»
PData_Augmentation/random_flip_3/stateless_random_flip_up_down/control_dependencyIdentityHData_Augmentation/random_flip_3/stateless_random_flip_left_right/add:z:0*
T0*W
_classM
KIloc:@Data_Augmentation/random_flip_3/stateless_random_flip_left_right/add*1
_output_shapes
:?????????ΰΰΜ
CData_Augmentation/random_flip_3/stateless_random_flip_up_down/ShapeShapeYData_Augmentation/random_flip_3/stateless_random_flip_up_down/control_dependency:output:0*
T0*
_output_shapes
:
QData_Augmentation/random_flip_3/stateless_random_flip_up_down/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
SData_Augmentation/random_flip_3/stateless_random_flip_up_down/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
SData_Augmentation/random_flip_3/stateless_random_flip_up_down/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
KData_Augmentation/random_flip_3/stateless_random_flip_up_down/strided_sliceStridedSliceLData_Augmentation/random_flip_3/stateless_random_flip_up_down/Shape:output:0ZData_Augmentation/random_flip_3/stateless_random_flip_up_down/strided_slice/stack:output:0\Data_Augmentation/random_flip_3/stateless_random_flip_up_down/strided_slice/stack_1:output:0\Data_Augmentation/random_flip_3/stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskθ
\Data_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/shapePackTData_Augmentation/random_flip_3/stateless_random_flip_up_down/strided_slice:output:0*
N*
T0*
_output_shapes
:
ZData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
ZData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ο
sData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounter8Data_Augmentation/random_flip_3/strided_slice_1:output:0* 
_output_shapes
::΅
sData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
oData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2eData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/shape:output:0yData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0}Data_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0|Data_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????Μ
ZData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/subSubcData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/max:output:0cData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: ι
ZData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/mulMulxData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0^Data_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:??????????
VData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniformAddV2^Data_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/mul:z:0cData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:?????????
MData_Augmentation/random_flip_3/stateless_random_flip_up_down/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
MData_Augmentation/random_flip_3/stateless_random_flip_up_down/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :
MData_Augmentation/random_flip_3/stateless_random_flip_up_down/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :ί
KData_Augmentation/random_flip_3/stateless_random_flip_up_down/Reshape/shapePackTData_Augmentation/random_flip_3/stateless_random_flip_up_down/strided_slice:output:0VData_Augmentation/random_flip_3/stateless_random_flip_up_down/Reshape/shape/1:output:0VData_Augmentation/random_flip_3/stateless_random_flip_up_down/Reshape/shape/2:output:0VData_Augmentation/random_flip_3/stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:Ό
EData_Augmentation/random_flip_3/stateless_random_flip_up_down/ReshapeReshapeZData_Augmentation/random_flip_3/stateless_random_flip_up_down/stateless_random_uniform:z:0TData_Augmentation/random_flip_3/stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????Φ
CData_Augmentation/random_flip_3/stateless_random_flip_up_down/RoundRoundNData_Augmentation/random_flip_3/stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:?????????
LData_Augmentation/random_flip_3/stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:Β
GData_Augmentation/random_flip_3/stateless_random_flip_up_down/ReverseV2	ReverseV2YData_Augmentation/random_flip_3/stateless_random_flip_up_down/control_dependency:output:0UData_Augmentation/random_flip_3/stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:?????????ΰΰ
AData_Augmentation/random_flip_3/stateless_random_flip_up_down/mulMulGData_Augmentation/random_flip_3/stateless_random_flip_up_down/Round:y:0PData_Augmentation/random_flip_3/stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:?????????ΰΰ
CData_Augmentation/random_flip_3/stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
AData_Augmentation/random_flip_3/stateless_random_flip_up_down/subSubLData_Augmentation/random_flip_3/stateless_random_flip_up_down/sub/x:output:0GData_Augmentation/random_flip_3/stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:?????????¨
CData_Augmentation/random_flip_3/stateless_random_flip_up_down/mul_1MulEData_Augmentation/random_flip_3/stateless_random_flip_up_down/sub:z:0YData_Augmentation/random_flip_3/stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:?????????ΰΰ
AData_Augmentation/random_flip_3/stateless_random_flip_up_down/addAddV2EData_Augmentation/random_flip_3/stateless_random_flip_up_down/mul:z:0GData_Augmentation/random_flip_3/stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:?????????ΰΰ
)Data_Augmentation/random_rotation_3/ShapeShapeEData_Augmentation/random_flip_3/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
:
7Data_Augmentation/random_rotation_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9Data_Augmentation/random_rotation_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9Data_Augmentation/random_rotation_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1Data_Augmentation/random_rotation_3/strided_sliceStridedSlice2Data_Augmentation/random_rotation_3/Shape:output:0@Data_Augmentation/random_rotation_3/strided_slice/stack:output:0BData_Augmentation/random_rotation_3/strided_slice/stack_1:output:0BData_Augmentation/random_rotation_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
9Data_Augmentation/random_rotation_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ύ????????
;Data_Augmentation/random_rotation_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????
;Data_Augmentation/random_rotation_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3Data_Augmentation/random_rotation_3/strided_slice_1StridedSlice2Data_Augmentation/random_rotation_3/Shape:output:0BData_Augmentation/random_rotation_3/strided_slice_1/stack:output:0DData_Augmentation/random_rotation_3/strided_slice_1/stack_1:output:0DData_Augmentation/random_rotation_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
(Data_Augmentation/random_rotation_3/CastCast<Data_Augmentation/random_rotation_3/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 
9Data_Augmentation/random_rotation_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ώ????????
;Data_Augmentation/random_rotation_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????
;Data_Augmentation/random_rotation_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3Data_Augmentation/random_rotation_3/strided_slice_2StridedSlice2Data_Augmentation/random_rotation_3/Shape:output:0BData_Augmentation/random_rotation_3/strided_slice_2/stack:output:0DData_Augmentation/random_rotation_3/strided_slice_2/stack_1:output:0DData_Augmentation/random_rotation_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
*Data_Augmentation/random_rotation_3/Cast_1Cast<Data_Augmentation/random_rotation_3/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: ¬
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
 *ΫIΐ}
8Data_Augmentation/random_rotation_3/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *ΫI@
:Data_Augmentation/random_rotation_3/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: μ
9Data_Augmentation/random_rotation_3/stateful_uniform/ProdProdCData_Augmentation/random_rotation_3/stateful_uniform/shape:output:0CData_Augmentation/random_rotation_3/stateful_uniform/Const:output:0*
T0*
_output_shapes
: }
;Data_Augmentation/random_rotation_3/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :·
;Data_Augmentation/random_rotation_3/stateful_uniform/Cast_1CastBData_Augmentation/random_rotation_3/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ζ
CData_Augmentation/random_rotation_3/stateful_uniform/RngReadAndSkipRngReadAndSkipLdata_augmentation_random_rotation_3_stateful_uniform_rngreadandskip_resourceDData_Augmentation/random_rotation_3/stateful_uniform/Cast/x:output:0?Data_Augmentation/random_rotation_3/stateful_uniform/Cast_1:y:0*
_output_shapes
:
HData_Augmentation/random_rotation_3/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
JData_Augmentation/random_rotation_3/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
JData_Augmentation/random_rotation_3/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ΰ
BData_Augmentation/random_rotation_3/stateful_uniform/strided_sliceStridedSliceKData_Augmentation/random_rotation_3/stateful_uniform/RngReadAndSkip:value:0QData_Augmentation/random_rotation_3/stateful_uniform/strided_slice/stack:output:0SData_Augmentation/random_rotation_3/stateful_uniform/strided_slice/stack_1:output:0SData_Augmentation/random_rotation_3/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskΕ
<Data_Augmentation/random_rotation_3/stateful_uniform/BitcastBitcastKData_Augmentation/random_rotation_3/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
JData_Augmentation/random_rotation_3/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
LData_Augmentation/random_rotation_3/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
LData_Augmentation/random_rotation_3/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Φ
DData_Augmentation/random_rotation_3/stateful_uniform/strided_slice_1StridedSliceKData_Augmentation/random_rotation_3/stateful_uniform/RngReadAndSkip:value:0SData_Augmentation/random_rotation_3/stateful_uniform/strided_slice_1/stack:output:0UData_Augmentation/random_rotation_3/stateful_uniform/strided_slice_1/stack_1:output:0UData_Augmentation/random_rotation_3/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ι
>Data_Augmentation/random_rotation_3/stateful_uniform/Bitcast_1BitcastMData_Augmentation/random_rotation_3/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
QData_Augmentation/random_rotation_3/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ώ
MData_Augmentation/random_rotation_3/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2CData_Augmentation/random_rotation_3/stateful_uniform/shape:output:0GData_Augmentation/random_rotation_3/stateful_uniform/Bitcast_1:output:0EData_Augmentation/random_rotation_3/stateful_uniform/Bitcast:output:0ZData_Augmentation/random_rotation_3/stateful_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????ζ
8Data_Augmentation/random_rotation_3/stateful_uniform/subSubAData_Augmentation/random_rotation_3/stateful_uniform/max:output:0AData_Augmentation/random_rotation_3/stateful_uniform/min:output:0*
T0*
_output_shapes
: 
8Data_Augmentation/random_rotation_3/stateful_uniform/mulMulVData_Augmentation/random_rotation_3/stateful_uniform/StatelessRandomUniformV2:output:0<Data_Augmentation/random_rotation_3/stateful_uniform/sub:z:0*
T0*#
_output_shapes
:?????????μ
4Data_Augmentation/random_rotation_3/stateful_uniformAddV2<Data_Augmentation/random_rotation_3/stateful_uniform/mul:z:0AData_Augmentation/random_rotation_3/stateful_uniform/min:output:0*
T0*#
_output_shapes
:?????????~
9Data_Augmentation/random_rotation_3/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Σ
7Data_Augmentation/random_rotation_3/rotation_matrix/subSub.Data_Augmentation/random_rotation_3/Cast_1:y:0BData_Augmentation/random_rotation_3/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: ¦
7Data_Augmentation/random_rotation_3/rotation_matrix/CosCos8Data_Augmentation/random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
;Data_Augmentation/random_rotation_3/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Χ
9Data_Augmentation/random_rotation_3/rotation_matrix/sub_1Sub.Data_Augmentation/random_rotation_3/Cast_1:y:0DData_Augmentation/random_rotation_3/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: θ
7Data_Augmentation/random_rotation_3/rotation_matrix/mulMul;Data_Augmentation/random_rotation_3/rotation_matrix/Cos:y:0=Data_Augmentation/random_rotation_3/rotation_matrix/sub_1:z:0*
T0*#
_output_shapes
:?????????¦
7Data_Augmentation/random_rotation_3/rotation_matrix/SinSin8Data_Augmentation/random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
;Data_Augmentation/random_rotation_3/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Υ
9Data_Augmentation/random_rotation_3/rotation_matrix/sub_2Sub,Data_Augmentation/random_rotation_3/Cast:y:0DData_Augmentation/random_rotation_3/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: κ
9Data_Augmentation/random_rotation_3/rotation_matrix/mul_1Mul;Data_Augmentation/random_rotation_3/rotation_matrix/Sin:y:0=Data_Augmentation/random_rotation_3/rotation_matrix/sub_2:z:0*
T0*#
_output_shapes
:?????????κ
9Data_Augmentation/random_rotation_3/rotation_matrix/sub_3Sub;Data_Augmentation/random_rotation_3/rotation_matrix/mul:z:0=Data_Augmentation/random_rotation_3/rotation_matrix/mul_1:z:0*
T0*#
_output_shapes
:?????????κ
9Data_Augmentation/random_rotation_3/rotation_matrix/sub_4Sub;Data_Augmentation/random_rotation_3/rotation_matrix/sub:z:0=Data_Augmentation/random_rotation_3/rotation_matrix/sub_3:z:0*
T0*#
_output_shapes
:?????????
=Data_Augmentation/random_rotation_3/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @ϋ
;Data_Augmentation/random_rotation_3/rotation_matrix/truedivRealDiv=Data_Augmentation/random_rotation_3/rotation_matrix/sub_4:z:0FData_Augmentation/random_rotation_3/rotation_matrix/truediv/y:output:0*
T0*#
_output_shapes
:?????????
;Data_Augmentation/random_rotation_3/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Υ
9Data_Augmentation/random_rotation_3/rotation_matrix/sub_5Sub,Data_Augmentation/random_rotation_3/Cast:y:0DData_Augmentation/random_rotation_3/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: ¨
9Data_Augmentation/random_rotation_3/rotation_matrix/Sin_1Sin8Data_Augmentation/random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
;Data_Augmentation/random_rotation_3/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Χ
9Data_Augmentation/random_rotation_3/rotation_matrix/sub_6Sub.Data_Augmentation/random_rotation_3/Cast_1:y:0DData_Augmentation/random_rotation_3/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: μ
9Data_Augmentation/random_rotation_3/rotation_matrix/mul_2Mul=Data_Augmentation/random_rotation_3/rotation_matrix/Sin_1:y:0=Data_Augmentation/random_rotation_3/rotation_matrix/sub_6:z:0*
T0*#
_output_shapes
:?????????¨
9Data_Augmentation/random_rotation_3/rotation_matrix/Cos_1Cos8Data_Augmentation/random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
;Data_Augmentation/random_rotation_3/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Υ
9Data_Augmentation/random_rotation_3/rotation_matrix/sub_7Sub,Data_Augmentation/random_rotation_3/Cast:y:0DData_Augmentation/random_rotation_3/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: μ
9Data_Augmentation/random_rotation_3/rotation_matrix/mul_3Mul=Data_Augmentation/random_rotation_3/rotation_matrix/Cos_1:y:0=Data_Augmentation/random_rotation_3/rotation_matrix/sub_7:z:0*
T0*#
_output_shapes
:?????????μ
7Data_Augmentation/random_rotation_3/rotation_matrix/addAddV2=Data_Augmentation/random_rotation_3/rotation_matrix/mul_2:z:0=Data_Augmentation/random_rotation_3/rotation_matrix/mul_3:z:0*
T0*#
_output_shapes
:?????????κ
9Data_Augmentation/random_rotation_3/rotation_matrix/sub_8Sub=Data_Augmentation/random_rotation_3/rotation_matrix/sub_5:z:0;Data_Augmentation/random_rotation_3/rotation_matrix/add:z:0*
T0*#
_output_shapes
:?????????
?Data_Augmentation/random_rotation_3/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
=Data_Augmentation/random_rotation_3/rotation_matrix/truediv_1RealDiv=Data_Augmentation/random_rotation_3/rotation_matrix/sub_8:z:0HData_Augmentation/random_rotation_3/rotation_matrix/truediv_1/y:output:0*
T0*#
_output_shapes
:?????????‘
9Data_Augmentation/random_rotation_3/rotation_matrix/ShapeShape8Data_Augmentation/random_rotation_3/stateful_uniform:z:0*
T0*
_output_shapes
:
GData_Augmentation/random_rotation_3/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
IData_Augmentation/random_rotation_3/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
IData_Augmentation/random_rotation_3/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Υ
AData_Augmentation/random_rotation_3/rotation_matrix/strided_sliceStridedSliceBData_Augmentation/random_rotation_3/rotation_matrix/Shape:output:0PData_Augmentation/random_rotation_3/rotation_matrix/strided_slice/stack:output:0RData_Augmentation/random_rotation_3/rotation_matrix/strided_slice/stack_1:output:0RData_Augmentation/random_rotation_3/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¨
9Data_Augmentation/random_rotation_3/rotation_matrix/Cos_2Cos8Data_Augmentation/random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
IData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
CData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_1StridedSlice=Data_Augmentation/random_rotation_3/rotation_matrix/Cos_2:y:0RData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_1/stack:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_1/stack_1:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask¨
9Data_Augmentation/random_rotation_3/rotation_matrix/Sin_2Sin8Data_Augmentation/random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
IData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
CData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_2StridedSlice=Data_Augmentation/random_rotation_3/rotation_matrix/Sin_2:y:0RData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_2/stack:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_2/stack_1:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_maskΎ
7Data_Augmentation/random_rotation_3/rotation_matrix/NegNegLData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????
IData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
CData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_3StridedSlice?Data_Augmentation/random_rotation_3/rotation_matrix/truediv:z:0RData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_3/stack:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_3/stack_1:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask¨
9Data_Augmentation/random_rotation_3/rotation_matrix/Sin_3Sin8Data_Augmentation/random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
IData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
CData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_4StridedSlice=Data_Augmentation/random_rotation_3/rotation_matrix/Sin_3:y:0RData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_4/stack:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_4/stack_1:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask¨
9Data_Augmentation/random_rotation_3/rotation_matrix/Cos_3Cos8Data_Augmentation/random_rotation_3/stateful_uniform:z:0*
T0*#
_output_shapes
:?????????
IData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
CData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_5StridedSlice=Data_Augmentation/random_rotation_3/rotation_matrix/Cos_3:y:0RData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_5/stack:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_5/stack_1:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
IData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
KData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
CData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_6StridedSliceAData_Augmentation/random_rotation_3/rotation_matrix/truediv_1:z:0RData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_6/stack:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_6/stack_1:output:0TData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask
BData_Augmentation/random_rotation_3/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
@Data_Augmentation/random_rotation_3/rotation_matrix/zeros/packedPackJData_Augmentation/random_rotation_3/rotation_matrix/strided_slice:output:0KData_Augmentation/random_rotation_3/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
?Data_Augmentation/random_rotation_3/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
9Data_Augmentation/random_rotation_3/rotation_matrix/zerosFillIData_Augmentation/random_rotation_3/rotation_matrix/zeros/packed:output:0HData_Augmentation/random_rotation_3/rotation_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????
?Data_Augmentation/random_rotation_3/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :?
:Data_Augmentation/random_rotation_3/rotation_matrix/concatConcatV2LData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_1:output:0;Data_Augmentation/random_rotation_3/rotation_matrix/Neg:y:0LData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_3:output:0LData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_4:output:0LData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_5:output:0LData_Augmentation/random_rotation_3/rotation_matrix/strided_slice_6:output:0BData_Augmentation/random_rotation_3/rotation_matrix/zeros:output:0HData_Augmentation/random_rotation_3/rotation_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????¨
3Data_Augmentation/random_rotation_3/transform/ShapeShapeEData_Augmentation/random_flip_3/stateless_random_flip_up_down/add:z:0*
T0*
_output_shapes
:
AData_Augmentation/random_rotation_3/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
CData_Augmentation/random_rotation_3/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
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
 *    π
HData_Augmentation/random_rotation_3/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3EData_Augmentation/random_flip_3/stateless_random_flip_up_down/add:z:0CData_Augmentation/random_rotation_3/rotation_matrix/concat:output:0DData_Augmentation/random_rotation_3/transform/strided_slice:output:0AData_Augmentation/random_rotation_3/transform/fill_value:output:0*1
_output_shapes
:?????????ΰΰ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR²
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
valueB:ρ
-Data_Augmentation/random_zoom_3/strided_sliceStridedSlice.Data_Augmentation/random_zoom_3/Shape:output:0<Data_Augmentation/random_zoom_3/strided_slice/stack:output:0>Data_Augmentation/random_zoom_3/strided_slice/stack_1:output:0>Data_Augmentation/random_zoom_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
5Data_Augmentation/random_zoom_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ύ????????
7Data_Augmentation/random_zoom_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????
7Data_Augmentation/random_zoom_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
/Data_Augmentation/random_zoom_3/strided_slice_1StridedSlice.Data_Augmentation/random_zoom_3/Shape:output:0>Data_Augmentation/random_zoom_3/strided_slice_1/stack:output:0@Data_Augmentation/random_zoom_3/strided_slice_1/stack_1:output:0@Data_Augmentation/random_zoom_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
$Data_Augmentation/random_zoom_3/CastCast8Data_Augmentation/random_zoom_3/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 
5Data_Augmentation/random_zoom_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ώ????????
7Data_Augmentation/random_zoom_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????
7Data_Augmentation/random_zoom_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ω
/Data_Augmentation/random_zoom_3/strided_slice_2StridedSlice.Data_Augmentation/random_zoom_3/Shape:output:0>Data_Augmentation/random_zoom_3/strided_slice_2/stack:output:0@Data_Augmentation/random_zoom_3/strided_slice_2/stack_1:output:0@Data_Augmentation/random_zoom_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
&Data_Augmentation/random_zoom_3/Cast_1Cast8Data_Augmentation/random_zoom_3/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: z
8Data_Augmentation/random_zoom_3/stateful_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :η
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
 *ff¦?
6Data_Augmentation/random_zoom_3/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: ΰ
5Data_Augmentation/random_zoom_3/stateful_uniform/ProdProd?Data_Augmentation/random_zoom_3/stateful_uniform/shape:output:0?Data_Augmentation/random_zoom_3/stateful_uniform/Const:output:0*
T0*
_output_shapes
: y
7Data_Augmentation/random_zoom_3/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :―
7Data_Augmentation/random_zoom_3/stateful_uniform/Cast_1Cast>Data_Augmentation/random_zoom_3/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ά
?Data_Augmentation/random_zoom_3/stateful_uniform/RngReadAndSkipRngReadAndSkipHdata_augmentation_random_zoom_3_stateful_uniform_rngreadandskip_resource@Data_Augmentation/random_zoom_3/stateful_uniform/Cast/x:output:0;Data_Augmentation/random_zoom_3/stateful_uniform/Cast_1:y:0*
_output_shapes
:
DData_Augmentation/random_zoom_3/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
FData_Augmentation/random_zoom_3/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
FData_Augmentation/random_zoom_3/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Μ
>Data_Augmentation/random_zoom_3/stateful_uniform/strided_sliceStridedSliceGData_Augmentation/random_zoom_3/stateful_uniform/RngReadAndSkip:value:0MData_Augmentation/random_zoom_3/stateful_uniform/strided_slice/stack:output:0OData_Augmentation/random_zoom_3/stateful_uniform/strided_slice/stack_1:output:0OData_Augmentation/random_zoom_3/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask½
8Data_Augmentation/random_zoom_3/stateful_uniform/BitcastBitcastGData_Augmentation/random_zoom_3/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
FData_Augmentation/random_zoom_3/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
HData_Augmentation/random_zoom_3/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
HData_Augmentation/random_zoom_3/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Β
@Data_Augmentation/random_zoom_3/stateful_uniform/strided_slice_1StridedSliceGData_Augmentation/random_zoom_3/stateful_uniform/RngReadAndSkip:value:0OData_Augmentation/random_zoom_3/stateful_uniform/strided_slice_1/stack:output:0QData_Augmentation/random_zoom_3/stateful_uniform/strided_slice_1/stack_1:output:0QData_Augmentation/random_zoom_3/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Α
:Data_Augmentation/random_zoom_3/stateful_uniform/Bitcast_1BitcastIData_Augmentation/random_zoom_3/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
MData_Augmentation/random_zoom_3/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :―
IData_Augmentation/random_zoom_3/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2?Data_Augmentation/random_zoom_3/stateful_uniform/shape:output:0CData_Augmentation/random_zoom_3/stateful_uniform/Bitcast_1:output:0AData_Augmentation/random_zoom_3/stateful_uniform/Bitcast:output:0VData_Augmentation/random_zoom_3/stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????Ϊ
4Data_Augmentation/random_zoom_3/stateful_uniform/subSub=Data_Augmentation/random_zoom_3/stateful_uniform/max:output:0=Data_Augmentation/random_zoom_3/stateful_uniform/min:output:0*
T0*
_output_shapes
: ϋ
4Data_Augmentation/random_zoom_3/stateful_uniform/mulMulRData_Augmentation/random_zoom_3/stateful_uniform/StatelessRandomUniformV2:output:08Data_Augmentation/random_zoom_3/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????δ
0Data_Augmentation/random_zoom_3/stateful_uniformAddV28Data_Augmentation/random_zoom_3/stateful_uniform/mul:z:0=Data_Augmentation/random_zoom_3/stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????|
:Data_Augmentation/random_zoom_3/stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :λ
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
 *ff¦?
8Data_Augmentation/random_zoom_3/stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ζ
7Data_Augmentation/random_zoom_3/stateful_uniform_1/ProdProdAData_Augmentation/random_zoom_3/stateful_uniform_1/shape:output:0AData_Augmentation/random_zoom_3/stateful_uniform_1/Const:output:0*
T0*
_output_shapes
: {
9Data_Augmentation/random_zoom_3/stateful_uniform_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :³
9Data_Augmentation/random_zoom_3/stateful_uniform_1/Cast_1Cast@Data_Augmentation/random_zoom_3/stateful_uniform_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ώ
AData_Augmentation/random_zoom_3/stateful_uniform_1/RngReadAndSkipRngReadAndSkipHdata_augmentation_random_zoom_3_stateful_uniform_rngreadandskip_resourceBData_Augmentation/random_zoom_3/stateful_uniform_1/Cast/x:output:0=Data_Augmentation/random_zoom_3/stateful_uniform_1/Cast_1:y:0@^Data_Augmentation/random_zoom_3/stateful_uniform/RngReadAndSkip*
_output_shapes
:
FData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
HData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
HData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Φ
@Data_Augmentation/random_zoom_3/stateful_uniform_1/strided_sliceStridedSliceIData_Augmentation/random_zoom_3/stateful_uniform_1/RngReadAndSkip:value:0OData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice/stack:output:0QData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice/stack_1:output:0QData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_maskΑ
:Data_Augmentation/random_zoom_3/stateful_uniform_1/BitcastBitcastIData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
HData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
JData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
JData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Μ
BData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice_1StridedSliceIData_Augmentation/random_zoom_3/stateful_uniform_1/RngReadAndSkip:value:0QData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice_1/stack:output:0SData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice_1/stack_1:output:0SData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:Ε
<Data_Augmentation/random_zoom_3/stateful_uniform_1/Bitcast_1BitcastKData_Augmentation/random_zoom_3/stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
OData_Augmentation/random_zoom_3/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :Ή
KData_Augmentation/random_zoom_3/stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2AData_Augmentation/random_zoom_3/stateful_uniform_1/shape:output:0EData_Augmentation/random_zoom_3/stateful_uniform_1/Bitcast_1:output:0CData_Augmentation/random_zoom_3/stateful_uniform_1/Bitcast:output:0XData_Augmentation/random_zoom_3/stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????ΰ
6Data_Augmentation/random_zoom_3/stateful_uniform_1/subSub?Data_Augmentation/random_zoom_3/stateful_uniform_1/max:output:0?Data_Augmentation/random_zoom_3/stateful_uniform_1/min:output:0*
T0*
_output_shapes
: 
6Data_Augmentation/random_zoom_3/stateful_uniform_1/mulMulTData_Augmentation/random_zoom_3/stateful_uniform_1/StatelessRandomUniformV2:output:0:Data_Augmentation/random_zoom_3/stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????κ
2Data_Augmentation/random_zoom_3/stateful_uniform_1AddV2:Data_Augmentation/random_zoom_3/stateful_uniform_1/mul:z:0?Data_Augmentation/random_zoom_3/stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????m
+Data_Augmentation/random_zoom_3/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
&Data_Augmentation/random_zoom_3/concatConcatV26Data_Augmentation/random_zoom_3/stateful_uniform_1:z:04Data_Augmentation/random_zoom_3/stateful_uniform:z:04Data_Augmentation/random_zoom_3/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????
1Data_Augmentation/random_zoom_3/zoom_matrix/ShapeShape/Data_Augmentation/random_zoom_3/concat:output:0*
T0*
_output_shapes
:
?Data_Augmentation/random_zoom_3/zoom_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
AData_Augmentation/random_zoom_3/zoom_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
AData_Augmentation/random_zoom_3/zoom_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:­
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
 *  ?Ώ
/Data_Augmentation/random_zoom_3/zoom_matrix/subSub*Data_Augmentation/random_zoom_3/Cast_1:y:0:Data_Augmentation/random_zoom_3/zoom_matrix/sub/y:output:0*
T0*
_output_shapes
: z
5Data_Augmentation/random_zoom_3/zoom_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Τ
3Data_Augmentation/random_zoom_3/zoom_matrix/truedivRealDiv3Data_Augmentation/random_zoom_3/zoom_matrix/sub:z:0>Data_Augmentation/random_zoom_3/zoom_matrix/truediv/y:output:0*
T0*
_output_shapes
: 
AData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
CData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
CData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ς
;Data_Augmentation/random_zoom_3/zoom_matrix/strided_slice_1StridedSlice/Data_Augmentation/random_zoom_3/concat:output:0JData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_1/stack:output:0LData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_1/stack_1:output:0LData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskx
3Data_Augmentation/random_zoom_3/zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ξ
1Data_Augmentation/random_zoom_3/zoom_matrix/sub_1Sub<Data_Augmentation/random_zoom_3/zoom_matrix/sub_1/x:output:0DData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????Ψ
/Data_Augmentation/random_zoom_3/zoom_matrix/mulMul7Data_Augmentation/random_zoom_3/zoom_matrix/truediv:z:05Data_Augmentation/random_zoom_3/zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????x
3Data_Augmentation/random_zoom_3/zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Α
1Data_Augmentation/random_zoom_3/zoom_matrix/sub_2Sub(Data_Augmentation/random_zoom_3/Cast:y:0<Data_Augmentation/random_zoom_3/zoom_matrix/sub_2/y:output:0*
T0*
_output_shapes
: |
7Data_Augmentation/random_zoom_3/zoom_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ϊ
5Data_Augmentation/random_zoom_3/zoom_matrix/truediv_1RealDiv5Data_Augmentation/random_zoom_3/zoom_matrix/sub_2:z:0@Data_Augmentation/random_zoom_3/zoom_matrix/truediv_1/y:output:0*
T0*
_output_shapes
: 
AData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
CData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
CData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ς
;Data_Augmentation/random_zoom_3/zoom_matrix/strided_slice_2StridedSlice/Data_Augmentation/random_zoom_3/concat:output:0JData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_2/stack:output:0LData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_2/stack_1:output:0LData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskx
3Data_Augmentation/random_zoom_3/zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ξ
1Data_Augmentation/random_zoom_3/zoom_matrix/sub_3Sub<Data_Augmentation/random_zoom_3/zoom_matrix/sub_3/x:output:0DData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????ά
1Data_Augmentation/random_zoom_3/zoom_matrix/mul_1Mul9Data_Augmentation/random_zoom_3/zoom_matrix/truediv_1:z:05Data_Augmentation/random_zoom_3/zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????
AData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            
CData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
CData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ς
;Data_Augmentation/random_zoom_3/zoom_matrix/strided_slice_3StridedSlice/Data_Augmentation/random_zoom_3/concat:output:0JData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_3/stack:output:0LData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_3/stack_1:output:0LData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask|
:Data_Augmentation/random_zoom_3/zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :χ
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
 *    π
1Data_Augmentation/random_zoom_3/zoom_matrix/zerosFillAData_Augmentation/random_zoom_3/zoom_matrix/zeros/packed:output:0@Data_Augmentation/random_zoom_3/zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????~
<Data_Augmentation/random_zoom_3/zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ϋ
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
 *    φ
3Data_Augmentation/random_zoom_3/zoom_matrix/zeros_1FillCData_Augmentation/random_zoom_3/zoom_matrix/zeros_1/packed:output:0BData_Augmentation/random_zoom_3/zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????
AData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           
CData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           
CData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ς
;Data_Augmentation/random_zoom_3/zoom_matrix/strided_slice_4StridedSlice/Data_Augmentation/random_zoom_3/concat:output:0JData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_4/stack:output:0LData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_4/stack_1:output:0LData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask~
<Data_Augmentation/random_zoom_3/zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ϋ
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
 *    φ
3Data_Augmentation/random_zoom_3/zoom_matrix/zeros_2FillCData_Augmentation/random_zoom_3/zoom_matrix/zeros_2/packed:output:0BData_Augmentation/random_zoom_3/zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????y
7Data_Augmentation/random_zoom_3/zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :λ
2Data_Augmentation/random_zoom_3/zoom_matrix/concatConcatV2DData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_3:output:0:Data_Augmentation/random_zoom_3/zoom_matrix/zeros:output:03Data_Augmentation/random_zoom_3/zoom_matrix/mul:z:0<Data_Augmentation/random_zoom_3/zoom_matrix/zeros_1:output:0DData_Augmentation/random_zoom_3/zoom_matrix/strided_slice_4:output:05Data_Augmentation/random_zoom_3/zoom_matrix/mul_1:z:0<Data_Augmentation/random_zoom_3/zoom_matrix/zeros_2:output:0@Data_Augmentation/random_zoom_3/zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????Ό
/Data_Augmentation/random_zoom_3/transform/ShapeShape]Data_Augmentation/random_rotation_3/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*
_output_shapes
:
=Data_Augmentation/random_zoom_3/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?Data_Augmentation/random_zoom_3/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?Data_Augmentation/random_zoom_3/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
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
 *    ά
DData_Augmentation/random_zoom_3/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3]Data_Augmentation/random_rotation_3/transform/ImageProjectiveTransformV3:transformed_images:0;Data_Augmentation/random_zoom_3/zoom_matrix/concat:output:0@Data_Augmentation/random_zoom_3/transform/strided_slice:output:0=Data_Augmentation/random_zoom_3/transform/fill_value:output:0*1
_output_shapes
:?????????ΰΰ*
dtype0*
interpolation
BILINEAR
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
valueB:
patches_7/strided_sliceStridedSlicepatches_7/Shape:output:0&patches_7/strided_slice/stack:output:0(patches_7/strided_slice/stack_1:output:0(patches_7/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
patches_7/ExtractImagePatchesExtractImagePatchesYData_Augmentation/random_zoom_3/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*0
_output_shapes
:?????????*
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
?????????\
patches_7/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :·
patches_7/Reshape/shapePack patches_7/strided_slice:output:0"patches_7/Reshape/shape/1:output:0"patches_7/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:§
patches_7/ReshapeReshape'patches_7/ExtractImagePatches:patches:0 patches_7/Reshape/shape:output:0*
T0*5
_output_shapes#
!:??????????????????]
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
B :Δ]
patch_encoder_3/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :­
patch_encoder_3/rangeRange$patch_encoder_3/range/start:output:0$patch_encoder_3/range/limit:output:0$patch_encoder_3/range/delta:output:0*
_output_shapes	
:Δ?
1patch_encoder_3/dense_31/Tensordot/ReadVariableOpReadVariableOp:patch_encoder_3_dense_31_tensordot_readvariableop_resource* 
_output_shapes
:
*
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
value	B : 
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
valueB: Ή
'patch_encoder_3/dense_31/Tensordot/ProdProd4patch_encoder_3/dense_31/Tensordot/GatherV2:output:01patch_encoder_3/dense_31/Tensordot/Const:output:0*
T0*
_output_shapes
: t
*patch_encoder_3/dense_31/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: Ώ
)patch_encoder_3/dense_31/Tensordot/Prod_1Prod6patch_encoder_3/dense_31/Tensordot/GatherV2_1:output:03patch_encoder_3/dense_31/Tensordot/Const_1:output:0*
T0*
_output_shapes
: p
.patch_encoder_3/dense_31/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
)patch_encoder_3/dense_31/Tensordot/concatConcatV20patch_encoder_3/dense_31/Tensordot/free:output:00patch_encoder_3/dense_31/Tensordot/axes:output:07patch_encoder_3/dense_31/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:Δ
(patch_encoder_3/dense_31/Tensordot/stackPack0patch_encoder_3/dense_31/Tensordot/Prod:output:02patch_encoder_3/dense_31/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:Ι
,patch_encoder_3/dense_31/Tensordot/transpose	Transposepatches_7/Reshape:output:02patch_encoder_3/dense_31/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:??????????????????Υ
*patch_encoder_3/dense_31/Tensordot/ReshapeReshape0patch_encoder_3/dense_31/Tensordot/transpose:y:01patch_encoder_3/dense_31/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????Φ
)patch_encoder_3/dense_31/Tensordot/MatMulMatMul3patch_encoder_3/dense_31/Tensordot/Reshape:output:09patch_encoder_3/dense_31/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????u
*patch_encoder_3/dense_31/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:r
0patch_encoder_3/dense_31/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
+patch_encoder_3/dense_31/Tensordot/concat_1ConcatV24patch_encoder_3/dense_31/Tensordot/GatherV2:output:03patch_encoder_3/dense_31/Tensordot/Const_2:output:09patch_encoder_3/dense_31/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ψ
"patch_encoder_3/dense_31/TensordotReshape3patch_encoder_3/dense_31/Tensordot/MatMul:product:04patch_encoder_3/dense_31/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:??????????????????₯
/patch_encoder_3/dense_31/BiasAdd/ReadVariableOpReadVariableOp8patch_encoder_3_dense_31_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ρ
 patch_encoder_3/dense_31/BiasAddBiasAdd+patch_encoder_3/dense_31/Tensordot:output:07patch_encoder_3/dense_31/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:??????????????????
,patch_encoder_3/embedding_3/embedding_lookupResourceGather2patch_encoder_3_embedding_3_embedding_lookup_58681patch_encoder_3/range:output:0*
Tindices0*E
_class;
97loc:@patch_encoder_3/embedding_3/embedding_lookup/58681* 
_output_shapes
:
Δ*
dtype0κ
5patch_encoder_3/embedding_3/embedding_lookup/IdentityIdentity5patch_encoder_3/embedding_3/embedding_lookup:output:0*
T0*E
_class;
97loc:@patch_encoder_3/embedding_3/embedding_lookup/58681* 
_output_shapes
:
Δ?
7patch_encoder_3/embedding_3/embedding_lookup/Identity_1Identity>patch_encoder_3/embedding_3/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
ΔΑ
patch_encoder_3/addAddV2)patch_encoder_3/dense_31/BiasAdd:output:0@patch_encoder_3/embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:?????????Δ
5layer_normalization_22/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Μ
#layer_normalization_22/moments/meanMeanpatch_encoder_3/add:z:0>layer_normalization_22/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims( 
+layer_normalization_22/moments/StopGradientStopGradient,layer_normalization_22/moments/mean:output:0*
T0*,
_output_shapes
:?????????ΔΜ
0layer_normalization_22/moments/SquaredDifferenceSquaredDifferencepatch_encoder_3/add:z:04layer_normalization_22/moments/StopGradient:output:0*
T0*-
_output_shapes
:?????????Δ
9layer_normalization_22/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ρ
'layer_normalization_22/moments/varianceMean4layer_normalization_22/moments/SquaredDifference:z:0Blayer_normalization_22/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims(k
&layer_normalization_22/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Η
$layer_normalization_22/batchnorm/addAddV20layer_normalization_22/moments/variance:output:0/layer_normalization_22/batchnorm/add/y:output:0*
T0*,
_output_shapes
:?????????Δ
&layer_normalization_22/batchnorm/RsqrtRsqrt(layer_normalization_22/batchnorm/add:z:0*
T0*,
_output_shapes
:?????????Δ­
3layer_normalization_22/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_22_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0Μ
$layer_normalization_22/batchnorm/mulMul*layer_normalization_22/batchnorm/Rsqrt:y:0;layer_normalization_22/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δ¨
&layer_normalization_22/batchnorm/mul_1Mulpatch_encoder_3/add:z:0(layer_normalization_22/batchnorm/mul:z:0*
T0*-
_output_shapes
:?????????Δ½
&layer_normalization_22/batchnorm/mul_2Mul,layer_normalization_22/moments/mean:output:0(layer_normalization_22/batchnorm/mul:z:0*
T0*-
_output_shapes
:?????????Δ₯
/layer_normalization_22/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_22_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0Θ
$layer_normalization_22/batchnorm/subSub7layer_normalization_22/batchnorm/ReadVariableOp:value:0*layer_normalization_22/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:?????????Δ½
&layer_normalization_22/batchnorm/add_1AddV2*layer_normalization_22/batchnorm/mul_1:z:0(layer_normalization_22/batchnorm/sub:z:0*
T0*-
_output_shapes
:?????????ΔΔ
:multi_head_attention_11/query/einsum/Einsum/ReadVariableOpReadVariableOpCmulti_head_attention_11_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0
+multi_head_attention_11/query/einsum/EinsumEinsum*layer_normalization_22/batchnorm/add_1:z:0Bmulti_head_attention_11/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abde«
0multi_head_attention_11/query/add/ReadVariableOpReadVariableOp9multi_head_attention_11_query_add_readvariableop_resource*
_output_shapes
:	*
dtype0Φ
!multi_head_attention_11/query/addAddV24multi_head_attention_11/query/einsum/Einsum:output:08multi_head_attention_11/query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????Δΐ
8multi_head_attention_11/key/einsum/Einsum/ReadVariableOpReadVariableOpAmulti_head_attention_11_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0
)multi_head_attention_11/key/einsum/EinsumEinsum*layer_normalization_22/batchnorm/add_1:z:0@multi_head_attention_11/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abde§
.multi_head_attention_11/key/add/ReadVariableOpReadVariableOp7multi_head_attention_11_key_add_readvariableop_resource*
_output_shapes
:	*
dtype0Π
multi_head_attention_11/key/addAddV22multi_head_attention_11/key/einsum/Einsum:output:06multi_head_attention_11/key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ΔΔ
:multi_head_attention_11/value/einsum/Einsum/ReadVariableOpReadVariableOpCmulti_head_attention_11_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0
+multi_head_attention_11/value/einsum/EinsumEinsum*layer_normalization_22/batchnorm/add_1:z:0Bmulti_head_attention_11/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abde«
0multi_head_attention_11/value/add/ReadVariableOpReadVariableOp9multi_head_attention_11_value_add_readvariableop_resource*
_output_shapes
:	*
dtype0Φ
!multi_head_attention_11/value/addAddV24multi_head_attention_11/value/einsum/Einsum:output:08multi_head_attention_11/value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????Δb
multi_head_attention_11/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *σ΅=­
multi_head_attention_11/MulMul%multi_head_attention_11/query/add:z:0&multi_head_attention_11/Mul/y:output:0*
T0*1
_output_shapes
:?????????ΔΩ
%multi_head_attention_11/einsum/EinsumEinsum#multi_head_attention_11/key/add:z:0multi_head_attention_11/Mul:z:0*
N*
T0*1
_output_shapes
:?????????ΔΔ*
equationaecd,abcd->acbe
'multi_head_attention_11/softmax/SoftmaxSoftmax.multi_head_attention_11/einsum/Einsum:output:0*
T0*1
_output_shapes
:?????????ΔΔο
'multi_head_attention_11/einsum_1/EinsumEinsum1multi_head_attention_11/softmax/Softmax:softmax:0%multi_head_attention_11/value/add:z:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationacbe,aecd->abcdΪ
Emulti_head_attention_11/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpNmulti_head_attention_11_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0
6multi_head_attention_11/attention_output/einsum/EinsumEinsum0multi_head_attention_11/einsum_1/Einsum:output:0Mmulti_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:?????????Δ*
equationabcd,cde->abe½
;multi_head_attention_11/attention_output/add/ReadVariableOpReadVariableOpDmulti_head_attention_11_attention_output_add_readvariableop_resource*
_output_shapes	
:*
dtype0σ
,multi_head_attention_11/attention_output/addAddV2?multi_head_attention_11/attention_output/einsum/Einsum:output:0Cmulti_head_attention_11/attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δ

add_22/addAddV20multi_head_attention_11/attention_output/add:z:0patch_encoder_3/add:z:0*
T0*-
_output_shapes
:?????????Δ
5layer_normalization_23/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:Γ
#layer_normalization_23/moments/meanMeanadd_22/add:z:0>layer_normalization_23/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims( 
+layer_normalization_23/moments/StopGradientStopGradient,layer_normalization_23/moments/mean:output:0*
T0*,
_output_shapes
:?????????ΔΓ
0layer_normalization_23/moments/SquaredDifferenceSquaredDifferenceadd_22/add:z:04layer_normalization_23/moments/StopGradient:output:0*
T0*-
_output_shapes
:?????????Δ
9layer_normalization_23/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:ρ
'layer_normalization_23/moments/varianceMean4layer_normalization_23/moments/SquaredDifference:z:0Blayer_normalization_23/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:?????????Δ*
	keep_dims(k
&layer_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *½75Η
$layer_normalization_23/batchnorm/addAddV20layer_normalization_23/moments/variance:output:0/layer_normalization_23/batchnorm/add/y:output:0*
T0*,
_output_shapes
:?????????Δ
&layer_normalization_23/batchnorm/RsqrtRsqrt(layer_normalization_23/batchnorm/add:z:0*
T0*,
_output_shapes
:?????????Δ­
3layer_normalization_23/batchnorm/mul/ReadVariableOpReadVariableOp<layer_normalization_23_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0Μ
$layer_normalization_23/batchnorm/mulMul*layer_normalization_23/batchnorm/Rsqrt:y:0;layer_normalization_23/batchnorm/mul/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δ
&layer_normalization_23/batchnorm/mul_1Muladd_22/add:z:0(layer_normalization_23/batchnorm/mul:z:0*
T0*-
_output_shapes
:?????????Δ½
&layer_normalization_23/batchnorm/mul_2Mul,layer_normalization_23/moments/mean:output:0(layer_normalization_23/batchnorm/mul:z:0*
T0*-
_output_shapes
:?????????Δ₯
/layer_normalization_23/batchnorm/ReadVariableOpReadVariableOp8layer_normalization_23_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0Θ
$layer_normalization_23/batchnorm/subSub7layer_normalization_23/batchnorm/ReadVariableOp:value:0*layer_normalization_23/batchnorm/mul_2:z:0*
T0*-
_output_shapes
:?????????Δ½
&layer_normalization_23/batchnorm/add_1AddV2*layer_normalization_23/batchnorm/mul_1:z:0(layer_normalization_23/batchnorm/sub:z:0*
T0*-
_output_shapes
:?????????Δ
!dense_32/Tensordot/ReadVariableOpReadVariableOp*dense_32_tensordot_readvariableop_resource* 
_output_shapes
:
*
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
value	B : ί
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
value	B : γ
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
valueB: 
dense_32/Tensordot/ProdProd$dense_32/Tensordot/GatherV2:output:0!dense_32/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_32/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_32/Tensordot/Prod_1Prod&dense_32/Tensordot/GatherV2_1:output:0#dense_32/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_32/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ΐ
dense_32/Tensordot/concatConcatV2 dense_32/Tensordot/free:output:0 dense_32/Tensordot/axes:output:0'dense_32/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_32/Tensordot/stackPack dense_32/Tensordot/Prod:output:0"dense_32/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:±
dense_32/Tensordot/transpose	Transpose*layer_normalization_23/batchnorm/add_1:z:0"dense_32/Tensordot/concat:output:0*
T0*-
_output_shapes
:?????????Δ₯
dense_32/Tensordot/ReshapeReshape dense_32/Tensordot/transpose:y:0!dense_32/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????¦
dense_32/Tensordot/MatMulMatMul#dense_32/Tensordot/Reshape:output:0)dense_32/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????e
dense_32/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_32/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Λ
dense_32/Tensordot/concat_1ConcatV2$dense_32/Tensordot/GatherV2:output:0#dense_32/Tensordot/Const_2:output:0)dense_32/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
: 
dense_32/TensordotReshape#dense_32/Tensordot/MatMul:product:0$dense_32/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:?????????Δ
dense_32/BiasAdd/ReadVariableOpReadVariableOp(dense_32_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_32/BiasAddBiasAdddense_32/Tensordot:output:0'dense_32/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δh
dense_32/ReluReludense_32/BiasAdd:output:0*
T0*-
_output_shapes
:?????????Δ]
dropout_25/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?
dropout_25/dropout/MulMuldense_32/Relu:activations:0!dropout_25/dropout/Const:output:0*
T0*-
_output_shapes
:?????????Δc
dropout_25/dropout/ShapeShapedense_32/Relu:activations:0*
T0*
_output_shapes
:¨
/dropout_25/dropout/random_uniform/RandomUniformRandomUniform!dropout_25/dropout/Shape:output:0*
T0*-
_output_shapes
:?????????Δ*
dtype0f
!dropout_25/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=Ν
dropout_25/dropout/GreaterEqualGreaterEqual8dropout_25/dropout/random_uniform/RandomUniform:output:0*dropout_25/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:?????????Δ
dropout_25/dropout/CastCast#dropout_25/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:?????????Δ
dropout_25/dropout/Mul_1Muldropout_25/dropout/Mul:z:0dropout_25/dropout/Cast:y:0*
T0*-
_output_shapes
:?????????Δ
!dense_33/Tensordot/ReadVariableOpReadVariableOp*dense_33_tensordot_readvariableop_resource* 
_output_shapes
:
*
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
value	B : ί
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
value	B : γ
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
valueB: 
dense_33/Tensordot/ProdProd$dense_33/Tensordot/GatherV2:output:0!dense_33/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_33/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_33/Tensordot/Prod_1Prod&dense_33/Tensordot/GatherV2_1:output:0#dense_33/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_33/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ΐ
dense_33/Tensordot/concatConcatV2 dense_33/Tensordot/free:output:0 dense_33/Tensordot/axes:output:0'dense_33/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_33/Tensordot/stackPack dense_33/Tensordot/Prod:output:0"dense_33/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:£
dense_33/Tensordot/transpose	Transposedropout_25/dropout/Mul_1:z:0"dense_33/Tensordot/concat:output:0*
T0*-
_output_shapes
:?????????Δ₯
dense_33/Tensordot/ReshapeReshape dense_33/Tensordot/transpose:y:0!dense_33/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????¦
dense_33/Tensordot/MatMulMatMul#dense_33/Tensordot/Reshape:output:0)dense_33/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????e
dense_33/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_33/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Λ
dense_33/Tensordot/concat_1ConcatV2$dense_33/Tensordot/GatherV2:output:0#dense_33/Tensordot/Const_2:output:0)dense_33/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
: 
dense_33/TensordotReshape#dense_33/Tensordot/MatMul:product:0$dense_33/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:?????????Δ
dense_33/BiasAdd/ReadVariableOpReadVariableOp(dense_33_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_33/BiasAddBiasAdddense_33/Tensordot:output:0'dense_33/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δh
dense_33/ReluReludense_33/BiasAdd:output:0*
T0*-
_output_shapes
:?????????Δ]
dropout_26/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?
dropout_26/dropout/MulMuldense_33/Relu:activations:0!dropout_26/dropout/Const:output:0*
T0*-
_output_shapes
:?????????Δc
dropout_26/dropout/ShapeShapedense_33/Relu:activations:0*
T0*
_output_shapes
:¨
/dropout_26/dropout/random_uniform/RandomUniformRandomUniform!dropout_26/dropout/Shape:output:0*
T0*-
_output_shapes
:?????????Δ*
dtype0f
!dropout_26/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=Ν
dropout_26/dropout/GreaterEqualGreaterEqual8dropout_26/dropout/random_uniform/RandomUniform:output:0*dropout_26/dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:?????????Δ
dropout_26/dropout/CastCast#dropout_26/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:?????????Δ
dropout_26/dropout/Mul_1Muldropout_26/dropout/Mul:z:0dropout_26/dropout/Cast:y:0*
T0*-
_output_shapes
:?????????Δy

add_23/addAddV2dropout_26/dropout/Mul_1:z:0add_22/add:z:0*
T0*-
_output_shapes
:?????????Δ`
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"???? b  z
flatten_3/ReshapeReshapeadd_23/add:z:0flatten_3/Const:output:0*
T0*)
_output_shapes
:?????????Δ
dense_34/MatMul/ReadVariableOpReadVariableOp'dense_34_matmul_readvariableop_resource*!
_output_shapes
:Δ*
dtype0
dense_34/MatMulMatMulflatten_3/Reshape:output:0&dense_34/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????
dense_34/BiasAdd/ReadVariableOpReadVariableOp(dense_34_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_34/BiasAddBiasAdddense_34/MatMul:product:0'dense_34/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????c
dense_34/ReluReludense_34/BiasAdd:output:0*
T0*(
_output_shapes
:?????????]
dropout_27/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
dropout_27/dropout/MulMuldense_34/Relu:activations:0!dropout_27/dropout/Const:output:0*
T0*(
_output_shapes
:?????????c
dropout_27/dropout/ShapeShapedense_34/Relu:activations:0*
T0*
_output_shapes
:£
/dropout_27/dropout/random_uniform/RandomUniformRandomUniform!dropout_27/dropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype0f
!dropout_27/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>Θ
dropout_27/dropout/GreaterEqualGreaterEqual8dropout_27/dropout/random_uniform/RandomUniform:output:0*dropout_27/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????
dropout_27/dropout/CastCast#dropout_27/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????
dropout_27/dropout/Mul_1Muldropout_27/dropout/Mul:z:0dropout_27/dropout/Cast:y:0*
T0*(
_output_shapes
:?????????
dense_35/MatMul/ReadVariableOpReadVariableOp'dense_35_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_35/MatMulMatMuldropout_27/dropout/Mul_1:z:0&dense_35/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
dense_35/BiasAdd/ReadVariableOpReadVariableOp(dense_35_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_35/BiasAddBiasAdddense_35/MatMul:product:0'dense_35/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????h
dense_35/SoftmaxSoftmaxdense_35/BiasAdd:output:0*
T0*'
_output_shapes
:?????????i
IdentityIdentitydense_35/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????σ
NoOpNoOpI^Data_Augmentation/random_flip_3/stateful_uniform_full_int/RngReadAndSkipK^Data_Augmentation/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkipD^Data_Augmentation/random_rotation_3/stateful_uniform/RngReadAndSkip@^Data_Augmentation/random_zoom_3/stateful_uniform/RngReadAndSkipB^Data_Augmentation/random_zoom_3/stateful_uniform_1/RngReadAndSkip ^dense_32/BiasAdd/ReadVariableOp"^dense_32/Tensordot/ReadVariableOp ^dense_33/BiasAdd/ReadVariableOp"^dense_33/Tensordot/ReadVariableOp ^dense_34/BiasAdd/ReadVariableOp^dense_34/MatMul/ReadVariableOp ^dense_35/BiasAdd/ReadVariableOp^dense_35/MatMul/ReadVariableOp0^layer_normalization_22/batchnorm/ReadVariableOp4^layer_normalization_22/batchnorm/mul/ReadVariableOp0^layer_normalization_23/batchnorm/ReadVariableOp4^layer_normalization_23/batchnorm/mul/ReadVariableOp<^multi_head_attention_11/attention_output/add/ReadVariableOpF^multi_head_attention_11/attention_output/einsum/Einsum/ReadVariableOp/^multi_head_attention_11/key/add/ReadVariableOp9^multi_head_attention_11/key/einsum/Einsum/ReadVariableOp1^multi_head_attention_11/query/add/ReadVariableOp;^multi_head_attention_11/query/einsum/Einsum/ReadVariableOp1^multi_head_attention_11/value/add/ReadVariableOp;^multi_head_attention_11/value/einsum/Einsum/ReadVariableOp0^patch_encoder_3/dense_31/BiasAdd/ReadVariableOp2^patch_encoder_3/dense_31/Tensordot/ReadVariableOp-^patch_encoder_3/embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesw
u:?????????ΰΰ::: : : : : : : : : : : : : : : : : : : : : : : : : : 2
HData_Augmentation/random_flip_3/stateful_uniform_full_int/RngReadAndSkipHData_Augmentation/random_flip_3/stateful_uniform_full_int/RngReadAndSkip2
JData_Augmentation/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkipJData_Augmentation/random_flip_3/stateful_uniform_full_int_1/RngReadAndSkip2
CData_Augmentation/random_rotation_3/stateful_uniform/RngReadAndSkipCData_Augmentation/random_rotation_3/stateful_uniform/RngReadAndSkip2
?Data_Augmentation/random_zoom_3/stateful_uniform/RngReadAndSkip?Data_Augmentation/random_zoom_3/stateful_uniform/RngReadAndSkip2
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
;multi_head_attention_11/attention_output/add/ReadVariableOp;multi_head_attention_11/attention_output/add/ReadVariableOp2
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
:?????????ΰΰ
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
π
c
E__inference_dropout_26_layer_call_and_return_conditional_losses_57195

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:?????????Δa

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:?????????Δ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????Δ:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
O
ΐ
B__inference_model_3_layer_call_and_return_conditional_losses_57255

inputs
data_augmentation_56923
data_augmentation_56925)
patch_encoder_3_56985:
$
patch_encoder_3_56987:	)
patch_encoder_3_56989:
Δ+
layer_normalization_22_57015:	+
layer_normalization_22_57017:	5
multi_head_attention_11_57056:0
multi_head_attention_11_57058:	5
multi_head_attention_11_57060:0
multi_head_attention_11_57062:	5
multi_head_attention_11_57064:0
multi_head_attention_11_57066:	5
multi_head_attention_11_57068:,
multi_head_attention_11_57070:	+
layer_normalization_23_57104:	+
layer_normalization_23_57106:	"
dense_32_57141:

dense_32_57143:	"
dense_33_57185:

dense_33_57187:	#
dense_34_57225:Δ
dense_34_57227:	!
dense_35_57249:	
dense_35_57251:
identity’ dense_32/StatefulPartitionedCall’ dense_33/StatefulPartitionedCall’ dense_34/StatefulPartitionedCall’ dense_35/StatefulPartitionedCall’.layer_normalization_22/StatefulPartitionedCall’.layer_normalization_23/StatefulPartitionedCall’/multi_head_attention_11/StatefulPartitionedCall’'patch_encoder_3/StatefulPartitionedCallΝ
Resize_Rescale/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56340¨
!Data_Augmentation/PartitionedCallPartitionedCall'Resize_Rescale/PartitionedCall:output:0data_augmentation_56923data_augmentation_56925*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56421λ
patches_7/PartitionedCallPartitionedCall*Data_Augmentation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_patches_7_layer_call_and_return_conditional_losses_56942Δ
'patch_encoder_3/StatefulPartitionedCallStatefulPartitionedCall"patches_7/PartitionedCall:output:0patch_encoder_3_56985patch_encoder_3_56987patch_encoder_3_56989*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_patch_encoder_3_layer_call_and_return_conditional_losses_56984Υ
.layer_normalization_22/StatefulPartitionedCallStatefulPartitionedCall0patch_encoder_3/StatefulPartitionedCall:output:0layer_normalization_22_57015layer_normalization_22_57017*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_57014ΰ
/multi_head_attention_11/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_22/StatefulPartitionedCall:output:07layer_normalization_22/StatefulPartitionedCall:output:0multi_head_attention_11_57056multi_head_attention_11_57058multi_head_attention_11_57060multi_head_attention_11_57062multi_head_attention_11_57064multi_head_attention_11_57066multi_head_attention_11_57068multi_head_attention_11_57070*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_57055
add_22/PartitionedCallPartitionedCall8multi_head_attention_11/StatefulPartitionedCall:output:00patch_encoder_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_add_22_layer_call_and_return_conditional_losses_57079Δ
.layer_normalization_23/StatefulPartitionedCallStatefulPartitionedCalladd_22/PartitionedCall:output:0layer_normalization_23_57104layer_normalization_23_57106*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_57103€
 dense_32/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_23/StatefulPartitionedCall:output:0dense_32_57141dense_32_57143*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_32_layer_call_and_return_conditional_losses_57140δ
dropout_25/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_57151
 dense_33/StatefulPartitionedCallStatefulPartitionedCall#dropout_25/PartitionedCall:output:0dense_33_57185dense_33_57187*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_57184δ
dropout_26/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_26_layer_call_and_return_conditional_losses_57195ψ
add_23/PartitionedCallPartitionedCall#dropout_26/PartitionedCall:output:0add_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_add_23_layer_call_and_return_conditional_losses_57203Τ
flatten_3/PartitionedCallPartitionedCalladd_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_57211
 dense_34/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_34_57225dense_34_57227*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_57224ί
dropout_27/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_27_layer_call_and_return_conditional_losses_57235
 dense_35/StatefulPartitionedCallStatefulPartitionedCall#dropout_27/PartitionedCall:output:0dense_35_57249dense_35_57251*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_57248x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall/^layer_normalization_22/StatefulPartitionedCall/^layer_normalization_23/StatefulPartitionedCall0^multi_head_attention_11/StatefulPartitionedCall(^patch_encoder_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesq
o:?????????ΰΰ::: : : : : : : : : : : : : : : : : : : : : : : 2D
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
:?????????ΰΰ
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
	
o
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56382
resizing_3_input
identityΟ
resizing_3/PartitionedCallPartitionedCallresizing_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_3_layer_call_and_return_conditional_losses_56327δ
rescaling_3/PartitionedCallPartitionedCall#resizing_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_rescaling_3_layer_call_and_return_conditional_losses_56337v
IdentityIdentity$rescaling_3/PartitionedCall:output:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:c _
1
_output_shapes
:?????????ΰΰ
*
_user_specified_nameresizing_3_input
ς
‘
6__inference_layer_normalization_22_layer_call_fn_59404

inputs
unknown:	
	unknown_0:	
identity’StatefulPartitionedCallμ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_57014u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:?????????Δ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????Δ: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
―
a
E__inference_resizing_3_layer_call_and_return_conditional_losses_59817

inputs
identity\
resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"ΰ   ΰ   
resize/ResizeBilinearResizeBilinearinputsresize/size:output:0*
T0*1
_output_shapes
:?????????ΰΰ*
half_pixel_centers(x
IdentityIdentity&resize/ResizeBilinear:resized_images:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
Θ
ϋ
'__inference_model_3_layer_call_fn_58078

inputs
unknown
	unknown_0
	unknown_1:	
	unknown_2:	
	unknown_3:	
	unknown_4:

	unknown_5:	
	unknown_6:
Δ
	unknown_7:	
	unknown_8:	!
	unknown_9:

unknown_10:	"

unknown_11:

unknown_12:	"

unknown_13:

unknown_14:	"

unknown_15:

unknown_16:	

unknown_17:	

unknown_18:	

unknown_19:


unknown_20:	

unknown_21:


unknown_22:	

unknown_23:Δ

unknown_24:	

unknown_25:	

unknown_26:
identity’StatefulPartitionedCall΅
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
:?????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_57688o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesw
u:?????????ΰΰ::: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
Ϋ*

R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_57055	
query	
valueC
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	A
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	C
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	N
6attention_output_einsum_einsum_readvariableop_resource:;
,attention_output_add_readvariableop_resource:	
identity’#attention_output/add/ReadVariableOp’-attention_output/einsum/Einsum/ReadVariableOp’key/add/ReadVariableOp’ key/einsum/Einsum/ReadVariableOp’query/add/ReadVariableOp’"query/einsum/Einsum/ReadVariableOp’value/add/ReadVariableOp’"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0²
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????Δ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0?
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????Δ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0²
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ΔJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *σ΅=e
MulMulquery/add:z:0Mul/y:output:0*
T0*1
_output_shapes
:?????????Δ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:?????????ΔΔ*
equationaecd,abcd->acben
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*1
_output_shapes
:?????????ΔΔs
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*1
_output_shapes
:?????????ΔΔ§
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationacbe,aecd->abcdͺ
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0Χ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:?????????Δ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes	
:*
dtype0«
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δm
IdentityIdentityattention_output/add:z:0^NoOp*
T0*-
_output_shapes
:?????????ΔΨ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:?????????Δ:?????????Δ: : : : : : : : 2J
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
:?????????Δ

_user_specified_namequery:TP
-
_output_shapes
:?????????Δ

_user_specified_namevalue
Λ

1__inference_random_rotation_3_layer_call_fn_59969

inputs
unknown:	
identity’StatefulPartitionedCallΫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_56693y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????ΰΰ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ΰΰ: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs

i
1__inference_Data_Augmentation_layer_call_fn_58945

inputs
unknown
	unknown_0
identityΧ
PartitionedCallPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56421j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????ΰΰ:::Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
ͺ
ͺ
#__inference_signature_wrapper_58906
input_4
unknown
	unknown_0
	unknown_1:

	unknown_2:	
	unknown_3:
Δ
	unknown_4:	
	unknown_5:	!
	unknown_6:
	unknown_7:	!
	unknown_8:
	unknown_9:	"

unknown_10:

unknown_11:	"

unknown_12:

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:


unknown_17:	

unknown_18:


unknown_19:	

unknown_20:Δ

unknown_21:	

unknown_22:	

unknown_23:
identity’StatefulPartitionedCallν
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
:?????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_56314o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesq
o:?????????ΰΰ::: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:?????????ΰΰ
!
_user_specified_name	input_4:,(
&
_output_shapes
::,(
&
_output_shapes
:
ψ
b
F__inference_rescaling_3_layer_call_and_return_conditional_losses_59830

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:?????????ΰΰd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:?????????ΰΰY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
£

d
E__inference_dropout_25_layer_call_and_return_conditional_losses_57417

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:?????????ΔC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:?????????Δ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=¬
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:?????????Δu
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:?????????Δo
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:?????????Δ_
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:?????????Δ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????Δ:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
Ο
J
.__inference_Resize_Rescale_layer_call_fn_58911

inputs
identityΎ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56340j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
Ι
G
+__inference_rescaling_3_layer_call_fn_59822

inputs
identity»
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_rescaling_3_layer_call_and_return_conditional_losses_56337j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
₯	
e
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_58926

inputs
identityg
resizing_3/resize/sizeConst*
_output_shapes
:*
dtype0*
valueB"ΰ   ΰ   ±
 resizing_3/resize/ResizeBilinearResizeBilinearinputsresizing_3/resize/size:output:0*
T0*1
_output_shapes
:?????????ΰΰ*
half_pixel_centers(W
rescaling_3/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;Y
rescaling_3/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    ’
rescaling_3/mulMul1resizing_3/resize/ResizeBilinear:resized_images:0rescaling_3/Cast/x:output:0*
T0*1
_output_shapes
:?????????ΰΰ
rescaling_3/addAddV2rescaling_3/mul:z:0rescaling_3/Cast_1/x:output:0*
T0*1
_output_shapes
:?????????ΰΰe
IdentityIdentityrescaling_3/add:z:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
Τ
?
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56895
normalization_3_input
normalization_3_sub_y
normalization_3_sqrt_x
identity
normalization_3/subSubnormalization_3_inputnormalization_3_sub_y*
T0*1
_output_shapes
:?????????ΰΰe
normalization_3/SqrtSqrtnormalization_3_sqrt_x*
T0*&
_output_shapes
:^
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*1
_output_shapes
:?????????ΰΰΰ
random_flip_3/PartitionedCallPartitionedCallnormalization_3/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_56406σ
!random_rotation_3/PartitionedCallPartitionedCall&random_flip_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_56412ο
random_zoom_3/PartitionedCallPartitionedCall*random_rotation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_56418x
IdentityIdentity&random_zoom_3/PartitionedCall:output:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????ΰΰ:::h d
1
_output_shapes
:?????????ΰΰ
/
_user_specified_namenormalization_3_input:,(
&
_output_shapes
::,(
&
_output_shapes
:
ά
c
E__inference_dropout_27_layer_call_and_return_conditional_losses_59774

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:?????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
½
ε
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_56562

inputs6
(stateful_uniform_rngreadandskip_resource:	
identity’stateful_uniform/RngReadAndSkip’!stateful_uniform_1/RngReadAndSkip;
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
valueB:Ρ
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
ύ????????j
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ώ????????a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
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
ώ????????j
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?????????a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ω
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
value	B :
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
 *ff¦?`
stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
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
: Ά
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
valueB:¬
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
valueB:’
 stateful_uniform/strided_slice_1StridedSlice'stateful_uniform/RngReadAndSkip:value:0/stateful_uniform/strided_slice_1/stack:output:01stateful_uniform/strided_slice_1/stack_1:output:01stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform/Bitcast_1Bitcast)stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0o
-stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
)stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2stateful_uniform/shape:output:0#stateful_uniform/Bitcast_1:output:0!stateful_uniform/Bitcast:output:06stateful_uniform/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????z
stateful_uniform/subSubstateful_uniform/max:output:0stateful_uniform/min:output:0*
T0*
_output_shapes
: 
stateful_uniform/mulMul2stateful_uniform/StatelessRandomUniformV2:output:0stateful_uniform/sub:z:0*
T0*'
_output_shapes
:?????????
stateful_uniformAddV2stateful_uniform/mul:z:0stateful_uniform/min:output:0*
T0*'
_output_shapes
:?????????\
stateful_uniform_1/shape/1Const*
_output_shapes
: *
dtype0*
value	B :
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
 *ff¦?b
stateful_uniform_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
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
: ή
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
valueB:Ά
 stateful_uniform_1/strided_sliceStridedSlice)stateful_uniform_1/RngReadAndSkip:value:0/stateful_uniform_1/strided_slice/stack:output:01stateful_uniform_1/strided_slice/stack_1:output:01stateful_uniform_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
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
valueB:¬
"stateful_uniform_1/strided_slice_1StridedSlice)stateful_uniform_1/RngReadAndSkip:value:01stateful_uniform_1/strided_slice_1/stack:output:03stateful_uniform_1/strided_slice_1/stack_1:output:03stateful_uniform_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
stateful_uniform_1/Bitcast_1Bitcast+stateful_uniform_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0q
/stateful_uniform_1/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
+stateful_uniform_1/StatelessRandomUniformV2StatelessRandomUniformV2!stateful_uniform_1/shape:output:0%stateful_uniform_1/Bitcast_1:output:0#stateful_uniform_1/Bitcast:output:08stateful_uniform_1/StatelessRandomUniformV2/alg:output:0*'
_output_shapes
:?????????
stateful_uniform_1/subSubstateful_uniform_1/max:output:0stateful_uniform_1/min:output:0*
T0*
_output_shapes
: ‘
stateful_uniform_1/mulMul4stateful_uniform_1/StatelessRandomUniformV2:output:0stateful_uniform_1/sub:z:0*
T0*'
_output_shapes
:?????????
stateful_uniform_1AddV2stateful_uniform_1/mul:z:0stateful_uniform_1/min:output:0*
T0*'
_output_shapes
:?????????M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2stateful_uniform_1:z:0stateful_uniform:z:0concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????P
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
valueB:
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
 *  ?_
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
valueB"         ?
zoom_matrix/strided_slice_1StridedSliceconcat:output:0*zoom_matrix/strided_slice_1/stack:output:0,zoom_matrix/strided_slice_1/stack_1:output:0,zoom_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_1Subzoom_matrix/sub_1/x:output:0$zoom_matrix/strided_slice_1:output:0*
T0*'
_output_shapes
:?????????x
zoom_matrix/mulMulzoom_matrix/truediv:z:0zoom_matrix/sub_1:z:0*
T0*'
_output_shapes
:?????????X
zoom_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?a
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
valueB"         ?
zoom_matrix/strided_slice_2StridedSliceconcat:output:0*zoom_matrix/strided_slice_2/stack:output:0,zoom_matrix/strided_slice_2/stack_1:output:0,zoom_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_maskX
zoom_matrix/sub_3/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
zoom_matrix/sub_3Subzoom_matrix/sub_3/x:output:0$zoom_matrix/strided_slice_2:output:0*
T0*'
_output_shapes
:?????????|
zoom_matrix/mul_1Mulzoom_matrix/truediv_1:z:0zoom_matrix/sub_3:z:0*
T0*'
_output_shapes
:?????????v
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
valueB"         ?
zoom_matrix/strided_slice_3StridedSliceconcat:output:0*zoom_matrix/strided_slice_3/stack:output:0,zoom_matrix/strided_slice_3/stack_1:output:0,zoom_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask\
zoom_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
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
 *    
zoom_matrix/zerosFill!zoom_matrix/zeros/packed:output:0 zoom_matrix/zeros/Const:output:0*
T0*'
_output_shapes
:?????????^
zoom_matrix/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
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
 *    
zoom_matrix/zeros_1Fill#zoom_matrix/zeros_1/packed:output:0"zoom_matrix/zeros_1/Const:output:0*
T0*'
_output_shapes
:?????????v
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
valueB"         ?
zoom_matrix/strided_slice_4StridedSliceconcat:output:0*zoom_matrix/strided_slice_4/stack:output:0,zoom_matrix/strided_slice_4/stack_1:output:0,zoom_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask*
shrink_axis_mask^
zoom_matrix/zeros_2/packed/1Const*
_output_shapes
: *
dtype0*
value	B :
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
 *    
zoom_matrix/zeros_2Fill#zoom_matrix/zeros_2/packed:output:0"zoom_matrix/zeros_2/Const:output:0*
T0*'
_output_shapes
:?????????Y
zoom_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Λ
zoom_matrix/concatConcatV2$zoom_matrix/strided_slice_3:output:0zoom_matrix/zeros:output:0zoom_matrix/mul:z:0zoom_matrix/zeros_1:output:0$zoom_matrix/strided_slice_4:output:0zoom_matrix/mul_1:z:0zoom_matrix/zeros_2:output:0 zoom_matrix/concat/axis:output:0*
N*
T0*'
_output_shapes
:?????????E
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
valueB:ο
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
 *    
$transform/ImageProjectiveTransformV3ImageProjectiveTransformV3inputszoom_matrix/concat:output:0 transform/strided_slice:output:0transform/fill_value:output:0*1
_output_shapes
:?????????ΰΰ*
dtype0*
interpolation
BILINEAR
IdentityIdentity9transform/ImageProjectiveTransformV3:transformed_images:0^NoOp*
T0*1
_output_shapes
:?????????ΰΰ
NoOpNoOp ^stateful_uniform/RngReadAndSkip"^stateful_uniform_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ΰΰ: 2B
stateful_uniform/RngReadAndSkipstateful_uniform/RngReadAndSkip2F
!stateful_uniform_1/RngReadAndSkip!stateful_uniform_1/RngReadAndSkip:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs

ψ
7__inference_multi_head_attention_11_layer_call_fn_59448	
query	
value
unknown:
	unknown_0:	!
	unknown_1:
	unknown_2:	!
	unknown_3:
	unknown_4:	!
	unknown_5:
	unknown_6:	
identity’StatefulPartitionedCallΒ
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_57055u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:?????????Δ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:?????????Δ:?????????Δ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
-
_output_shapes
:?????????Δ

_user_specified_namequery:TP
-
_output_shapes
:?????????Δ

_user_specified_namevalue
Ο	
Ρ
1__inference_Data_Augmentation_layer_call_fn_58960

inputs
unknown
	unknown_0
	unknown_1:	
	unknown_2:	
	unknown_3:	
identity’StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56853y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:?????????ΰΰ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:?????????ΰΰ::: : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:

d
H__inference_random_flip_3_layer_call_and_return_conditional_losses_56406

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
Π
?
'__inference_model_3_layer_call_fn_57308
input_4
unknown
	unknown_0
	unknown_1:

	unknown_2:	
	unknown_3:
Δ
	unknown_4:	
	unknown_5:	!
	unknown_6:
	unknown_7:	!
	unknown_8:
	unknown_9:	"

unknown_10:

unknown_11:	"

unknown_12:

unknown_13:	

unknown_14:	

unknown_15:	

unknown_16:


unknown_17:	

unknown_18:


unknown_19:	

unknown_20:Δ

unknown_21:	

unknown_22:	

unknown_23:
identity’StatefulPartitionedCall
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
:?????????*9
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_model_3_layer_call_and_return_conditional_losses_57255o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesq
o:?????????ΰΰ::: : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:?????????ΰΰ
!
_user_specified_name	input_4:,(
&
_output_shapes
::,(
&
_output_shapes
:
·
F
*__inference_dropout_26_layer_call_fn_59694

inputs
identityΆ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_26_layer_call_and_return_conditional_losses_57195f
IdentityIdentityPartitionedCall:output:0*
T0*-
_output_shapes
:?????????Δ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????Δ:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
¦

L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56421

inputs
normalization_3_sub_y
normalization_3_sqrt_x
identityu
normalization_3/subSubinputsnormalization_3_sub_y*
T0*1
_output_shapes
:?????????ΰΰe
normalization_3/SqrtSqrtnormalization_3_sqrt_x*
T0*&
_output_shapes
:^
normalization_3/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΏΦ3
normalization_3/MaximumMaximumnormalization_3/Sqrt:y:0"normalization_3/Maximum/y:output:0*
T0*&
_output_shapes
:
normalization_3/truedivRealDivnormalization_3/sub:z:0normalization_3/Maximum:z:0*
T0*1
_output_shapes
:?????????ΰΰΰ
random_flip_3/PartitionedCallPartitionedCallnormalization_3/truediv:z:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_56406σ
!random_rotation_3/PartitionedCallPartitionedCall&random_flip_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_56412ο
random_zoom_3/PartitionedCallPartitionedCall*random_rotation_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_56418x
IdentityIdentity&random_zoom_3/PartitionedCall:output:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????ΰΰ:::Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
:
Ϋ*

R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_59505	
query	
valueC
+query_einsum_einsum_readvariableop_resource:4
!query_add_readvariableop_resource:	A
)key_einsum_einsum_readvariableop_resource:2
key_add_readvariableop_resource:	C
+value_einsum_einsum_readvariableop_resource:4
!value_add_readvariableop_resource:	N
6attention_output_einsum_einsum_readvariableop_resource:;
,attention_output_add_readvariableop_resource:	
identity’#attention_output/add/ReadVariableOp’-attention_output/einsum/Einsum/ReadVariableOp’key/add/ReadVariableOp’ key/einsum/Einsum/ReadVariableOp’query/add/ReadVariableOp’"query/einsum/Einsum/ReadVariableOp’value/add/ReadVariableOp’"value/einsum/Einsum/ReadVariableOp
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0²
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abde{
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????Δ
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0?
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abdew
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes
:	*
dtype0
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????Δ
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0²
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationabc,cde->abde{
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes
:	*
dtype0
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*1
_output_shapes
:?????????ΔJ
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *σ΅=e
MulMulquery/add:z:0Mul/y:output:0*
T0*1
_output_shapes
:?????????Δ
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:?????????ΔΔ*
equationaecd,abcd->acben
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*1
_output_shapes
:?????????ΔΔs
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*1
_output_shapes
:?????????ΔΔ§
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*1
_output_shapes
:?????????Δ*
equationacbe,aecd->abcdͺ
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:*
dtype0Χ
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*-
_output_shapes
:?????????Δ*
equationabcd,cde->abe
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes	
:*
dtype0«
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????Δm
IdentityIdentityattention_output/add:z:0^NoOp*
T0*-
_output_shapes
:?????????ΔΨ
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:?????????Δ:?????????Δ: : : : : : : : 2J
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
:?????????Δ

_user_specified_namequery:TP
-
_output_shapes
:?????????Δ

_user_specified_namevalue
ς
‘
6__inference_layer_normalization_23_layer_call_fn_59560

inputs
unknown:	
	unknown_0:	
identity’StatefulPartitionedCallμ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_57103u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:?????????Δ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????Δ: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
π
c
E__inference_dropout_25_layer_call_and_return_conditional_losses_59637

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:?????????Δa

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:?????????Δ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????Δ:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
Έ«
ι)
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

identity_1’MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ϊ+
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*+
valueω*Bφ*UB5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-0/layer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-0/layer-2/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_layer_with_weights-0/layer-3/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-2/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:U*
dtype0*Ώ
value΅B²UB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ²(
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:07savev2_layer_normalization_22_gamma_read_readvariableop6savev2_layer_normalization_22_beta_read_readvariableop7savev2_layer_normalization_23_gamma_read_readvariableop6savev2_layer_normalization_23_beta_read_readvariableop*savev2_dense_32_kernel_read_readvariableop(savev2_dense_32_bias_read_readvariableop*savev2_dense_33_kernel_read_readvariableop(savev2_dense_33_bias_read_readvariableop*savev2_dense_34_kernel_read_readvariableop(savev2_dense_34_bias_read_readvariableop*savev2_dense_35_kernel_read_readvariableop(savev2_dense_35_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop/savev2_normalization_3_mean_read_readvariableop3savev2_normalization_3_variance_read_readvariableop0savev2_normalization_3_count_read_readvariableop:savev2_patch_encoder_3_dense_31_kernel_read_readvariableop8savev2_patch_encoder_3_dense_31_bias_read_readvariableopAsavev2_patch_encoder_3_embedding_3_embeddings_read_readvariableop?savev2_multi_head_attention_11_query_kernel_read_readvariableop=savev2_multi_head_attention_11_query_bias_read_readvariableop=savev2_multi_head_attention_11_key_kernel_read_readvariableop;savev2_multi_head_attention_11_key_bias_read_readvariableop?savev2_multi_head_attention_11_value_kernel_read_readvariableop=savev2_multi_head_attention_11_value_bias_read_readvariableopJsavev2_multi_head_attention_11_attention_output_kernel_read_readvariableopHsavev2_multi_head_attention_11_attention_output_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopKsavev2_model_3_data_augmentation_random_flip_3_statevar_read_readvariableopOsavev2_model_3_data_augmentation_random_rotation_3_statevar_read_readvariableopKsavev2_model_3_data_augmentation_random_zoom_3_statevar_read_readvariableop>savev2_adam_layer_normalization_22_gamma_m_read_readvariableop=savev2_adam_layer_normalization_22_beta_m_read_readvariableop>savev2_adam_layer_normalization_23_gamma_m_read_readvariableop=savev2_adam_layer_normalization_23_beta_m_read_readvariableop1savev2_adam_dense_32_kernel_m_read_readvariableop/savev2_adam_dense_32_bias_m_read_readvariableop1savev2_adam_dense_33_kernel_m_read_readvariableop/savev2_adam_dense_33_bias_m_read_readvariableop1savev2_adam_dense_34_kernel_m_read_readvariableop/savev2_adam_dense_34_bias_m_read_readvariableop1savev2_adam_dense_35_kernel_m_read_readvariableop/savev2_adam_dense_35_bias_m_read_readvariableopAsavev2_adam_patch_encoder_3_dense_31_kernel_m_read_readvariableop?savev2_adam_patch_encoder_3_dense_31_bias_m_read_readvariableopHsavev2_adam_patch_encoder_3_embedding_3_embeddings_m_read_readvariableopFsavev2_adam_multi_head_attention_11_query_kernel_m_read_readvariableopDsavev2_adam_multi_head_attention_11_query_bias_m_read_readvariableopDsavev2_adam_multi_head_attention_11_key_kernel_m_read_readvariableopBsavev2_adam_multi_head_attention_11_key_bias_m_read_readvariableopFsavev2_adam_multi_head_attention_11_value_kernel_m_read_readvariableopDsavev2_adam_multi_head_attention_11_value_bias_m_read_readvariableopQsavev2_adam_multi_head_attention_11_attention_output_kernel_m_read_readvariableopOsavev2_adam_multi_head_attention_11_attention_output_bias_m_read_readvariableop>savev2_adam_layer_normalization_22_gamma_v_read_readvariableop=savev2_adam_layer_normalization_22_beta_v_read_readvariableop>savev2_adam_layer_normalization_23_gamma_v_read_readvariableop=savev2_adam_layer_normalization_23_beta_v_read_readvariableop1savev2_adam_dense_32_kernel_v_read_readvariableop/savev2_adam_dense_32_bias_v_read_readvariableop1savev2_adam_dense_33_kernel_v_read_readvariableop/savev2_adam_dense_33_bias_v_read_readvariableop1savev2_adam_dense_34_kernel_v_read_readvariableop/savev2_adam_dense_34_bias_v_read_readvariableop1savev2_adam_dense_35_kernel_v_read_readvariableop/savev2_adam_dense_35_bias_v_read_readvariableopAsavev2_adam_patch_encoder_3_dense_31_kernel_v_read_readvariableop?savev2_adam_patch_encoder_3_dense_31_bias_v_read_readvariableopHsavev2_adam_patch_encoder_3_embedding_3_embeddings_v_read_readvariableopFsavev2_adam_multi_head_attention_11_query_kernel_v_read_readvariableopDsavev2_adam_multi_head_attention_11_query_bias_v_read_readvariableopDsavev2_adam_multi_head_attention_11_key_kernel_v_read_readvariableopBsavev2_adam_multi_head_attention_11_key_bias_v_read_readvariableopFsavev2_adam_multi_head_attention_11_value_kernel_v_read_readvariableopDsavev2_adam_multi_head_attention_11_value_bias_v_read_readvariableopQsavev2_adam_multi_head_attention_11_attention_output_kernel_v_read_readvariableopOsavev2_adam_multi_head_attention_11_attention_output_bias_v_read_readvariableopsavev2_const_2"/device:CPU:0*
_output_shapes
 *c
dtypesY
W2U					
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*
_input_shapes
: :::::
::
::Δ::	:: : : : : ::: :
::
Δ::	::	::	::: : : : ::::::::
::
::Δ::	::
::
Δ::	::	::	:::::::
::
::Δ::	::
::
Δ::	::	::	::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::'	#
!
_output_shapes
:Δ:!


_output_shapes	
::%!

_output_shapes
:	: 
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
:!

_output_shapes	
::&"
 
_output_shapes
:
Δ:*&
$
_output_shapes
::%!

_output_shapes
:	:*&
$
_output_shapes
::%!

_output_shapes
:	:*&
$
_output_shapes
::%!

_output_shapes
:	:*&
$
_output_shapes
::!

_output_shapes	
:: 
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
::!(

_output_shapes	
::!)

_output_shapes	
::!*

_output_shapes	
::&+"
 
_output_shapes
:
:!,

_output_shapes	
::&-"
 
_output_shapes
:
:!.

_output_shapes	
::'/#
!
_output_shapes
:Δ:!0

_output_shapes	
::%1!

_output_shapes
:	: 2

_output_shapes
::&3"
 
_output_shapes
:
:!4

_output_shapes	
::&5"
 
_output_shapes
:
Δ:*6&
$
_output_shapes
::%7!

_output_shapes
:	:*8&
$
_output_shapes
::%9!

_output_shapes
:	:*:&
$
_output_shapes
::%;!

_output_shapes
:	:*<&
$
_output_shapes
::!=

_output_shapes	
::!>

_output_shapes	
::!?

_output_shapes	
::!@

_output_shapes	
::!A

_output_shapes	
::&B"
 
_output_shapes
:
:!C

_output_shapes	
::&D"
 
_output_shapes
:
:!E

_output_shapes	
::'F#
!
_output_shapes
:Δ:!G

_output_shapes	
::%H!

_output_shapes
:	: I

_output_shapes
::&J"
 
_output_shapes
:
:!K

_output_shapes	
::&L"
 
_output_shapes
:
Δ:*M&
$
_output_shapes
::%N!

_output_shapes
:	:*O&
$
_output_shapes
::%P!

_output_shapes
:	:*Q&
$
_output_shapes
::%R!

_output_shapes
:	:*S&
$
_output_shapes
::!T

_output_shapes	
::U

_output_shapes
: 
β
m
A__inference_add_22_layer_call_and_return_conditional_losses_59551
inputs_0
inputs_1
identityX
addAddV2inputs_0inputs_1*
T0*-
_output_shapes
:?????????ΔU
IdentityIdentityadd:z:0*
T0*-
_output_shapes
:?????????Δ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????Δ:?????????Δ:W S
-
_output_shapes
:?????????Δ
"
_user_specified_name
inputs/0:WS
-
_output_shapes
:?????????Δ
"
_user_specified_name
inputs/1
ϋ	
d
E__inference_dropout_27_layer_call_and_return_conditional_losses_57338

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:?????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:?????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜL>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:?????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:?????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:?????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:?????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
Ϊ
k
A__inference_add_23_layer_call_and_return_conditional_losses_57203

inputs
inputs_1
identityV
addAddV2inputsinputs_1*
T0*-
_output_shapes
:?????????ΔU
IdentityIdentityadd:z:0*
T0*-
_output_shapes
:?????????Δ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:?????????Δ:?????????Δ:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs:UQ
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
	
o
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56388
resizing_3_input
identityΟ
resizing_3/PartitionedCallPartitionedCallresizing_3_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_3_layer_call_and_return_conditional_losses_56327δ
rescaling_3/PartitionedCallPartitionedCall#resizing_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_rescaling_3_layer_call_and_return_conditional_losses_56337v
IdentityIdentity$rescaling_3/PartitionedCall:output:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:c _
1
_output_shapes
:?????????ΰΰ
*
_user_specified_nameresizing_3_input


H__inference_random_flip_3_layer_call_and_return_conditional_losses_56817

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity’(stateful_uniform_full_int/RngReadAndSkip’*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ϊ
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
valueB:Ω
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
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
valueB:Ο
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :
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
valueB"      χ
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:?????????ΰΰ
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:φ
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ώ
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????υ
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:?????????ϋ
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:?????????r
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
value	B :Ξ
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:ε
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:λ
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:?????????ΰΰΘ
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:?????????ΰΰk
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Β
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????Ρ
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:?????????ΰΰΏ
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:?????????ΰΰk
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ‘
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
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
valueB:γ
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
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
valueB:Ω
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :
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
valueB"      
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskΫ
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:?????????ΰΰ
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
valueB:η
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¨
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
 *  ?―
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ο
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????μ
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:?????????ς
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:?????????o
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
value	B :Ώ
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:ά
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:?????????v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:β
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:?????????ΰΰΏ
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:?????????ΰΰh
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ή
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:?????????Θ
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:?????????ΰΰΆ
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:?????????ΰΰ~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:?????????ΰΰ
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ΰΰ: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
£

d
E__inference_dropout_25_layer_call_and_return_conditional_losses_59649

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *δ8?j
dropout/MulMulinputsdropout/Const:output:0*
T0*-
_output_shapes
:?????????ΔC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*-
_output_shapes
:?????????Δ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ΝΜΜ=¬
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*-
_output_shapes
:?????????Δu
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*-
_output_shapes
:?????????Δo
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*-
_output_shapes
:?????????Δ_
IdentityIdentitydropout/Mul_1:z:0*
T0*-
_output_shapes
:?????????Δ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????Δ:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
­
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
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_57211b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:?????????Δ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????Δ:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
ͺ

ψ
C__inference_dense_34_layer_call_and_return_conditional_losses_59759

inputs3
matmul_readvariableop_resource:Δ.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:Δ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????Q
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:?????????b
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????Δ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
Η
F
*__inference_resizing_3_layer_call_fn_59811

inputs
identityΊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_resizing_3_layer_call_and_return_conditional_losses_56327j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
΄
x
1__inference_Data_Augmentation_layer_call_fn_56428
normalization_3_input
unknown
	unknown_0
identityζ
PartitionedCallPartitionedCallnormalization_3_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56421j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:?????????ΰΰ:::h d
1
_output_shapes
:?????????ΰΰ
/
_user_specified_namenormalization_3_input:,(
&
_output_shapes
::,(
&
_output_shapes
:
Ν
I
-__inference_random_zoom_3_layer_call_fn_60096

inputs
identity½
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_56418j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
Έ
ύ
C__inference_dense_32_layer_call_and_return_conditional_losses_57140

inputs5
!tensordot_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity’BiasAdd/ReadVariableOp’Tensordot/ReadVariableOp|
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
*
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
value	B : »
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
value	B : Ώ
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
value	B : 
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
:?????????Δ
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : §
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:?????????Δs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:?????????ΔV
ReluReluBiasAdd:output:0*
T0*-
_output_shapes
:?????????Δg
IdentityIdentityRelu:activations:0^NoOp*
T0*-
_output_shapes
:?????????Δz
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????Δ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs
ά
c
E__inference_dropout_27_layer_call_and_return_conditional_losses_57235

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:?????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:?????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:?????????:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
+
ώ
J__inference_patch_encoder_3_layer_call_and_return_conditional_losses_59395	
patch>
*dense_31_tensordot_readvariableop_resource:
7
(dense_31_biasadd_readvariableop_resource:	6
"embedding_3_embedding_lookup_59388:
Δ
identity’dense_31/BiasAdd/ReadVariableOp’!dense_31/Tensordot/ReadVariableOp’embedding_3/embedding_lookupM
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
B :ΔM
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :m
rangeRangerange/start:output:0range/limit:output:0range/delta:output:0*
_output_shapes	
:Δ
!dense_31/Tensordot/ReadVariableOpReadVariableOp*dense_31_tensordot_readvariableop_resource* 
_output_shapes
:
*
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
value	B : ί
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
value	B : γ
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
valueB: 
dense_31/Tensordot/ProdProd$dense_31/Tensordot/GatherV2:output:0!dense_31/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_31/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_31/Tensordot/Prod_1Prod&dense_31/Tensordot/GatherV2_1:output:0#dense_31/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_31/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ΐ
dense_31/Tensordot/concatConcatV2 dense_31/Tensordot/free:output:0 dense_31/Tensordot/axes:output:0'dense_31/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_31/Tensordot/stackPack dense_31/Tensordot/Prod:output:0"dense_31/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_31/Tensordot/transpose	Transposepatch"dense_31/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:??????????????????₯
dense_31/Tensordot/ReshapeReshape dense_31/Tensordot/transpose:y:0!dense_31/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????¦
dense_31/Tensordot/MatMulMatMul#dense_31/Tensordot/Reshape:output:0)dense_31/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????e
dense_31/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_31/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Λ
dense_31/Tensordot/concat_1ConcatV2$dense_31/Tensordot/GatherV2:output:0#dense_31/Tensordot/Const_2:output:0)dense_31/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¨
dense_31/TensordotReshape#dense_31/Tensordot/MatMul:product:0$dense_31/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:??????????????????
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0‘
dense_31/BiasAddBiasAdddense_31/Tensordot:output:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:??????????????????Ψ
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_59388range:output:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/59388* 
_output_shapes
:
Δ*
dtype0Ί
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/59388* 
_output_shapes
:
Δ
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
Δ
addAddV2dense_31/BiasAdd:output:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:?????????Δ\
IdentityIdentityadd:z:0^NoOp*
T0*-
_output_shapes
:?????????Δ«
NoOpNoOp ^dense_31/BiasAdd/ReadVariableOp"^dense_31/Tensordot/ReadVariableOp^embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':??????????????????: : : 2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2F
!dense_31/Tensordot/ReadVariableOp!dense_31/Tensordot/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:\ X
5
_output_shapes#
!:??????????????????

_user_specified_namepatch
ψ
b
F__inference_rescaling_3_layer_call_and_return_conditional_losses_56337

inputs
identityK
Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *;M
Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    _
mulMulinputsCast/x:output:0*
T0*1
_output_shapes
:?????????ΰΰd
addAddV2mul:z:0Cast_1/x:output:0*
T0*1
_output_shapes
:?????????ΰΰY
IdentityIdentityadd:z:0*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
π
c
E__inference_dropout_25_layer_call_and_return_conditional_losses_57151

inputs

identity_1T
IdentityIdentityinputs*
T0*-
_output_shapes
:?????????Δa

Identity_1IdentityIdentity:output:0*
T0*-
_output_shapes
:?????????Δ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:?????????Δ:U Q
-
_output_shapes
:?????????Δ
 
_user_specified_nameinputs


H__inference_random_flip_3_layer_call_and_return_conditional_losses_59957

inputs?
1stateful_uniform_full_int_rngreadandskip_resource:	
identity’(stateful_uniform_full_int/RngReadAndSkip’*stateful_uniform_full_int_1/RngReadAndSkipi
stateful_uniform_full_int/shapeConst*
_output_shapes
:*
dtype0*
valueB:i
stateful_uniform_full_int/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
stateful_uniform_full_int/ProdProd(stateful_uniform_full_int/shape:output:0(stateful_uniform_full_int/Const:output:0*
T0*
_output_shapes
: b
 stateful_uniform_full_int/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
 stateful_uniform_full_int/Cast_1Cast'stateful_uniform_full_int/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Ϊ
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
valueB:Ω
'stateful_uniform_full_int/strided_sliceStridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:06stateful_uniform_full_int/strided_slice/stack:output:08stateful_uniform_full_int/strided_slice/stack_1:output:08stateful_uniform_full_int/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
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
valueB:Ο
)stateful_uniform_full_int/strided_slice_1StridedSlice0stateful_uniform_full_int/RngReadAndSkip:value:08stateful_uniform_full_int/strided_slice_1/stack:output:0:stateful_uniform_full_int/strided_slice_1/stack_1:output:0:stateful_uniform_full_int/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
#stateful_uniform_full_int/Bitcast_1Bitcast2stateful_uniform_full_int/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0_
stateful_uniform_full_int/algConst*
_output_shapes
: *
dtype0*
value	B :
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
valueB"      χ
strided_sliceStridedSlicestack:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_mask
3stateless_random_flip_left_right/control_dependencyIdentityinputs*
T0*
_class
loc:@inputs*1
_output_shapes
:?????????ΰΰ
&stateless_random_flip_left_right/ShapeShape<stateless_random_flip_left_right/control_dependency:output:0*
T0*
_output_shapes
:~
4stateless_random_flip_left_right/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6stateless_random_flip_left_right/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6stateless_random_flip_left_right/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:φ
.stateless_random_flip_left_right/strided_sliceStridedSlice/stateless_random_flip_left_right/Shape:output:0=stateless_random_flip_left_right/strided_slice/stack:output:0?stateless_random_flip_left_right/strided_slice/stack_1:output:0?stateless_random_flip_left_right/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
?stateless_random_flip_left_right/stateless_random_uniform/shapePack7stateless_random_flip_left_right/strided_slice:output:0*
N*
T0*
_output_shapes
:
=stateless_random_flip_left_right/stateless_random_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *    
=stateless_random_flip_left_right/stateless_random_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice:output:0* 
_output_shapes
::
Vstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ώ
Rstateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Hstateless_random_flip_left_right/stateless_random_uniform/shape:output:0\stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0`stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0_stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????υ
=stateless_random_flip_left_right/stateless_random_uniform/subSubFstateless_random_flip_left_right/stateless_random_uniform/max:output:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
=stateless_random_flip_left_right/stateless_random_uniform/mulMul[stateless_random_flip_left_right/stateless_random_uniform/StatelessRandomUniformV2:output:0Astateless_random_flip_left_right/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:?????????ϋ
9stateless_random_flip_left_right/stateless_random_uniformAddV2Astateless_random_flip_left_right/stateless_random_uniform/mul:z:0Fstateless_random_flip_left_right/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:?????????r
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
value	B :Ξ
.stateless_random_flip_left_right/Reshape/shapePack7stateless_random_flip_left_right/strided_slice:output:09stateless_random_flip_left_right/Reshape/shape/1:output:09stateless_random_flip_left_right/Reshape/shape/2:output:09stateless_random_flip_left_right/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:ε
(stateless_random_flip_left_right/ReshapeReshape=stateless_random_flip_left_right/stateless_random_uniform:z:07stateless_random_flip_left_right/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????
&stateless_random_flip_left_right/RoundRound1stateless_random_flip_left_right/Reshape:output:0*
T0*/
_output_shapes
:?????????y
/stateless_random_flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:λ
*stateless_random_flip_left_right/ReverseV2	ReverseV2<stateless_random_flip_left_right/control_dependency:output:08stateless_random_flip_left_right/ReverseV2/axis:output:0*
T0*1
_output_shapes
:?????????ΰΰΘ
$stateless_random_flip_left_right/mulMul*stateless_random_flip_left_right/Round:y:03stateless_random_flip_left_right/ReverseV2:output:0*
T0*1
_output_shapes
:?????????ΰΰk
&stateless_random_flip_left_right/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Β
$stateless_random_flip_left_right/subSub/stateless_random_flip_left_right/sub/x:output:0*stateless_random_flip_left_right/Round:y:0*
T0*/
_output_shapes
:?????????Ρ
&stateless_random_flip_left_right/mul_1Mul(stateless_random_flip_left_right/sub:z:0<stateless_random_flip_left_right/control_dependency:output:0*
T0*1
_output_shapes
:?????????ΰΰΏ
$stateless_random_flip_left_right/addAddV2(stateless_random_flip_left_right/mul:z:0*stateless_random_flip_left_right/mul_1:z:0*
T0*1
_output_shapes
:?????????ΰΰk
!stateful_uniform_full_int_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:k
!stateful_uniform_full_int_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: ‘
 stateful_uniform_full_int_1/ProdProd*stateful_uniform_full_int_1/shape:output:0*stateful_uniform_full_int_1/Const:output:0*
T0*
_output_shapes
: d
"stateful_uniform_full_int_1/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
"stateful_uniform_full_int_1/Cast_1Cast)stateful_uniform_full_int_1/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
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
valueB:γ
)stateful_uniform_full_int_1/strided_sliceStridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:08stateful_uniform_full_int_1/strided_slice/stack:output:0:stateful_uniform_full_int_1/strided_slice/stack_1:output:0:stateful_uniform_full_int_1/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
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
valueB:Ω
+stateful_uniform_full_int_1/strided_slice_1StridedSlice2stateful_uniform_full_int_1/RngReadAndSkip:value:0:stateful_uniform_full_int_1/strided_slice_1/stack:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_1:output:0<stateful_uniform_full_int_1/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
%stateful_uniform_full_int_1/Bitcast_1Bitcast4stateful_uniform_full_int_1/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0a
stateful_uniform_full_int_1/algConst*
_output_shapes
: *
dtype0*
value	B :
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
valueB"      
strided_slice_1StridedSlicestack_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask*
end_mask*
shrink_axis_maskΫ
0stateless_random_flip_up_down/control_dependencyIdentity(stateless_random_flip_left_right/add:z:0*
T0*7
_class-
+)loc:@stateless_random_flip_left_right/add*1
_output_shapes
:?????????ΰΰ
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
valueB:η
+stateless_random_flip_up_down/strided_sliceStridedSlice,stateless_random_flip_up_down/Shape:output:0:stateless_random_flip_up_down/strided_slice/stack:output:0<stateless_random_flip_up_down/strided_slice/stack_1:output:0<stateless_random_flip_up_down/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¨
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
 *  ?―
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounterStatelessRandomGetKeyCounterstrided_slice_1:output:0* 
_output_shapes
::
Sstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :ο
Ostateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2StatelessRandomUniformV2Estateless_random_flip_up_down/stateless_random_uniform/shape:output:0Ystateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:key:0]stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomGetKeyCounter:counter:0\stateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2/alg:output:0*#
_output_shapes
:?????????μ
:stateless_random_flip_up_down/stateless_random_uniform/subSubCstateless_random_flip_up_down/stateless_random_uniform/max:output:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*
_output_shapes
: 
:stateless_random_flip_up_down/stateless_random_uniform/mulMulXstateless_random_flip_up_down/stateless_random_uniform/StatelessRandomUniformV2:output:0>stateless_random_flip_up_down/stateless_random_uniform/sub:z:0*
T0*#
_output_shapes
:?????????ς
6stateless_random_flip_up_down/stateless_random_uniformAddV2>stateless_random_flip_up_down/stateless_random_uniform/mul:z:0Cstateless_random_flip_up_down/stateless_random_uniform/min:output:0*
T0*#
_output_shapes
:?????????o
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
value	B :Ώ
+stateless_random_flip_up_down/Reshape/shapePack4stateless_random_flip_up_down/strided_slice:output:06stateless_random_flip_up_down/Reshape/shape/1:output:06stateless_random_flip_up_down/Reshape/shape/2:output:06stateless_random_flip_up_down/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:ά
%stateless_random_flip_up_down/ReshapeReshape:stateless_random_flip_up_down/stateless_random_uniform:z:04stateless_random_flip_up_down/Reshape/shape:output:0*
T0*/
_output_shapes
:?????????
#stateless_random_flip_up_down/RoundRound.stateless_random_flip_up_down/Reshape:output:0*
T0*/
_output_shapes
:?????????v
,stateless_random_flip_up_down/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:β
'stateless_random_flip_up_down/ReverseV2	ReverseV29stateless_random_flip_up_down/control_dependency:output:05stateless_random_flip_up_down/ReverseV2/axis:output:0*
T0*1
_output_shapes
:?????????ΰΰΏ
!stateless_random_flip_up_down/mulMul'stateless_random_flip_up_down/Round:y:00stateless_random_flip_up_down/ReverseV2:output:0*
T0*1
_output_shapes
:?????????ΰΰh
#stateless_random_flip_up_down/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ή
!stateless_random_flip_up_down/subSub,stateless_random_flip_up_down/sub/x:output:0'stateless_random_flip_up_down/Round:y:0*
T0*/
_output_shapes
:?????????Θ
#stateless_random_flip_up_down/mul_1Mul%stateless_random_flip_up_down/sub:z:09stateless_random_flip_up_down/control_dependency:output:0*
T0*1
_output_shapes
:?????????ΰΰΆ
!stateless_random_flip_up_down/addAddV2%stateless_random_flip_up_down/mul:z:0'stateless_random_flip_up_down/mul_1:z:0*
T0*1
_output_shapes
:?????????ΰΰ~
IdentityIdentity%stateless_random_flip_up_down/add:z:0^NoOp*
T0*1
_output_shapes
:?????????ΰΰ
NoOpNoOp)^stateful_uniform_full_int/RngReadAndSkip+^stateful_uniform_full_int_1/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ΰΰ: 2T
(stateful_uniform_full_int/RngReadAndSkip(stateful_uniform_full_int/RngReadAndSkip2X
*stateful_uniform_full_int_1/RngReadAndSkip*stateful_uniform_full_int_1/RngReadAndSkip:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs

d
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_56418

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:?????????ΰΰ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:?????????ΰΰ:Y U
1
_output_shapes
:?????????ΰΰ
 
_user_specified_nameinputs
O
Α
B__inference_model_3_layer_call_and_return_conditional_losses_57879
input_4
data_augmentation_57812
data_augmentation_57814)
patch_encoder_3_57818:
$
patch_encoder_3_57820:	)
patch_encoder_3_57822:
Δ+
layer_normalization_22_57825:	+
layer_normalization_22_57827:	5
multi_head_attention_11_57830:0
multi_head_attention_11_57832:	5
multi_head_attention_11_57834:0
multi_head_attention_11_57836:	5
multi_head_attention_11_57838:0
multi_head_attention_11_57840:	5
multi_head_attention_11_57842:,
multi_head_attention_11_57844:	+
layer_normalization_23_57848:	+
layer_normalization_23_57850:	"
dense_32_57853:

dense_32_57855:	"
dense_33_57859:

dense_33_57861:	#
dense_34_57867:Δ
dense_34_57869:	!
dense_35_57873:	
dense_35_57875:
identity’ dense_32/StatefulPartitionedCall’ dense_33/StatefulPartitionedCall’ dense_34/StatefulPartitionedCall’ dense_35/StatefulPartitionedCall’.layer_normalization_22/StatefulPartitionedCall’.layer_normalization_23/StatefulPartitionedCall’/multi_head_attention_11/StatefulPartitionedCall’'patch_encoder_3/StatefulPartitionedCallΞ
Resize_Rescale/PartitionedCallPartitionedCallinput_4*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56340¨
!Data_Augmentation/PartitionedCallPartitionedCall'Resize_Rescale/PartitionedCall:output:0data_augmentation_57812data_augmentation_57814*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:?????????ΰΰ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56421λ
patches_7/PartitionedCallPartitionedCall*Data_Augmentation/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:??????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_patches_7_layer_call_and_return_conditional_losses_56942Δ
'patch_encoder_3/StatefulPartitionedCallStatefulPartitionedCall"patches_7/PartitionedCall:output:0patch_encoder_3_57818patch_encoder_3_57820patch_encoder_3_57822*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_patch_encoder_3_layer_call_and_return_conditional_losses_56984Υ
.layer_normalization_22/StatefulPartitionedCallStatefulPartitionedCall0patch_encoder_3/StatefulPartitionedCall:output:0layer_normalization_22_57825layer_normalization_22_57827*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_57014ΰ
/multi_head_attention_11/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_22/StatefulPartitionedCall:output:07layer_normalization_22/StatefulPartitionedCall:output:0multi_head_attention_11_57830multi_head_attention_11_57832multi_head_attention_11_57834multi_head_attention_11_57836multi_head_attention_11_57838multi_head_attention_11_57840multi_head_attention_11_57842multi_head_attention_11_57844*
Tin
2
*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_57055
add_22/PartitionedCallPartitionedCall8multi_head_attention_11/StatefulPartitionedCall:output:00patch_encoder_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_add_22_layer_call_and_return_conditional_losses_57079Δ
.layer_normalization_23/StatefulPartitionedCallStatefulPartitionedCalladd_22/PartitionedCall:output:0layer_normalization_23_57848layer_normalization_23_57850*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Z
fURS
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_57103€
 dense_32/StatefulPartitionedCallStatefulPartitionedCall7layer_normalization_23/StatefulPartitionedCall:output:0dense_32_57853dense_32_57855*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_32_layer_call_and_return_conditional_losses_57140δ
dropout_25/PartitionedCallPartitionedCall)dense_32/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_25_layer_call_and_return_conditional_losses_57151
 dense_33/StatefulPartitionedCallStatefulPartitionedCall#dropout_25/PartitionedCall:output:0dense_33_57859dense_33_57861*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_33_layer_call_and_return_conditional_losses_57184δ
dropout_26/PartitionedCallPartitionedCall)dense_33/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_26_layer_call_and_return_conditional_losses_57195ψ
add_23/PartitionedCallPartitionedCall#dropout_26/PartitionedCall:output:0add_22/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_add_23_layer_call_and_return_conditional_losses_57203Τ
flatten_3/PartitionedCallPartitionedCalladd_23/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:?????????Δ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_57211
 dense_34/StatefulPartitionedCallStatefulPartitionedCall"flatten_3/PartitionedCall:output:0dense_34_57867dense_34_57869*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_34_layer_call_and_return_conditional_losses_57224ί
dropout_27/PartitionedCallPartitionedCall)dense_34/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_27_layer_call_and_return_conditional_losses_57235
 dense_35/StatefulPartitionedCallStatefulPartitionedCall#dropout_27/PartitionedCall:output:0dense_35_57873dense_35_57875*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_35_layer_call_and_return_conditional_losses_57248x
IdentityIdentity)dense_35/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
NoOpNoOp!^dense_32/StatefulPartitionedCall!^dense_33/StatefulPartitionedCall!^dense_34/StatefulPartitionedCall!^dense_35/StatefulPartitionedCall/^layer_normalization_22/StatefulPartitionedCall/^layer_normalization_23/StatefulPartitionedCall0^multi_head_attention_11/StatefulPartitionedCall(^patch_encoder_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapesq
o:?????????ΰΰ::: : : : : : : : : : : : : : : : : : : : : : : 2D
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
:?????????ΰΰ
!
_user_specified_name	input_4:,(
&
_output_shapes
::,(
&
_output_shapes
:
£

υ
C__inference_dense_35_layer_call_and_return_conditional_losses_59806

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:?????????
 
_user_specified_nameinputs
+
ώ
J__inference_patch_encoder_3_layer_call_and_return_conditional_losses_56984	
patch>
*dense_31_tensordot_readvariableop_resource:
7
(dense_31_biasadd_readvariableop_resource:	6
"embedding_3_embedding_lookup_56977:
Δ
identity’dense_31/BiasAdd/ReadVariableOp’!dense_31/Tensordot/ReadVariableOp’embedding_3/embedding_lookupM
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
B :ΔM
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :m
rangeRangerange/start:output:0range/limit:output:0range/delta:output:0*
_output_shapes	
:Δ
!dense_31/Tensordot/ReadVariableOpReadVariableOp*dense_31_tensordot_readvariableop_resource* 
_output_shapes
:
*
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
value	B : ί
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
value	B : γ
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
valueB: 
dense_31/Tensordot/ProdProd$dense_31/Tensordot/GatherV2:output:0!dense_31/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_31/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 
dense_31/Tensordot/Prod_1Prod&dense_31/Tensordot/GatherV2_1:output:0#dense_31/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_31/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ΐ
dense_31/Tensordot/concatConcatV2 dense_31/Tensordot/free:output:0 dense_31/Tensordot/axes:output:0'dense_31/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:
dense_31/Tensordot/stackPack dense_31/Tensordot/Prod:output:0"dense_31/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:
dense_31/Tensordot/transpose	Transposepatch"dense_31/Tensordot/concat:output:0*
T0*5
_output_shapes#
!:??????????????????₯
dense_31/Tensordot/ReshapeReshape dense_31/Tensordot/transpose:y:0!dense_31/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????¦
dense_31/Tensordot/MatMulMatMul#dense_31/Tensordot/Reshape:output:0)dense_31/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:?????????e
dense_31/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:b
 dense_31/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Λ
dense_31/Tensordot/concat_1ConcatV2$dense_31/Tensordot/GatherV2:output:0#dense_31/Tensordot/Const_2:output:0)dense_31/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:¨
dense_31/TensordotReshape#dense_31/Tensordot/MatMul:product:0$dense_31/Tensordot/concat_1:output:0*
T0*5
_output_shapes#
!:??????????????????
dense_31/BiasAdd/ReadVariableOpReadVariableOp(dense_31_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0‘
dense_31/BiasAddBiasAdddense_31/Tensordot:output:0'dense_31/BiasAdd/ReadVariableOp:value:0*
T0*5
_output_shapes#
!:??????????????????Ψ
embedding_3/embedding_lookupResourceGather"embedding_3_embedding_lookup_56977range:output:0*
Tindices0*5
_class+
)'loc:@embedding_3/embedding_lookup/56977* 
_output_shapes
:
Δ*
dtype0Ί
%embedding_3/embedding_lookup/IdentityIdentity%embedding_3/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding_3/embedding_lookup/56977* 
_output_shapes
:
Δ
'embedding_3/embedding_lookup/Identity_1Identity.embedding_3/embedding_lookup/Identity:output:0*
T0* 
_output_shapes
:
Δ
addAddV2dense_31/BiasAdd:output:00embedding_3/embedding_lookup/Identity_1:output:0*
T0*-
_output_shapes
:?????????Δ\
IdentityIdentityadd:z:0^NoOp*
T0*-
_output_shapes
:?????????Δ«
NoOpNoOp ^dense_31/BiasAdd/ReadVariableOp"^dense_31/Tensordot/ReadVariableOp^embedding_3/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':??????????????????: : : 2B
dense_31/BiasAdd/ReadVariableOpdense_31/BiasAdd/ReadVariableOp2F
!dense_31/Tensordot/ReadVariableOp!dense_31/Tensordot/ReadVariableOp2<
embedding_3/embedding_lookupembedding_3/embedding_lookup:\ X
5
_output_shapes#
!:??????????????????

_user_specified_namepatch"ΫL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*΅
serving_default‘
E
input_4:
serving_default_input_4:0?????????ΰΰ<
dense_350
StatefulPartitionedCall:0?????????tensorflow/serving/predict:ν
Ώ
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
Δ
layer-0
layer-1
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses"
_tf_keras_sequential
ψ
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
₯
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
Ν
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
Δ
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

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
₯
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_layer
Δ
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
»

`kernel
abias
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses"
_tf_keras_layer
Ό
h	variables
itrainable_variables
jregularization_losses
k	keras_api
l_random_generator
m__call__
*n&call_and_return_all_conditional_losses"
_tf_keras_layer
»

okernel
pbias
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
Ό
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
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
kernel
	bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+ &call_and_return_all_conditional_losses"
_tf_keras_layer
Β
	‘iter
’beta_1
£beta_2

€decay
₯learning_rate=mΐ>mΑXmΒYmΓ`mΔamΕomΖpmΗ	mΘ	mΙ	mΚ	mΛ	©mΜ	ͺmΝ	«mΞ	¬mΟ	­mΠ	?mΡ	―m?	°mΣ	±mΤ	²mΥ	³mΦ=vΧ>vΨXvΩYvΪ`vΫavάovέpvή	vί	vΰ	vα	vβ	©vγ	ͺvδ	«vε	¬vζ	­vη	?vθ	―vι	°vκ	±vλ	²vμ	³vν"
	optimizer
ψ
¦0
§1
¨2
©3
ͺ4
«5
=6
>7
¬8
­9
?10
―11
°12
±13
²14
³15
X16
Y17
`18
a19
o20
p21
22
23
24
25"
trackable_list_wrapper
έ
©0
ͺ1
«2
=3
>4
¬5
­6
?7
―8
°9
±10
²11
³12
X13
Y14
`15
a16
o17
p18
19
20
21
22"
trackable_list_wrapper
 "
trackable_list_wrapper
Ο
΄non_trainable_variables
΅layers
Άmetrics
 ·layer_regularization_losses
Έlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
κ2η
'__inference_model_3_layer_call_fn_57308
'__inference_model_3_layer_call_fn_58017
'__inference_model_3_layer_call_fn_58078
'__inference_model_3_layer_call_fn_57808ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Φ2Σ
B__inference_model_3_layer_call_and_return_conditional_losses_58282
B__inference_model_3_layer_call_and_return_conditional_losses_58849
B__inference_model_3_layer_call_and_return_conditional_losses_57879
B__inference_model_3_layer_call_and_return_conditional_losses_57956ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ΛBΘ
 __inference__wrapped_model_56314input_4"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
-
Ήserving_default"
signature_map
«
Ί	variables
»trainable_variables
Όregularization_losses
½	keras_api
Ύ__call__
+Ώ&call_and_return_all_conditional_losses"
_tf_keras_layer
«
ΐ	variables
Αtrainable_variables
Βregularization_losses
Γ	keras_api
Δ__call__
+Ε&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ζnon_trainable_variables
Ηlayers
Θmetrics
 Ιlayer_regularization_losses
Κlayer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
2
.__inference_Resize_Rescale_layer_call_fn_56343
.__inference_Resize_Rescale_layer_call_fn_58911
.__inference_Resize_Rescale_layer_call_fn_58916
.__inference_Resize_Rescale_layer_call_fn_56376ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ς2ο
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_58926
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_58936
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56382
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56388ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Θ
Λ
_keep_axis
Μ_reduce_axis
Ν_reduce_axis_mask
Ξ_broadcast_shape
	¦mean
¦
adapt_mean
§variance
§adapt_variance

¨count
Ο	keras_api"
_tf_keras_layer
Γ
Π	variables
Ρtrainable_variables
?regularization_losses
Σ	keras_api
Τ_random_generator
Υ__call__
+Φ&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
Χ	variables
Ψtrainable_variables
Ωregularization_losses
Ϊ	keras_api
Ϋ_random_generator
ά__call__
+έ&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
ή	variables
ίtrainable_variables
ΰregularization_losses
α	keras_api
β_random_generator
γ__call__
+δ&call_and_return_all_conditional_losses"
_tf_keras_layer
8
¦0
§1
¨2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
εnon_trainable_variables
ζlayers
ηmetrics
 θlayer_regularization_losses
ιlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
2
1__inference_Data_Augmentation_layer_call_fn_56428
1__inference_Data_Augmentation_layer_call_fn_58945
1__inference_Data_Augmentation_layer_call_fn_58960
1__inference_Data_Augmentation_layer_call_fn_56881ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ώ2ϋ
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_58971
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_59325
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56895
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56915ΐ
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
κnon_trainable_variables
λlayers
μmetrics
 νlayer_regularization_losses
ξlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
Σ2Π
)__inference_patches_7_layer_call_fn_59330’
²
FullArgSpec
args
jself
jimages
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ξ2λ
D__inference_patches_7_layer_call_and_return_conditional_losses_59344’
²
FullArgSpec
args
jself
jimages
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
Γ
©kernel
	ͺbias
ο	variables
πtrainable_variables
ρregularization_losses
ς	keras_api
σ__call__
+τ&call_and_return_all_conditional_losses"
_tf_keras_layer
Ό
«
embeddings
υ	variables
φtrainable_variables
χregularization_losses
ψ	keras_api
ω__call__
+ϊ&call_and_return_all_conditional_losses"
_tf_keras_layer
8
©0
ͺ1
«2"
trackable_list_wrapper
8
©0
ͺ1
«2"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ϋnon_trainable_variables
όlayers
ύmetrics
 ώlayer_regularization_losses
?layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
Ψ2Υ
/__inference_patch_encoder_3_layer_call_fn_59355‘
²
FullArgSpec
args
jself
jpatch
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
σ2π
J__inference_patch_encoder_3_layer_call_and_return_conditional_losses_59395‘
²
FullArgSpec
args
jself
jpatch
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
+:)2layer_normalization_22/gamma
*:(2layer_normalization_22/beta
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
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
ΰ2έ
6__inference_layer_normalization_22_layer_call_fn_59404’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ϋ2ψ
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_59426’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
φ
partial_output_shape
full_output_shape
¬kernel
	­bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
φ
partial_output_shape
full_output_shape
?kernel
	―bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
φ
partial_output_shape
full_output_shape
°kernel
	±bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses"
_tf_keras_layer
«
	variables
trainable_variables
regularization_losses
 	keras_api
‘__call__
+’&call_and_return_all_conditional_losses"
_tf_keras_layer
Γ
£	variables
€trainable_variables
₯regularization_losses
¦	keras_api
§_random_generator
¨__call__
+©&call_and_return_all_conditional_losses"
_tf_keras_layer
φ
ͺpartial_output_shape
«full_output_shape
²kernel
	³bias
¬	variables
­trainable_variables
?regularization_losses
―	keras_api
°__call__
+±&call_and_return_all_conditional_losses"
_tf_keras_layer
`
¬0
­1
?2
―3
°4
±5
²6
³7"
trackable_list_wrapper
`
¬0
­1
?2
―3
°4
±5
²6
³7"
trackable_list_wrapper
 "
trackable_list_wrapper
²
²non_trainable_variables
³layers
΄metrics
 ΅layer_regularization_losses
Άlayer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
τ2ρ
7__inference_multi_head_attention_11_layer_call_fn_59448
7__inference_multi_head_attention_11_layer_call_fn_59470ό
σ²ο
FullArgSpece
args]Z
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
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
ͺ2§
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_59505
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_59539ό
σ²ο
FullArgSpece
args]Z
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
defaults

 

 
p 
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
·non_trainable_variables
Έlayers
Ήmetrics
 Ίlayer_regularization_losses
»layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
Π2Ν
&__inference_add_22_layer_call_fn_59545’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
λ2θ
A__inference_add_22_layer_call_and_return_conditional_losses_59551’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
+:)2layer_normalization_23/gamma
*:(2layer_normalization_23/beta
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
²
Όnon_trainable_variables
½layers
Ύmetrics
 Ώlayer_regularization_losses
ΐlayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
ΰ2έ
6__inference_layer_normalization_23_layer_call_fn_59560’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ϋ2ψ
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_59582’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
#:!
2dense_32/kernel
:2dense_32/bias
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
²
Αnon_trainable_variables
Βlayers
Γmetrics
 Δlayer_regularization_losses
Εlayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
?2Ο
(__inference_dense_32_layer_call_fn_59591’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ν2κ
C__inference_dense_32_layer_call_and_return_conditional_losses_59622’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ζnon_trainable_variables
Ηlayers
Θmetrics
 Ιlayer_regularization_losses
Κlayer_metrics
h	variables
itrainable_variables
jregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_25_layer_call_fn_59627
*__inference_dropout_25_layer_call_fn_59632΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Θ2Ε
E__inference_dropout_25_layer_call_and_return_conditional_losses_59637
E__inference_dropout_25_layer_call_and_return_conditional_losses_59649΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
#:!
2dense_33/kernel
:2dense_33/bias
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
²
Λnon_trainable_variables
Μlayers
Νmetrics
 Ξlayer_regularization_losses
Οlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
?2Ο
(__inference_dense_33_layer_call_fn_59658’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ν2κ
C__inference_dense_33_layer_call_and_return_conditional_losses_59689’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Πnon_trainable_variables
Ρlayers
?metrics
 Σlayer_regularization_losses
Τlayer_metrics
w	variables
xtrainable_variables
yregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_26_layer_call_fn_59694
*__inference_dropout_26_layer_call_fn_59699΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Θ2Ε
E__inference_dropout_26_layer_call_and_return_conditional_losses_59704
E__inference_dropout_26_layer_call_and_return_conditional_losses_59716΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Ά
Υnon_trainable_variables
Φlayers
Χmetrics
 Ψlayer_regularization_losses
Ωlayer_metrics
~	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Π2Ν
&__inference_add_23_layer_call_fn_59722’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
λ2θ
A__inference_add_23_layer_call_and_return_conditional_losses_59728’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
Ϊnon_trainable_variables
Ϋlayers
άmetrics
 έlayer_regularization_losses
ήlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Σ2Π
)__inference_flatten_3_layer_call_fn_59733’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ξ2λ
D__inference_flatten_3_layer_call_and_return_conditional_losses_59739’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
$:"Δ2dense_34/kernel
:2dense_34/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
ίnon_trainable_variables
ΰlayers
αmetrics
 βlayer_regularization_losses
γlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
?2Ο
(__inference_dense_34_layer_call_fn_59748’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ν2κ
C__inference_dense_34_layer_call_and_return_conditional_losses_59759’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
δnon_trainable_variables
εlayers
ζmetrics
 ηlayer_regularization_losses
θlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_27_layer_call_fn_59764
*__inference_dropout_27_layer_call_fn_59769΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Θ2Ε
E__inference_dropout_27_layer_call_and_return_conditional_losses_59774
E__inference_dropout_27_layer_call_and_return_conditional_losses_59786΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
": 	2dense_35/kernel
:2dense_35/bias
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
ιnon_trainable_variables
κlayers
λmetrics
 μlayer_regularization_losses
νlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
+ &call_and_return_all_conditional_losses
' "call_and_return_conditional_losses"
_generic_user_object
?2Ο
(__inference_dense_35_layer_call_fn_59795’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ν2κ
C__inference_dense_35_layer_call_and_return_conditional_losses_59806’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
2patch_encoder_3/dense_31/kernel
,:*2patch_encoder_3/dense_31/bias
::8
Δ2&patch_encoder_3/embedding_3/embeddings
<::2$multi_head_attention_11/query/kernel
5:3	2"multi_head_attention_11/query/bias
::82"multi_head_attention_11/key/kernel
3:1	2 multi_head_attention_11/key/bias
<::2$multi_head_attention_11/value/kernel
5:3	2"multi_head_attention_11/value/bias
G:E2/multi_head_attention_11/attention_output/kernel
<::2-multi_head_attention_11/attention_output/bias
8
¦0
§1
¨2"
trackable_list_wrapper
¦
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
ξ0
ο1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ΚBΗ
#__inference_signature_wrapper_58906input_4"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
πnon_trainable_variables
ρlayers
ςmetrics
 σlayer_regularization_losses
τlayer_metrics
Ί	variables
»trainable_variables
Όregularization_losses
Ύ__call__
+Ώ&call_and_return_all_conditional_losses
'Ώ"call_and_return_conditional_losses"
_generic_user_object
Τ2Ρ
*__inference_resizing_3_layer_call_fn_59811’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
ο2μ
E__inference_resizing_3_layer_call_and_return_conditional_losses_59817’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
υnon_trainable_variables
φlayers
χmetrics
 ψlayer_regularization_losses
ωlayer_metrics
ΐ	variables
Αtrainable_variables
Βregularization_losses
Δ__call__
+Ε&call_and_return_all_conditional_losses
'Ε"call_and_return_conditional_losses"
_generic_user_object
Υ2?
+__inference_rescaling_3_layer_call_fn_59822’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
π2ν
F__inference_rescaling_3_layer_call_and_return_conditional_losses_59830’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
Έ
ϊnon_trainable_variables
ϋlayers
όmetrics
 ύlayer_regularization_losses
ώlayer_metrics
Π	variables
Ρtrainable_variables
?regularization_losses
Υ__call__
+Φ&call_and_return_all_conditional_losses
'Φ"call_and_return_conditional_losses"
_generic_user_object
/
?
_generator"
_generic_user_object
2
-__inference_random_flip_3_layer_call_fn_59835
-__inference_random_flip_3_layer_call_fn_59842΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Ξ2Λ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_59846
H__inference_random_flip_3_layer_call_and_return_conditional_losses_59957΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
Χ	variables
Ψtrainable_variables
Ωregularization_losses
ά__call__
+έ&call_and_return_all_conditional_losses
'έ"call_and_return_conditional_losses"
_generic_user_object
/

_generator"
_generic_user_object
 2
1__inference_random_rotation_3_layer_call_fn_59962
1__inference_random_rotation_3_layer_call_fn_59969΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Φ2Σ
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_59973
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_60091΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ή	variables
ίtrainable_variables
ΰregularization_losses
γ__call__
+δ&call_and_return_all_conditional_losses
'δ"call_and_return_conditional_losses"
_generic_user_object
/

_generator"
_generic_user_object
2
-__inference_random_zoom_3_layer_call_fn_60096
-__inference_random_zoom_3_layer_call_fn_60103΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Ξ2Λ
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_60107
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_60233΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
8
¦0
§1
¨2"
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
ͺ1"
trackable_list_wrapper
0
©0
ͺ1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
ο	variables
πtrainable_variables
ρregularization_losses
σ__call__
+τ&call_and_return_all_conditional_losses
'τ"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
(
«0"
trackable_list_wrapper
(
«0"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
υ	variables
φtrainable_variables
χregularization_losses
ω__call__
+ϊ&call_and_return_all_conditional_losses
'ϊ"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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
¬0
­1"
trackable_list_wrapper
0
¬0
­1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
?0
―1"
trackable_list_wrapper
0
?0
―1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
°0
±1"
trackable_list_wrapper
0
°0
±1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
 non_trainable_variables
‘layers
’metrics
 £layer_regularization_losses
€layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
₯non_trainable_variables
¦layers
§metrics
 ¨layer_regularization_losses
©layer_metrics
	variables
trainable_variables
regularization_losses
‘__call__
+’&call_and_return_all_conditional_losses
'’"call_and_return_conditional_losses"
_generic_user_object
΅2²―
¦²’
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults’

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
΅2²―
¦²’
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults’

 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
ͺnon_trainable_variables
«layers
¬metrics
 ­layer_regularization_losses
?layer_metrics
£	variables
€trainable_variables
₯regularization_losses
¨__call__
+©&call_and_return_all_conditional_losses
'©"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Ί2·΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
Ί2·΄
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsͺ 
annotationsͺ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
²0
³1"
trackable_list_wrapper
0
²0
³1"
trackable_list_wrapper
 "
trackable_list_wrapper
Έ
―non_trainable_variables
°layers
±metrics
 ²layer_regularization_losses
³layer_metrics
¬	variables
­trainable_variables
?regularization_losses
°__call__
+±&call_and_return_all_conditional_losses
'±"call_and_return_conditional_losses"
_generic_user_object
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
 
¨2₯’
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsͺ *
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

΄total

΅count
Ά	variables
·	keras_api"
_tf_keras_metric
c

Έtotal

Ήcount
Ί
_fn_kwargs
»	variables
Ό	keras_api"
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
½
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
Ύ
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
Ώ
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
΄0
΅1"
trackable_list_wrapper
.
Ά	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Έ0
Ή1"
trackable_list_wrapper
.
»	variables"
_generic_user_object
<::	20model_3/Data_Augmentation/random_flip_3/StateVar
@:>	24model_3/Data_Augmentation/random_rotation_3/StateVar
<::	20model_3/Data_Augmentation/random_zoom_3/StateVar
0:.2#Adam/layer_normalization_22/gamma/m
/:-2"Adam/layer_normalization_22/beta/m
0:.2#Adam/layer_normalization_23/gamma/m
/:-2"Adam/layer_normalization_23/beta/m
(:&
2Adam/dense_32/kernel/m
!:2Adam/dense_32/bias/m
(:&
2Adam/dense_33/kernel/m
!:2Adam/dense_33/bias/m
):'Δ2Adam/dense_34/kernel/m
!:2Adam/dense_34/bias/m
':%	2Adam/dense_35/kernel/m
 :2Adam/dense_35/bias/m
8:6
2&Adam/patch_encoder_3/dense_31/kernel/m
1:/2$Adam/patch_encoder_3/dense_31/bias/m
?:=
Δ2-Adam/patch_encoder_3/embedding_3/embeddings/m
A:?2+Adam/multi_head_attention_11/query/kernel/m
::8	2)Adam/multi_head_attention_11/query/bias/m
?:=2)Adam/multi_head_attention_11/key/kernel/m
8:6	2'Adam/multi_head_attention_11/key/bias/m
A:?2+Adam/multi_head_attention_11/value/kernel/m
::8	2)Adam/multi_head_attention_11/value/bias/m
L:J26Adam/multi_head_attention_11/attention_output/kernel/m
A:?24Adam/multi_head_attention_11/attention_output/bias/m
0:.2#Adam/layer_normalization_22/gamma/v
/:-2"Adam/layer_normalization_22/beta/v
0:.2#Adam/layer_normalization_23/gamma/v
/:-2"Adam/layer_normalization_23/beta/v
(:&
2Adam/dense_32/kernel/v
!:2Adam/dense_32/bias/v
(:&
2Adam/dense_33/kernel/v
!:2Adam/dense_33/bias/v
):'Δ2Adam/dense_34/kernel/v
!:2Adam/dense_34/bias/v
':%	2Adam/dense_35/kernel/v
 :2Adam/dense_35/bias/v
8:6
2&Adam/patch_encoder_3/dense_31/kernel/v
1:/2$Adam/patch_encoder_3/dense_31/bias/v
?:=
Δ2-Adam/patch_encoder_3/embedding_3/embeddings/v
A:?2+Adam/multi_head_attention_11/query/kernel/v
::8	2)Adam/multi_head_attention_11/query/bias/v
?:=2)Adam/multi_head_attention_11/key/kernel/v
8:6	2'Adam/multi_head_attention_11/key/bias/v
A:?2+Adam/multi_head_attention_11/value/kernel/v
::8	2)Adam/multi_head_attention_11/value/bias/v
L:J26Adam/multi_head_attention_11/attention_output/kernel/v
A:?24Adam/multi_head_attention_11/attention_output/bias/v
	J
Const
J	
Const_1Ϊ
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56895ξοP’M
F’C
96
normalization_3_input?????????ΰΰ
p 

 
ͺ "/’,
%"
0?????????ΰΰ
 ΰ
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_56915
ξο½ΎΏP’M
F’C
96
normalization_3_input?????????ΰΰ
p

 
ͺ "/’,
%"
0?????????ΰΰ
 Κ
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_58971zξοA’>
7’4
*'
inputs?????????ΰΰ
p 

 
ͺ "/’,
%"
0?????????ΰΰ
 Ρ
L__inference_Data_Augmentation_layer_call_and_return_conditional_losses_59325
ξο½ΎΏA’>
7’4
*'
inputs?????????ΰΰ
p

 
ͺ "/’,
%"
0?????????ΰΰ
 ±
1__inference_Data_Augmentation_layer_call_fn_56428|ξοP’M
F’C
96
normalization_3_input?????????ΰΰ
p 

 
ͺ ""?????????ΰΰΈ
1__inference_Data_Augmentation_layer_call_fn_56881
ξο½ΎΏP’M
F’C
96
normalization_3_input?????????ΰΰ
p

 
ͺ ""?????????ΰΰ’
1__inference_Data_Augmentation_layer_call_fn_58945mξοA’>
7’4
*'
inputs?????????ΰΰ
p 

 
ͺ ""?????????ΰΰ¨
1__inference_Data_Augmentation_layer_call_fn_58960s
ξο½ΎΏA’>
7’4
*'
inputs?????????ΰΰ
p

 
ͺ ""?????????ΰΰΛ
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56382~K’H
A’>
41
resizing_3_input?????????ΰΰ
p 

 
ͺ "/’,
%"
0?????????ΰΰ
 Λ
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_56388~K’H
A’>
41
resizing_3_input?????????ΰΰ
p

 
ͺ "/’,
%"
0?????????ΰΰ
 Α
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_58926tA’>
7’4
*'
inputs?????????ΰΰ
p 

 
ͺ "/’,
%"
0?????????ΰΰ
 Α
I__inference_Resize_Rescale_layer_call_and_return_conditional_losses_58936tA’>
7’4
*'
inputs?????????ΰΰ
p

 
ͺ "/’,
%"
0?????????ΰΰ
 £
.__inference_Resize_Rescale_layer_call_fn_56343qK’H
A’>
41
resizing_3_input?????????ΰΰ
p 

 
ͺ ""?????????ΰΰ£
.__inference_Resize_Rescale_layer_call_fn_56376qK’H
A’>
41
resizing_3_input?????????ΰΰ
p

 
ͺ ""?????????ΰΰ
.__inference_Resize_Rescale_layer_call_fn_58911gA’>
7’4
*'
inputs?????????ΰΰ
p 

 
ͺ ""?????????ΰΰ
.__inference_Resize_Rescale_layer_call_fn_58916gA’>
7’4
*'
inputs?????????ΰΰ
p

 
ͺ ""?????????ΰΰΒ
 __inference__wrapped_model_56314*ξο©ͺ«=>¬­?―°±²³XY`aop:’7
0’-
+(
input_4?????????ΰΰ
ͺ "3ͺ0
.
dense_35"
dense_35?????????Ϋ
A__inference_add_22_layer_call_and_return_conditional_losses_59551f’c
\’Y
WT
(%
inputs/0?????????Δ
(%
inputs/1?????????Δ
ͺ "+’(
!
0?????????Δ
 ³
&__inference_add_22_layer_call_fn_59545f’c
\’Y
WT
(%
inputs/0?????????Δ
(%
inputs/1?????????Δ
ͺ "?????????ΔΫ
A__inference_add_23_layer_call_and_return_conditional_losses_59728f’c
\’Y
WT
(%
inputs/0?????????Δ
(%
inputs/1?????????Δ
ͺ "+’(
!
0?????????Δ
 ³
&__inference_add_23_layer_call_fn_59722f’c
\’Y
WT
(%
inputs/0?????????Δ
(%
inputs/1?????????Δ
ͺ "?????????Δ―
C__inference_dense_32_layer_call_and_return_conditional_losses_59622h`a5’2
+’(
&#
inputs?????????Δ
ͺ "+’(
!
0?????????Δ
 
(__inference_dense_32_layer_call_fn_59591[`a5’2
+’(
&#
inputs?????????Δ
ͺ "?????????Δ―
C__inference_dense_33_layer_call_and_return_conditional_losses_59689hop5’2
+’(
&#
inputs?????????Δ
ͺ "+’(
!
0?????????Δ
 
(__inference_dense_33_layer_call_fn_59658[op5’2
+’(
&#
inputs?????????Δ
ͺ "?????????Δ¨
C__inference_dense_34_layer_call_and_return_conditional_losses_59759a1’.
'’$
"
inputs?????????Δ
ͺ "&’#

0?????????
 
(__inference_dense_34_layer_call_fn_59748T1’.
'’$
"
inputs?????????Δ
ͺ "?????????¦
C__inference_dense_35_layer_call_and_return_conditional_losses_59806_0’-
&’#
!
inputs?????????
ͺ "%’"

0?????????
 ~
(__inference_dense_35_layer_call_fn_59795R0’-
&’#
!
inputs?????????
ͺ "?????????±
E__inference_dropout_25_layer_call_and_return_conditional_losses_59637h9’6
/’,
&#
inputs?????????Δ
p 
ͺ "+’(
!
0?????????Δ
 ±
E__inference_dropout_25_layer_call_and_return_conditional_losses_59649h9’6
/’,
&#
inputs?????????Δ
p
ͺ "+’(
!
0?????????Δ
 
*__inference_dropout_25_layer_call_fn_59627[9’6
/’,
&#
inputs?????????Δ
p 
ͺ "?????????Δ
*__inference_dropout_25_layer_call_fn_59632[9’6
/’,
&#
inputs?????????Δ
p
ͺ "?????????Δ±
E__inference_dropout_26_layer_call_and_return_conditional_losses_59704h9’6
/’,
&#
inputs?????????Δ
p 
ͺ "+’(
!
0?????????Δ
 ±
E__inference_dropout_26_layer_call_and_return_conditional_losses_59716h9’6
/’,
&#
inputs?????????Δ
p
ͺ "+’(
!
0?????????Δ
 
*__inference_dropout_26_layer_call_fn_59694[9’6
/’,
&#
inputs?????????Δ
p 
ͺ "?????????Δ
*__inference_dropout_26_layer_call_fn_59699[9’6
/’,
&#
inputs?????????Δ
p
ͺ "?????????Δ§
E__inference_dropout_27_layer_call_and_return_conditional_losses_59774^4’1
*’'
!
inputs?????????
p 
ͺ "&’#

0?????????
 §
E__inference_dropout_27_layer_call_and_return_conditional_losses_59786^4’1
*’'
!
inputs?????????
p
ͺ "&’#

0?????????
 
*__inference_dropout_27_layer_call_fn_59764Q4’1
*’'
!
inputs?????????
p 
ͺ "?????????
*__inference_dropout_27_layer_call_fn_59769Q4’1
*’'
!
inputs?????????
p
ͺ "?????????¨
D__inference_flatten_3_layer_call_and_return_conditional_losses_59739`5’2
+’(
&#
inputs?????????Δ
ͺ "'’$

0?????????Δ
 
)__inference_flatten_3_layer_call_fn_59733S5’2
+’(
&#
inputs?????????Δ
ͺ "?????????Δ½
Q__inference_layer_normalization_22_layer_call_and_return_conditional_losses_59426h=>5’2
+’(
&#
inputs?????????Δ
ͺ "+’(
!
0?????????Δ
 
6__inference_layer_normalization_22_layer_call_fn_59404[=>5’2
+’(
&#
inputs?????????Δ
ͺ "?????????Δ½
Q__inference_layer_normalization_23_layer_call_and_return_conditional_losses_59582hXY5’2
+’(
&#
inputs?????????Δ
ͺ "+’(
!
0?????????Δ
 
6__inference_layer_normalization_23_layer_call_fn_59560[XY5’2
+’(
&#
inputs?????????Δ
ͺ "?????????Δή
B__inference_model_3_layer_call_and_return_conditional_losses_57879*ξο©ͺ«=>¬­?―°±²³XY`aopB’?
8’5
+(
input_4?????????ΰΰ
p 

 
ͺ "%’"

0?????????
 δ
B__inference_model_3_layer_call_and_return_conditional_losses_579560ξο½ΎΏ©ͺ«=>¬­?―°±²³XY`aopB’?
8’5
+(
input_4?????????ΰΰ
p

 
ͺ "%’"

0?????????
 έ
B__inference_model_3_layer_call_and_return_conditional_losses_58282*ξο©ͺ«=>¬­?―°±²³XY`aopA’>
7’4
*'
inputs?????????ΰΰ
p 

 
ͺ "%’"

0?????????
 γ
B__inference_model_3_layer_call_and_return_conditional_losses_588490ξο½ΎΏ©ͺ«=>¬­?―°±²³XY`aopA’>
7’4
*'
inputs?????????ΰΰ
p

 
ͺ "%’"

0?????????
 Ά
'__inference_model_3_layer_call_fn_57308*ξο©ͺ«=>¬­?―°±²³XY`aopB’?
8’5
+(
input_4?????????ΰΰ
p 

 
ͺ "?????????Ό
'__inference_model_3_layer_call_fn_578080ξο½ΎΏ©ͺ«=>¬­?―°±²³XY`aopB’?
8’5
+(
input_4?????????ΰΰ
p

 
ͺ "?????????΅
'__inference_model_3_layer_call_fn_58017*ξο©ͺ«=>¬­?―°±²³XY`aopA’>
7’4
*'
inputs?????????ΰΰ
p 

 
ͺ "?????????»
'__inference_model_3_layer_call_fn_580780ξο½ΎΏ©ͺ«=>¬­?―°±²³XY`aopA’>
7’4
*'
inputs?????????ΰΰ
p

 
ͺ "?????????
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_59505¬¬­?―°±²³k’h
a’^
%"
query?????????Δ
%"
value?????????Δ

 

 
p 
p 
ͺ "+’(
!
0?????????Δ
 
R__inference_multi_head_attention_11_layer_call_and_return_conditional_losses_59539¬¬­?―°±²³k’h
a’^
%"
query?????????Δ
%"
value?????????Δ

 

 
p 
p
ͺ "+’(
!
0?????????Δ
 Ϋ
7__inference_multi_head_attention_11_layer_call_fn_59448¬­?―°±²³k’h
a’^
%"
query?????????Δ
%"
value?????????Δ

 

 
p 
p 
ͺ "?????????ΔΫ
7__inference_multi_head_attention_11_layer_call_fn_59470¬­?―°±²³k’h
a’^
%"
query?????????Δ
%"
value?????????Δ

 

 
p 
p
ͺ "?????????ΔΑ
J__inference_patch_encoder_3_layer_call_and_return_conditional_losses_59395s©ͺ«<’9
2’/
-*
patch??????????????????
ͺ "+’(
!
0?????????Δ
 
/__inference_patch_encoder_3_layer_call_fn_59355f©ͺ«<’9
2’/
-*
patch??????????????????
ͺ "?????????ΔΈ
D__inference_patches_7_layer_call_and_return_conditional_losses_59344p9’6
/’,
*'
images?????????ΰΰ
ͺ "3’0
)&
0??????????????????
 
)__inference_patches_7_layer_call_fn_59330c9’6
/’,
*'
images?????????ΰΰ
ͺ "&#??????????????????Ό
H__inference_random_flip_3_layer_call_and_return_conditional_losses_59846p=’:
3’0
*'
inputs?????????ΰΰ
p 
ͺ "/’,
%"
0?????????ΰΰ
 ΐ
H__inference_random_flip_3_layer_call_and_return_conditional_losses_59957t½=’:
3’0
*'
inputs?????????ΰΰ
p
ͺ "/’,
%"
0?????????ΰΰ
 
-__inference_random_flip_3_layer_call_fn_59835c=’:
3’0
*'
inputs?????????ΰΰ
p 
ͺ ""?????????ΰΰ
-__inference_random_flip_3_layer_call_fn_59842g½=’:
3’0
*'
inputs?????????ΰΰ
p
ͺ ""?????????ΰΰΐ
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_59973p=’:
3’0
*'
inputs?????????ΰΰ
p 
ͺ "/’,
%"
0?????????ΰΰ
 Δ
L__inference_random_rotation_3_layer_call_and_return_conditional_losses_60091tΎ=’:
3’0
*'
inputs?????????ΰΰ
p
ͺ "/’,
%"
0?????????ΰΰ
 
1__inference_random_rotation_3_layer_call_fn_59962c=’:
3’0
*'
inputs?????????ΰΰ
p 
ͺ ""?????????ΰΰ
1__inference_random_rotation_3_layer_call_fn_59969gΎ=’:
3’0
*'
inputs?????????ΰΰ
p
ͺ ""?????????ΰΰΌ
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_60107p=’:
3’0
*'
inputs?????????ΰΰ
p 
ͺ "/’,
%"
0?????????ΰΰ
 ΐ
H__inference_random_zoom_3_layer_call_and_return_conditional_losses_60233tΏ=’:
3’0
*'
inputs?????????ΰΰ
p
ͺ "/’,
%"
0?????????ΰΰ
 
-__inference_random_zoom_3_layer_call_fn_60096c=’:
3’0
*'
inputs?????????ΰΰ
p 
ͺ ""?????????ΰΰ
-__inference_random_zoom_3_layer_call_fn_60103gΏ=’:
3’0
*'
inputs?????????ΰΰ
p
ͺ ""?????????ΰΰΆ
F__inference_rescaling_3_layer_call_and_return_conditional_losses_59830l9’6
/’,
*'
inputs?????????ΰΰ
ͺ "/’,
%"
0?????????ΰΰ
 
+__inference_rescaling_3_layer_call_fn_59822_9’6
/’,
*'
inputs?????????ΰΰ
ͺ ""?????????ΰΰ΅
E__inference_resizing_3_layer_call_and_return_conditional_losses_59817l9’6
/’,
*'
inputs?????????ΰΰ
ͺ "/’,
%"
0?????????ΰΰ
 
*__inference_resizing_3_layer_call_fn_59811_9’6
/’,
*'
inputs?????????ΰΰ
ͺ ""?????????ΰΰΠ
#__inference_signature_wrapper_58906¨*ξο©ͺ«=>¬­?―°±²³XY`aopE’B
’ 
;ͺ8
6
input_4+(
input_4?????????ΰΰ"3ͺ0
.
dense_35"
dense_35?????????