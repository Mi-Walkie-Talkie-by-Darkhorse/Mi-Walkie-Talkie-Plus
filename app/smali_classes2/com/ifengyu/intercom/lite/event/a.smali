.class public Lcom/ifengyu/intercom/lite/event/a;
.super Ljava/lang/Object;
.source "ConnectEvent.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/lite/event/a;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/lite/event/a;->a:I

    return v0
.end method
