.class public Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DiscoveryArticleMeta"
.end annotation


# instance fields
.field private detail_url:Ljava/lang/String;

.field private first_published_at:Ljava/util/Date;

.field private html_url:Ljava/lang/String;

.field private slug:Ljava/lang/String;

.field final synthetic this$0:Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;->this$0:Lcom/ifengyu/intercom/bean/DiscoveryArticleBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDetail_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;->detail_url:Ljava/lang/String;

    return-object v0
.end method

.method public getFirst_published_at()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;->first_published_at:Ljava/util/Date;

    return-object v0
.end method

.method public getHtml_url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;->html_url:Ljava/lang/String;

    return-object v0
.end method

.method public getSlug()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;->slug:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setDetail_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;->detail_url:Ljava/lang/String;

    return-void
.end method

.method public setFirst_published_at(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;->first_published_at:Ljava/util/Date;

    return-void
.end method

.method public setHtml_url(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;->html_url:Ljava/lang/String;

    return-void
.end method

.method public setSlug(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;->slug:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;->type:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiscoveryArticleMeta{type=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", detail_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;->detail_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", html_url=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;->html_url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", slug=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;->slug:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", first_published_at="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/bean/DiscoveryArticleBean$DiscoveryArticleMeta;->first_published_at:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
