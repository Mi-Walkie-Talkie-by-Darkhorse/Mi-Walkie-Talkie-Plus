.class Lcom/shenma/speechrecognition/v;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shenma/speechrecognition/ac;

    invoke-direct {v0}, Lcom/shenma/speechrecognition/ac;-><init>()V

    sput-object v0, Lcom/shenma/speechrecognition/v;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.1"

    iput-object v0, p0, Lcom/shenma/speechrecognition/v;->a:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/shenma/speechrecognition/v;->c:Ljava/lang/String;

    const-string v0, "opus"

    iput-object v0, p0, Lcom/shenma/speechrecognition/v;->d:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/shenma/speechrecognition/v;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/shenma/speechrecognition/c;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/shenma/speechrecognition/v;->f:Ljava/lang/String;

    const-string v0, "json"

    iput-object v0, p0, Lcom/shenma/speechrecognition/v;->g:Ljava/lang/String;

    const-string v0, "1"

    iput-object v0, p0, Lcom/shenma/speechrecognition/v;->h:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/shenma/speechrecognition/v;->i:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/shenma/speechrecognition/v;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/shenma/speechrecognition/v;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/shenma/speechrecognition/v;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/shenma/speechrecognition/v;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/shenma/speechrecognition/v;->l:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/shenma/speechrecognition/v;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/shenma/speechrecognition/v;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/shenma/speechrecognition/v;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/shenma/speechrecognition/v;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/shenma/speechrecognition/v;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/shenma/speechrecognition/v;->j:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 3

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v0, "proto"

    iget-object v2, p0, Lcom/shenma/speechrecognition/v;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "platform"

    iget-object v2, p0, Lcom/shenma/speechrecognition/v;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "encoded"

    iget-object v2, p0, Lcom/shenma/speechrecognition/v;->c:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "encoder"

    iget-object v2, p0, Lcom/shenma/speechrecognition/v;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "bandmode"

    iget-object v2, p0, Lcom/shenma/speechrecognition/v;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "quality"

    iget-object v2, p0, Lcom/shenma/speechrecognition/v;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "format"

    iget-object v2, p0, Lcom/shenma/speechrecognition/v;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "partial"

    iget-object v2, p0, Lcom/shenma/speechrecognition/v;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "confidence"

    iget-object v2, p0, Lcom/shenma/speechrecognition/v;->i:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "network"

    iget-object v2, p0, Lcom/shenma/speechrecognition/v;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceid"

    iget-object v2, p0, Lcom/shenma/speechrecognition/v;->l:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "params"

    iget-object v2, p0, Lcom/shenma/speechrecognition/v;->m:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "url"

    iget-object v2, p0, Lcom/shenma/speechrecognition/v;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/speechrecognition/v;->k:Ljava/lang/String;

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/speechrecognition/v;->b:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/shenma/speechrecognition/v;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/v;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/v;->m:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/v;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/v;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
