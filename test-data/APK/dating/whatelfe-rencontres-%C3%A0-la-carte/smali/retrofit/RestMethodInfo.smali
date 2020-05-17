.class final Lretrofit/RestMethodInfo;
.super Ljava/lang/Object;
.source "RestMethodInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/RestMethodInfo$RxSupport;,
        Lretrofit/RestMethodInfo$RequestType;,
        Lretrofit/RestMethodInfo$ResponseType;
    }
.end annotation


# static fields
.field private static final PARAM:Ljava/lang/String; = "[a-zA-Z][a-zA-Z0-9_-]*"

.field private static final PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

.field private static final PARAM_URL_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field contentTypeHeader:Ljava/lang/String;

.field headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lretrofit/client/Header;",
            ">;"
        }
    .end annotation
.end field

.field final isObservable:Z

.field isStreaming:Z

.field final isSynchronous:Z

.field loaded:Z

.field final method:Ljava/lang/reflect/Method;

.field requestHasBody:Z

.field requestMethod:Ljava/lang/String;

.field requestParamAnnotations:[Ljava/lang/annotation/Annotation;

.field requestQuery:Ljava/lang/String;

.field requestType:Lretrofit/RestMethodInfo$RequestType;

.field requestUrl:Ljava/lang/String;

.field requestUrlParamNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field responseObjectType:Ljava/lang/reflect/Type;

.field final responseType:Lretrofit/RestMethodInfo$ResponseType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit/RestMethodInfo;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    .line 62
    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit/RestMethodInfo;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 4
    .param p1, "method"    # Ljava/lang/reflect/Method;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean v2, p0, Lretrofit/RestMethodInfo;->loaded:Z

    .line 82
    sget-object v0, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    iput-object v0, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    .line 96
    iput-object p1, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    .line 97
    invoke-direct {p0}, Lretrofit/RestMethodInfo;->parseResponseType()Lretrofit/RestMethodInfo$ResponseType;

    move-result-object v0

    iput-object v0, p0, Lretrofit/RestMethodInfo;->responseType:Lretrofit/RestMethodInfo$ResponseType;

    .line 98
    iget-object v0, p0, Lretrofit/RestMethodInfo;->responseType:Lretrofit/RestMethodInfo$ResponseType;

    sget-object v3, Lretrofit/RestMethodInfo$ResponseType;->OBJECT:Lretrofit/RestMethodInfo$ResponseType;

    if-ne v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    .line 99
    iget-object v0, p0, Lretrofit/RestMethodInfo;->responseType:Lretrofit/RestMethodInfo$ResponseType;

    sget-object v3, Lretrofit/RestMethodInfo$ResponseType;->OBSERVABLE:Lretrofit/RestMethodInfo$ResponseType;

    if-ne v0, v3, :cond_1

    :goto_1
    iput-boolean v1, p0, Lretrofit/RestMethodInfo;->isObservable:Z

    .line 100
    return-void

    :cond_0
    move v0, v2

    .line 98
    goto :goto_0

    :cond_1
    move v1, v2

    .line 99
    goto :goto_1
.end method

.method private static getParameterUpperBound(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;
    .locals 5
    .param p0, "type"    # Ljava/lang/reflect/ParameterizedType;

    .prologue
    const/4 v4, 0x0

    .line 296
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 297
    .local v2, "types":[Ljava/lang/reflect/Type;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 298
    aget-object v1, v2, v0

    .line 299
    .local v1, "paramType":Ljava/lang/reflect/Type;
    instance-of v3, v1, Ljava/lang/reflect/WildcardType;

    if-eqz v3, :cond_0

    .line 300
    check-cast v1, Ljava/lang/reflect/WildcardType;

    .end local v1    # "paramType":Ljava/lang/reflect/Type;
    invoke-interface {v1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v4

    aput-object v3, v2, v0

    .line 297
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_1
    aget-object v3, v2, v4

    return-object v3
.end method

.method private varargs methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 103
    array-length v0, p2

    if-lez v0, :cond_0

    .line 104
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    .line 107
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private varargs parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;
    .locals 2
    .param p1, "index"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (parameter #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method private parseMethodAnnotations()V
    .locals 15

    .prologue
    .line 125
    iget-object v7, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v9

    array-length v10, v9

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v10, :cond_c

    aget-object v4, v9, v8

    .line 126
    .local v4, "methodAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v4}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    .line 127
    .local v0, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const/4 v5, 0x0

    .line 130
    .local v5, "methodInfo":Lretrofit/http/RestMethod;
    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v11

    array-length v12, v11

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v12, :cond_0

    aget-object v3, v11, v7

    .line 131
    .local v3, "innerAnnotation":Ljava/lang/annotation/Annotation;
    const-class v13, Lretrofit/http/RestMethod;

    invoke-interface {v3}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v14

    if-ne v13, v14, :cond_1

    move-object v5, v3

    .line 132
    check-cast v5, Lretrofit/http/RestMethod;

    .line 137
    .end local v3    # "innerAnnotation":Ljava/lang/annotation/Annotation;
    :cond_0
    if-eqz v5, :cond_4

    .line 138
    iget-object v7, p0, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 139
    const-string v7, "Only one HTTP method is allowed. Found: %s and %s."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 140
    invoke-interface {v5}, Lretrofit/http/RestMethod;->value()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 139
    invoke-direct {p0, v7, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 130
    .restart local v3    # "innerAnnotation":Ljava/lang/annotation/Annotation;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 144
    .end local v3    # "innerAnnotation":Ljava/lang/annotation/Annotation;
    :cond_2
    :try_start_0
    const-string v7, "value"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .local v6, "path":Ljava/lang/String;
    invoke-direct {p0, v6}, Lretrofit/RestMethodInfo;->parsePath(Ljava/lang/String;)V

    .line 150
    invoke-interface {v5}, Lretrofit/http/RestMethod;->value()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    .line 151
    invoke-interface {v5}, Lretrofit/http/RestMethod;->hasBody()Z

    move-result v7

    iput-boolean v7, p0, Lretrofit/RestMethodInfo;->requestHasBody:Z

    .line 125
    .end local v4    # "methodAnnotation":Ljava/lang/annotation/Annotation;
    .end local v6    # "path":Ljava/lang/String;
    :cond_3
    :goto_2
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    .line 145
    .restart local v4    # "methodAnnotation":Ljava/lang/annotation/Annotation;
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "Failed to extract String \'value\' from @%s annotation."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 146
    invoke-direct {p0, v7, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 152
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    const-class v7, Lretrofit/http/Headers;

    if-ne v0, v7, :cond_6

    .line 153
    check-cast v4, Lretrofit/http/Headers;

    .end local v4    # "methodAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v4}, Lretrofit/http/Headers;->value()[Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "headersToParse":[Ljava/lang/String;
    array-length v7, v2

    if-nez v7, :cond_5

    .line 155
    const-string v7, "@Headers annotation is empty."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 157
    :cond_5
    invoke-virtual {p0, v2}, Lretrofit/RestMethodInfo;->parseHeaders([Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lretrofit/RestMethodInfo;->headers:Ljava/util/List;

    goto :goto_2

    .line 158
    .end local v2    # "headersToParse":[Ljava/lang/String;
    .restart local v4    # "methodAnnotation":Ljava/lang/annotation/Annotation;
    :cond_6
    const-class v7, Lretrofit/http/Multipart;

    if-ne v0, v7, :cond_8

    .line 159
    iget-object v7, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v11, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    if-eq v7, v11, :cond_7

    .line 160
    const-string v7, "Only one encoding annotation is allowed."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 162
    :cond_7
    sget-object v7, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    iput-object v7, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    goto :goto_2

    .line 163
    :cond_8
    const-class v7, Lretrofit/http/FormUrlEncoded;

    if-ne v0, v7, :cond_a

    .line 164
    iget-object v7, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v11, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    if-eq v7, v11, :cond_9

    .line 165
    const-string v7, "Only one encoding annotation is allowed."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 167
    :cond_9
    sget-object v7, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    iput-object v7, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    goto :goto_2

    .line 168
    :cond_a
    const-class v7, Lretrofit/http/Streaming;

    if-ne v0, v7, :cond_3

    .line 169
    iget-object v7, p0, Lretrofit/RestMethodInfo;->responseObjectType:Ljava/lang/reflect/Type;

    const-class v11, Lretrofit/client/Response;

    if-eq v7, v11, :cond_b

    .line 170
    const-string v7, "Only methods having %s as data type are allowed to have @%s annotation."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-class v10, Lretrofit/client/Response;

    .line 172
    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-class v10, Lretrofit/http/Streaming;

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 170
    invoke-direct {p0, v7, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 174
    :cond_b
    const/4 v7, 0x1

    iput-boolean v7, p0, Lretrofit/RestMethodInfo;->isStreaming:Z

    goto/16 :goto_2

    .line 178
    .end local v0    # "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v4    # "methodAnnotation":Ljava/lang/annotation/Annotation;
    .end local v5    # "methodInfo":Lretrofit/http/RestMethod;
    :cond_c
    iget-object v7, p0, Lretrofit/RestMethodInfo;->requestMethod:Ljava/lang/String;

    if-nez v7, :cond_d

    .line 179
    const-string v7, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 181
    :cond_d
    iget-boolean v7, p0, Lretrofit/RestMethodInfo;->requestHasBody:Z

    if-nez v7, :cond_f

    .line 182
    iget-object v7, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v8, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    if-ne v7, v8, :cond_e

    .line 183
    const-string v7, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 186
    :cond_e
    iget-object v7, p0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v8, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    if-ne v7, v8, :cond_f

    .line 187
    const-string v7, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v7, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v7

    throw v7

    .line 191
    :cond_f
    return-void
.end method

.method private parseParameters()V
    .locals 18

    .prologue
    .line 310
    move-object/from16 v0, p0

    iget-object v14, v0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    .line 312
    .local v11, "methodParameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v14}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v8

    .line 313
    .local v8, "methodParameterAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    array-length v1, v8

    .line 314
    .local v1, "count":I
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lretrofit/RestMethodInfo;->isSynchronous:Z

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lretrofit/RestMethodInfo;->isObservable:Z

    if-nez v14, :cond_0

    .line 315
    add-int/lit8 v1, v1, -0x1

    .line 318
    :cond_0
    new-array v13, v1, [Ljava/lang/annotation/Annotation;

    .line 320
    .local v13, "requestParamAnnotations":[Ljava/lang/annotation/Annotation;
    const/4 v3, 0x0

    .line 321
    .local v3, "gotField":Z
    const/4 v4, 0x0

    .line 322
    .local v4, "gotPart":Z
    const/4 v2, 0x0

    .line 324
    .local v2, "gotBody":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_16

    .line 325
    aget-object v10, v11, v5

    .line 326
    .local v10, "methodParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    aget-object v9, v8, v5

    .line 327
    .local v9, "methodParameterAnnotations":[Ljava/lang/annotation/Annotation;
    if-eqz v9, :cond_14

    .line 328
    array-length v0, v9

    move/from16 v16, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_14

    aget-object v7, v9, v15

    .line 330
    .local v7, "methodParameterAnnotation":Ljava/lang/annotation/Annotation;
    invoke-interface {v7}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v6

    .line 332
    .local v6, "methodAnnotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    const-class v14, Lretrofit/http/Path;

    if-ne v6, v14, :cond_2

    move-object v14, v7

    .line 333
    check-cast v14, Lretrofit/http/Path;

    invoke-interface {v14}, Lretrofit/http/Path;->value()Ljava/lang/String;

    move-result-object v12

    .line 334
    .local v12, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lretrofit/RestMethodInfo;->validatePathName(ILjava/lang/String;)V

    .line 400
    .end local v12    # "name":Ljava/lang/String;
    :cond_1
    :goto_2
    aget-object v14, v13, v5

    if-eqz v14, :cond_12

    .line 401
    const-string v14, "Multiple Retrofit annotations found, only one allowed: @%s, @%s."

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aget-object v17, v13, v5

    .line 403
    invoke-interface/range {v17 .. v17}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    .line 404
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 401
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 335
    :cond_2
    const-class v14, Lretrofit/http/EncodedPath;

    if-ne v6, v14, :cond_3

    move-object v14, v7

    .line 336
    check-cast v14, Lretrofit/http/EncodedPath;

    invoke-interface {v14}, Lretrofit/http/EncodedPath;->value()Ljava/lang/String;

    move-result-object v12

    .line 337
    .restart local v12    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lretrofit/RestMethodInfo;->validatePathName(ILjava/lang/String;)V

    goto :goto_2

    .line 338
    .end local v12    # "name":Ljava/lang/String;
    :cond_3
    const-class v14, Lretrofit/http/Query;

    if-eq v6, v14, :cond_1

    .line 340
    const-class v14, Lretrofit/http/EncodedQuery;

    if-eq v6, v14, :cond_1

    .line 342
    const-class v14, Lretrofit/http/QueryMap;

    if-ne v6, v14, :cond_4

    .line 343
    const-class v14, Ljava/util/Map;

    invoke-virtual {v14, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 344
    const-string v14, "@QueryMap parameter type must be Map."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 347
    :cond_4
    const-class v14, Lretrofit/http/EncodedQueryMap;

    if-ne v6, v14, :cond_5

    .line 348
    const-class v14, Ljava/util/Map;

    invoke-virtual {v14, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 349
    const-string v14, "@EncodedQueryMap parameter type must be Map."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 352
    :cond_5
    const-class v14, Lretrofit/http/Header;

    if-eq v6, v14, :cond_1

    .line 354
    const-class v14, Lretrofit/http/Field;

    if-ne v6, v14, :cond_7

    .line 355
    move-object/from16 v0, p0

    iget-object v14, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v17, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v0, v17

    if-eq v14, v0, :cond_6

    .line 356
    const-string v14, "@Field parameters can only be used with form encoding."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 359
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 360
    :cond_7
    const-class v14, Lretrofit/http/FieldMap;

    if-ne v6, v14, :cond_a

    .line 361
    move-object/from16 v0, p0

    iget-object v14, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v17, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v0, v17

    if-eq v14, v0, :cond_8

    .line 362
    const-string v14, "@FieldMap parameters can only be used with form encoding."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 364
    :cond_8
    const-class v14, Ljava/util/Map;

    invoke-virtual {v14, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 365
    const-string v14, "@FieldMap parameter type must be Map."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 368
    :cond_9
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 369
    :cond_a
    const-class v14, Lretrofit/http/Part;

    if-ne v6, v14, :cond_c

    .line 370
    move-object/from16 v0, p0

    iget-object v14, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v17, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v0, v17

    if-eq v14, v0, :cond_b

    .line 371
    const-string v14, "@Part parameters can only be used with multipart encoding."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 374
    :cond_b
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 375
    :cond_c
    const-class v14, Lretrofit/http/PartMap;

    if-ne v6, v14, :cond_f

    .line 376
    move-object/from16 v0, p0

    iget-object v14, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v17, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v0, v17

    if-eq v14, v0, :cond_d

    .line 377
    const-string v14, "@PartMap parameters can only be used with multipart encoding."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 380
    :cond_d
    const-class v14, Ljava/util/Map;

    invoke-virtual {v14, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-nez v14, :cond_e

    .line 381
    const-string v14, "@PartMap parameter type must be Map."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 384
    :cond_e
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 385
    :cond_f
    const-class v14, Lretrofit/http/Body;

    if-ne v6, v14, :cond_13

    .line 386
    move-object/from16 v0, p0

    iget-object v14, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v17, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    move-object/from16 v0, v17

    if-eq v14, v0, :cond_10

    .line 387
    const-string v14, "@Body parameters cannot be used with form or multi-part encoding."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 390
    :cond_10
    if-eqz v2, :cond_11

    .line 391
    const-string v14, "Multiple @Body method annotations found."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 394
    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 406
    :cond_12
    aput-object v7, v13, v5

    .line 328
    :cond_13
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto/16 :goto_1

    .line 410
    .end local v6    # "methodAnnotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .end local v7    # "methodParameterAnnotation":Ljava/lang/annotation/Annotation;
    :cond_14
    aget-object v14, v13, v5

    if-nez v14, :cond_15

    .line 411
    const-string v14, "No Retrofit annotation found."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v14, v15}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 324
    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 415
    .end local v9    # "methodParameterAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v10    # "methodParameterType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v15, Lretrofit/RestMethodInfo$RequestType;->SIMPLE:Lretrofit/RestMethodInfo$RequestType;

    if-ne v14, v15, :cond_17

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lretrofit/RestMethodInfo;->requestHasBody:Z

    if-nez v14, :cond_17

    if-eqz v2, :cond_17

    .line 416
    const-string v14, "Non-body HTTP method cannot contain @Body or @TypedOutput."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 418
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v15, Lretrofit/RestMethodInfo$RequestType;->FORM_URL_ENCODED:Lretrofit/RestMethodInfo$RequestType;

    if-ne v14, v15, :cond_18

    if-nez v3, :cond_18

    .line 419
    const-string v14, "Form-encoded method must contain at least one @Field."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 421
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lretrofit/RestMethodInfo;->requestType:Lretrofit/RestMethodInfo$RequestType;

    sget-object v15, Lretrofit/RestMethodInfo$RequestType;->MULTIPART:Lretrofit/RestMethodInfo$RequestType;

    if-ne v14, v15, :cond_19

    if-nez v4, :cond_19

    .line 422
    const-string v14, "Multipart method must contain at least one @Part."

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v14

    throw v14

    .line 425
    :cond_19
    move-object/from16 v0, p0

    iput-object v13, v0, Lretrofit/RestMethodInfo;->requestParamAnnotations:[Ljava/lang/annotation/Annotation;

    .line 426
    return-void
.end method

.method private parsePath(Ljava/lang/String;)V
    .locals 9
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 195
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_1

    .line 196
    :cond_0
    const-string v5, "URL path \"%s\" must start with \'/\'."

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-direct {p0, v5, v6}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 200
    :cond_1
    move-object v3, p1

    .line 201
    .local v3, "url":Ljava/lang/String;
    const/4 v0, 0x0

    .line 202
    .local v0, "query":Ljava/lang/String;
    const/16 v5, 0x3f

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 203
    .local v2, "question":I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_2

    .line 204
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 205
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 208
    sget-object v5, Lretrofit/RestMethodInfo;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 209
    .local v1, "queryParamMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 210
    const-string v5, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-direct {p0, v5, v6}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 215
    .end local v1    # "queryParamMatcher":Ljava/util/regex/Matcher;
    :cond_2
    invoke-static {p1}, Lretrofit/RestMethodInfo;->parsePathParameters(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v4

    .line 217
    .local v4, "urlParams":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object v3, p0, Lretrofit/RestMethodInfo;->requestUrl:Ljava/lang/String;

    .line 218
    iput-object v4, p0, Lretrofit/RestMethodInfo;->requestUrlParamNames:Ljava/util/Set;

    .line 219
    iput-object v0, p0, Lretrofit/RestMethodInfo;->requestQuery:Ljava/lang/String;

    .line 220
    return-void
.end method

.method static parsePathParameters(Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    sget-object v2, Lretrofit/RestMethodInfo;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 445
    .local v0, "m":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 446
    .local v1, "patterns":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 449
    :cond_0
    return-object v1
.end method

.method private parseResponseType()Lretrofit/RestMethodInfo$ResponseType;
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 245
    iget-object v9, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 248
    .local v6, "returnType":Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    .line 249
    .local v3, "lastArgType":Ljava/lang/reflect/Type;
    const/4 v2, 0x0

    .line 250
    .local v2, "lastArgClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v9, p0, Lretrofit/RestMethodInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 251
    .local v4, "parameterTypes":[Ljava/lang/reflect/Type;
    array-length v9, v4

    if-lez v9, :cond_1

    .line 252
    array-length v9, v4

    add-int/lit8 v9, v9, -0x1

    aget-object v7, v4, v9

    .line 253
    .local v7, "typeToCheck":Ljava/lang/reflect/Type;
    move-object v3, v7

    .line 254
    instance-of v9, v7, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_0

    .line 255
    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    .end local v7    # "typeToCheck":Ljava/lang/reflect/Type;
    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 257
    .restart local v7    # "typeToCheck":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v9, v7, Ljava/lang/Class;

    if-eqz v9, :cond_1

    move-object v2, v7

    .line 258
    check-cast v2, Ljava/lang/Class;

    .line 262
    .end local v7    # "typeToCheck":Ljava/lang/reflect/Type;
    :cond_1
    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v6, v9, :cond_2

    move v1, v0

    .line 263
    .local v1, "hasReturnType":Z
    :goto_0
    if-eqz v2, :cond_3

    const-class v9, Lretrofit/Callback;

    invoke-virtual {v9, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 266
    .local v0, "hasCallback":Z
    :goto_1
    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    .line 267
    const-string v9, "Must have return type or Callback as last argument, not both."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v9, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    .end local v0    # "hasCallback":Z
    .end local v1    # "hasReturnType":Z
    :cond_2
    move v1, v8

    .line 262
    goto :goto_0

    .restart local v1    # "hasReturnType":Z
    :cond_3
    move v0, v8

    .line 263
    goto :goto_1

    .line 269
    .restart local v0    # "hasCallback":Z
    :cond_4
    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 270
    const-string v9, "Must have either a return type or Callback as last argument."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v9, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8

    .line 273
    :cond_5
    if-eqz v1, :cond_7

    .line 274
    sget-boolean v8, Lretrofit/Platform;->HAS_RX_JAVA:Z

    if-eqz v8, :cond_6

    .line 275
    invoke-static {v6}, Lretrofit/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v5

    .line 276
    .local v5, "rawReturnType":Ljava/lang/Class;
    invoke-static {v5}, Lretrofit/RestMethodInfo$RxSupport;->isObservable(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 277
    invoke-static {v6, v5}, Lretrofit/RestMethodInfo$RxSupport;->getObservableType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v6

    move-object v8, v6

    .line 278
    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v8}, Lretrofit/RestMethodInfo;->getParameterUpperBound(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v8

    iput-object v8, p0, Lretrofit/RestMethodInfo;->responseObjectType:Ljava/lang/reflect/Type;

    .line 279
    sget-object v8, Lretrofit/RestMethodInfo$ResponseType;->OBSERVABLE:Lretrofit/RestMethodInfo$ResponseType;

    .line 289
    .end local v5    # "rawReturnType":Ljava/lang/Class;
    :goto_2
    return-object v8

    .line 282
    :cond_6
    iput-object v6, p0, Lretrofit/RestMethodInfo;->responseObjectType:Ljava/lang/reflect/Type;

    .line 283
    sget-object v8, Lretrofit/RestMethodInfo$ResponseType;->OBJECT:Lretrofit/RestMethodInfo$ResponseType;

    goto :goto_2

    .line 286
    :cond_7
    invoke-static {v3}, Lretrofit/Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lretrofit/Callback;

    invoke-static {v3, v9, v10}, Lretrofit/Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 287
    instance-of v9, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_8

    move-object v8, v3

    .line 288
    check-cast v8, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v8}, Lretrofit/RestMethodInfo;->getParameterUpperBound(Ljava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v8

    iput-object v8, p0, Lretrofit/RestMethodInfo;->responseObjectType:Ljava/lang/reflect/Type;

    .line 289
    sget-object v8, Lretrofit/RestMethodInfo$ResponseType;->VOID:Lretrofit/RestMethodInfo$ResponseType;

    goto :goto_2

    .line 292
    :cond_8
    const-string v9, "Last parameter must be of type Callback<X> or Callback<? super X>."

    new-array v8, v8, [Ljava/lang/Object;

    invoke-direct {p0, v9, v8}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v8

    throw v8
.end method

.method private validatePathName(ILjava/lang/String;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 429
    sget-object v0, Lretrofit/RestMethodInfo;->PARAM_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    const-string v0, "@Path parameter name must match %s. Found: %s"

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Lretrofit/RestMethodInfo;->PARAM_URL_REGEX:Ljava/util/regex/Pattern;

    .line 431
    invoke-virtual {v2}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    .line 430
    invoke-direct {p0, p1, v0, v1}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 434
    :cond_0
    iget-object v0, p0, Lretrofit/RestMethodInfo;->requestUrlParamNames:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 435
    const-string v0, "URL \"%s\" does not contain \"{%s}\"."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lretrofit/RestMethodInfo;->requestUrl:Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object p2, v1, v4

    invoke-direct {p0, p1, v0, v1}, Lretrofit/RestMethodInfo;->parameterError(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 437
    :cond_1
    return-void
.end method


# virtual methods
.method declared-synchronized init()V
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lretrofit/RestMethodInfo;->loaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    monitor-exit p0

    return-void

    .line 117
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lretrofit/RestMethodInfo;->parseMethodAnnotations()V

    .line 118
    invoke-direct {p0}, Lretrofit/RestMethodInfo;->parseParameters()V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit/RestMethodInfo;->loaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method parseHeaders([Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "headers"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lretrofit/client/Header;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .local v2, "headerList":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    array-length v7, p1

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v1, p1, v5

    .line 225
    .local v1, "header":Ljava/lang/String;
    const/16 v8, 0x3a

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 226
    .local v0, "colon":I
    const/4 v8, -0x1

    if-eq v0, v8, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v0, v8, :cond_1

    .line 227
    :cond_0
    const-string v5, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v6

    invoke-direct {p0, v5, v7}, Lretrofit/RestMethodInfo;->methodError(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5

    .line 230
    :cond_1
    invoke-virtual {v1, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "headerName":Ljava/lang/String;
    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, "headerValue":Ljava/lang/String;
    const-string v8, "Content-Type"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 233
    iput-object v4, p0, Lretrofit/RestMethodInfo;->contentTypeHeader:Ljava/lang/String;

    .line 224
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 235
    :cond_2
    new-instance v8, Lretrofit/client/Header;

    invoke-direct {v8, v3, v4}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 238
    .end local v0    # "colon":I
    .end local v1    # "header":Ljava/lang/String;
    .end local v3    # "headerName":Ljava/lang/String;
    .end local v4    # "headerValue":Ljava/lang/String;
    :cond_3
    return-object v2
.end method
