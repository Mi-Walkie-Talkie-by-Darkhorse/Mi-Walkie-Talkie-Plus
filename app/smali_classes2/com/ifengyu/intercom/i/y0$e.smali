.class Lcom/ifengyu/intercom/i/y0$e;
.super Ljava/lang/Object;
.source "SharkBleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/i/y0;->v1(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ifengyu/intercom/i/y0;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/i/y0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/i/y0$e;->b:Lcom/ifengyu/intercom/i/y0;

    iput-object p2, p0, Lcom/ifengyu/intercom/i/y0$e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/i/y0$e;->b:Lcom/ifengyu/intercom/i/y0;

    iget-object v1, p0, Lcom/ifengyu/intercom/i/y0$e;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/i/y0;->g1(Ljava/lang/String;)V

    return-void
.end method
