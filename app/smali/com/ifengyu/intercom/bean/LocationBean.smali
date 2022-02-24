.class public Lcom/ifengyu/intercom/bean/LocationBean;
.super Ljava/lang/Object;
.source "LocationBean.java"


# instance fields
.field public altitude:I

.field public latitude:D

.field public longitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    .line 3
    iput-wide p3, p0, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/ifengyu/intercom/bean/LocationBean;->altitude:I

    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide p1, p0, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    .line 7
    iput-wide p3, p0, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    .line 8
    iput p5, p0, Lcom/ifengyu/intercom/bean/LocationBean;->altitude:I

    return-void
.end method
