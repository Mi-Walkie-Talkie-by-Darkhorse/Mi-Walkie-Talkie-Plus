.class public Lcom/ifengyu/intercom/bean/LocationBean;
.super Ljava/lang/Object;
.source "LocationBean.java"


# instance fields
.field public altitude:I

.field public latitude:D

.field public longitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    iput-wide p3, p0, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/bean/LocationBean;->altitude:I

    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/ifengyu/intercom/bean/LocationBean;->latitude:D

    iput-wide p3, p0, Lcom/ifengyu/intercom/bean/LocationBean;->longitude:D

    iput p5, p0, Lcom/ifengyu/intercom/bean/LocationBean;->altitude:I

    return-void
.end method
