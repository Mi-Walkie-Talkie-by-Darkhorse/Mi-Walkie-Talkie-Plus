.class public Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;
.super Lcom/sina/weibo/sdk/api/BaseMediaObject;
.source "BusinessLinkCardPageObject.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public g:[Ljava/lang/String;

.field public h:[Ljava/lang/String;

.field public i:[B

.field public j:[B

.field public k:[B

.field public l:[B

.field public m:[B

.field public n:[B

.field public o:[B

.field public p:[B

.field public q:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;-><init>()V

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->g:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/16 v1, 0x9

    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;-><init>()V

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->g:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->h:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->g:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->h:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->i:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->j:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->k:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->l:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->m:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->n:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->o:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->p:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->q:[B

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Z
    .locals 1

    invoke-super {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->g:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->h:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->i:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->j:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->k:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->l:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->m:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->n:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->o:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->p:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/BusinessLinkCardPageObject;->q:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
