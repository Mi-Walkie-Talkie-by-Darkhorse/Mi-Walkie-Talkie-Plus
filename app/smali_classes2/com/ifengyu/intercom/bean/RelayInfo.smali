.class public Lcom/ifengyu/intercom/bean/RelayInfo;
.super Ljava/lang/Object;
.source "RelayInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private ch1:Lcom/ifengyu/intercom/bean/ChannelBean;

.field private ch2:Lcom/ifengyu/intercom/bean/ChannelBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/ifengyu/intercom/bean/RelayInfo;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/RelayInfo;->getCh1()Lcom/ifengyu/intercom/bean/ChannelBean;

    move-result-object v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/ifengyu/intercom/bean/RelayInfo;->ch1:Lcom/ifengyu/intercom/bean/ChannelBean;

    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/ifengyu/intercom/bean/RelayInfo;->ch1:Lcom/ifengyu/intercom/bean/ChannelBean;

    invoke-virtual {v2}, Lcom/ifengyu/intercom/bean/ChannelBean;->getNo()I

    move-result v2

    invoke-virtual {p1}, Lcom/ifengyu/intercom/bean/RelayInfo;->getCh1()Lcom/ifengyu/intercom/bean/ChannelBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/bean/ChannelBean;->getNo()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public getCh1()Lcom/ifengyu/intercom/bean/ChannelBean;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/bean/RelayInfo;->ch1:Lcom/ifengyu/intercom/bean/ChannelBean;

    return-object v0
.end method

.method public getCh2()Lcom/ifengyu/intercom/bean/ChannelBean;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/bean/RelayInfo;->ch2:Lcom/ifengyu/intercom/bean/ChannelBean;

    return-object v0
.end method

.method public setCh1(Lcom/ifengyu/intercom/bean/ChannelBean;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/bean/RelayInfo;->ch1:Lcom/ifengyu/intercom/bean/ChannelBean;

    return-void
.end method

.method public setCh2(Lcom/ifengyu/intercom/bean/ChannelBean;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/bean/RelayInfo;->ch2:Lcom/ifengyu/intercom/bean/ChannelBean;

    return-void
.end method
