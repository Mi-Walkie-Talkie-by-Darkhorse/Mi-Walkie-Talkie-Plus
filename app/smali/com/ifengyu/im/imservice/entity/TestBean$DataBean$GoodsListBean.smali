.class public Lcom/ifengyu/im/imservice/entity/TestBean$DataBean$GoodsListBean;
.super Ljava/lang/Object;
.source "TestBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/im/imservice/entity/TestBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GoodsListBean"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private good_header:Ljava/lang/String;

.field private good_name:Ljava/lang/String;

.field private good_price:I

.field private id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/TestBean$DataBean$GoodsListBean;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getGood_header()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/TestBean$DataBean$GoodsListBean;->good_header:Ljava/lang/String;

    return-object v0
.end method

.method public getGood_name()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/entity/TestBean$DataBean$GoodsListBean;->good_name:Ljava/lang/String;

    return-object v0
.end method

.method public getGood_price()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/im/imservice/entity/TestBean$DataBean$GoodsListBean;->good_price:I

    return v0
.end method

.method public getId()J
    .locals 2

    iget-wide v0, p0, Lcom/ifengyu/im/imservice/entity/TestBean$DataBean$GoodsListBean;->id:J

    return-wide v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/TestBean$DataBean$GoodsListBean;->content:Ljava/lang/String;

    return-void
.end method

.method public setGood_header(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/TestBean$DataBean$GoodsListBean;->good_header:Ljava/lang/String;

    return-void
.end method

.method public setGood_name(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/im/imservice/entity/TestBean$DataBean$GoodsListBean;->good_name:Ljava/lang/String;

    return-void
.end method

.method public setGood_price(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/im/imservice/entity/TestBean$DataBean$GoodsListBean;->good_price:I

    return-void
.end method

.method public setId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/ifengyu/im/imservice/entity/TestBean$DataBean$GoodsListBean;->id:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v2, 0x27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoodsListBean{good_header=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/entity/TestBean$DataBean$GoodsListBean;->good_header:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", good_name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/entity/TestBean$DataBean$GoodsListBean;->good_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", content=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/im/imservice/entity/TestBean$DataBean$GoodsListBean;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", good_price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/im/imservice/entity/TestBean$DataBean$GoodsListBean;->good_price:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/ifengyu/im/imservice/entity/TestBean$DataBean$GoodsListBean;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
