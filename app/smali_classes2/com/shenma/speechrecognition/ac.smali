.class final Lcom/shenma/speechrecognition/ac;
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
.method public a(Landroid/os/Parcel;)Lcom/shenma/speechrecognition/v;
    .locals 2

    new-instance v0, Lcom/shenma/speechrecognition/v;

    invoke-direct {v0}, Lcom/shenma/speechrecognition/v;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/v;->a(Lcom/shenma/speechrecognition/v;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/v;->b(Lcom/shenma/speechrecognition/v;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/v;->c(Lcom/shenma/speechrecognition/v;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/v;->d(Lcom/shenma/speechrecognition/v;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/shenma/speechrecognition/v;->e(Lcom/shenma/speechrecognition/v;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public a(I)[Lcom/shenma/speechrecognition/v;
    .locals 1

    new-array v0, p1, [Lcom/shenma/speechrecognition/v;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/shenma/speechrecognition/ac;->a(Landroid/os/Parcel;)Lcom/shenma/speechrecognition/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/shenma/speechrecognition/ac;->a(I)[Lcom/shenma/speechrecognition/v;

    move-result-object v0

    return-object v0
.end method
