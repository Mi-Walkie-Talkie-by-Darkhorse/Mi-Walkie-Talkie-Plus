.class Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$2;
.super Ljava/lang/Object;
.source "SealBtEarGuide1Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$2;->a:Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$2;->a:Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$2;->a:Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;

    const v2, 0x7f09019f

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$2;->a:Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;

    const v1, 0x7f020167

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity;->d(I)V

    new-instance v0, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$2$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$2$1;-><init>(Lcom/ifengyu/intercom/ui/activity/SealBtEarGuide1Activity$2;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/ifengyu/intercom/b/ad;->a(Ljava/lang/Runnable;J)V

    return-void
.end method
