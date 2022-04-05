.class Lcom/sina/weibo/sdk/api/CmdObject$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/api/CmdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sina/weibo/sdk/api/CmdObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/CmdObject;
    .locals 1

    new-instance v0, Lcom/sina/weibo/sdk/api/CmdObject;

    invoke-direct {v0, p1}, Lcom/sina/weibo/sdk/api/CmdObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/CmdObject$a;->createFromParcel(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/CmdObject;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sina/weibo/sdk/api/CmdObject;
    .locals 0

    new-array p1, p1, [Lcom/sina/weibo/sdk/api/CmdObject;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/CmdObject$a;->newArray(I)[Lcom/sina/weibo/sdk/api/CmdObject;

    move-result-object p1

    return-object p1
.end method
