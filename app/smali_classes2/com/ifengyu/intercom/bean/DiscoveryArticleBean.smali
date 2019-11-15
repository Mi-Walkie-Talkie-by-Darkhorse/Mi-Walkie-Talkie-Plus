.class public Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;
.super Ljava/lang/Object;
.source "DiscoveryArticleBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleHeaderImageUrl;,
        Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;
    }
.end annotation


# instance fields
.field private excerpt:Ljava/lang/String;

.field private header_image_url:Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleHeaderImageUrl;

.field private id:I

.field private meta:Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExcerpt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->excerpt:Ljava/lang/String;

    return-object v0
.end method

.method public getHeader_image_url()Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleHeaderImageUrl;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->header_image_url:Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleHeaderImageUrl;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->id:I

    return v0
.end method

.method public getMeta()Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->meta:Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setExcerpt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->excerpt:Ljava/lang/String;

    return-void
.end method

.method public setHeader_image_url(Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleHeaderImageUrl;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->header_image_url:Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleHeaderImageUrl;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->id:I

    return-void
.end method

.method public setMeta(Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->meta:Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->title:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiscoveryArticleBean{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", meta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->meta:Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", excerpt=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->excerpt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", header_image_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;->header_image_url:Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleHeaderImageUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
