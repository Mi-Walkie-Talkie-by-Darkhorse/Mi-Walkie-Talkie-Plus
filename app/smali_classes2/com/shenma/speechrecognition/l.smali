.class Lcom/shenma/speechrecognition/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:F

.field private j:Ljava/lang/String;

.field private k:I

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/shenma/speechrecognition/s;

    invoke-direct {v0}, Lcom/shenma/speechrecognition/s;-><init>()V

    sput-object v0, Lcom/shenma/speechrecognition/l;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/shenma/speechrecognition/l;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/shenma/speechrecognition/l;->d:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/shenma/speechrecognition/l;->i:F

    const/4 v0, 0x4

    iput v0, p0, Lcom/shenma/speechrecognition/l;->k:I

    return-void
.end method

.method static synthetic a(Lcom/shenma/speechrecognition/l;F)F
    .locals 0

    iput p1, p0, Lcom/shenma/speechrecognition/l;->i:F

    return p1
.end method

.method static synthetic a(Lcom/shenma/speechrecognition/l;I)I
    .locals 0

    iput p1, p0, Lcom/shenma/speechrecognition/l;->k:I

    return p1
.end method

.method static synthetic a(Lcom/shenma/speechrecognition/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/shenma/speechrecognition/l;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/shenma/speechrecognition/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/speechrecognition/l;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/shenma/speechrecognition/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/shenma/speechrecognition/l;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/shenma/speechrecognition/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/speechrecognition/l;->d:Z

    return p1
.end method

.method static synthetic c(Lcom/shenma/speechrecognition/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/shenma/speechrecognition/l;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/shenma/speechrecognition/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/shenma/speechrecognition/l;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/shenma/speechrecognition/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/shenma/speechrecognition/l;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lcom/shenma/speechrecognition/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/shenma/speechrecognition/l;->j:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic g(Lcom/shenma/speechrecognition/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/shenma/speechrecognition/l;->l:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shenma/speechrecognition/l;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/speechrecognition/l;->a:Ljava/lang/String;

    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/speechrecognition/l;->c:Z

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shenma/speechrecognition/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/speechrecognition/l;->b:Ljava/lang/String;

    return-void
.end method

.method b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/speechrecognition/l;->d:Z

    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/shenma/speechrecognition/l;->j:Ljava/lang/String;

    return-void
.end method

.method c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/shenma/speechrecognition/l;->h:Z

    return-void
.end method

.method c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/l;->c:Z

    return v0
.end method

.method d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/l;->d:Z

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method e()I
    .locals 1

    iget v0, p0, Lcom/shenma/speechrecognition/l;->k:I

    return v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shenma/speechrecognition/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shenma/speechrecognition/l;->f:Ljava/lang/String;

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shenma/speechrecognition/l;->g:Ljava/lang/String;

    return-object v0
.end method

.method i()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/l;->h:Z

    if-eqz v0, :cond_2

    const-string v0, "map"

    const-string v1, "cloud"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://temp-asr.sm.cn/gaode/"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "uc"

    const-string v1, "cloud"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http://temp-asr.sm.cn/"

    goto :goto_0

    :cond_1
    const-string v0, "http://temp-asr.sm.cn/cloud"

    goto :goto_0

    :cond_2
    const-string v0, "map"

    const-string v1, "cloud"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "http://asr.sm.cn/gaode"

    goto :goto_0

    :cond_3
    const-string v0, "uc"

    const-string v1, "cloud"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "http://asr.sm.cn/"

    goto :goto_0

    :cond_4
    const-string v0, "http://asr.sm.cn/cloud"

    goto :goto_0
.end method

.method j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shenma/speechrecognition/l;->j:Ljava/lang/String;

    return-object v0
.end method

.method k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/shenma/speechrecognition/l;->l:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/shenma/speechrecognition/l;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/l;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/l;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/shenma/speechrecognition/l;->d:Z

    if-eqz v0, :cond_1

    :goto_1
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/l;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/l;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/l;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/shenma/speechrecognition/l;->i:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/l;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/shenma/speechrecognition/l;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/shenma/speechrecognition/l;->l:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
