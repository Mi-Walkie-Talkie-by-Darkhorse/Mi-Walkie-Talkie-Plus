.class final Lcom/shenma/speechrecognition/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/shenma/speechrecognition/l;
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lcom/shenma/speechrecognition/l;

    invoke-direct {v3}, Lcom/shenma/speechrecognition/l;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shenma/speechrecognition/l;->a(Lcom/shenma/speechrecognition/l;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shenma/speechrecognition/l;->b(Lcom/shenma/speechrecognition/l;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/shenma/speechrecognition/l;->a(Lcom/shenma/speechrecognition/l;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v3, v1}, Lcom/shenma/speechrecognition/l;->b(Lcom/shenma/speechrecognition/l;Z)Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shenma/speechrecognition/l;->c(Lcom/shenma/speechrecognition/l;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shenma/speechrecognition/l;->d(Lcom/shenma/speechrecognition/l;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shenma/speechrecognition/l;->e(Lcom/shenma/speechrecognition/l;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-static {v3, v0}, Lcom/shenma/speechrecognition/l;->a(Lcom/shenma/speechrecognition/l;F)F

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shenma/speechrecognition/l;->f(Lcom/shenma/speechrecognition/l;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v3, v0}, Lcom/shenma/speechrecognition/l;->a(Lcom/shenma/speechrecognition/l;I)I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/shenma/speechrecognition/l;->g(Lcom/shenma/speechrecognition/l;Ljava/lang/String;)Ljava/lang/String;

    return-object v3

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public a(I)[Lcom/shenma/speechrecognition/l;
    .locals 1

    new-array v0, p1, [Lcom/shenma/speechrecognition/l;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/shenma/speechrecognition/s;->a(Landroid/os/Parcel;)Lcom/shenma/speechrecognition/l;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/shenma/speechrecognition/s;->a(I)[Lcom/shenma/speechrecognition/l;

    move-result-object v0

    return-object v0
.end method
