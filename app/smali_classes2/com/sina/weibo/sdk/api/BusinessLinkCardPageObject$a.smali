.class Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject$a;
.super Ljava/lang/Object;
.source "BusinessLinkCardPageObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;
    .locals 1

    .line 2
    new-instance v0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;

    invoke-direct {v0, p1}, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject$a;->createFromParcel(Landroid/os/Parcel;)Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject$a;->newArray(I)[Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;

    move-result-object p1

    return-object p1
.end method
