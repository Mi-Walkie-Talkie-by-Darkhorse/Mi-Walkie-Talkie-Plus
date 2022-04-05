.class final Lcom/umeng/commonsdk/UMConfigure$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/UMConfigure;->getOaid(Landroid/content/Context;Lcom/umeng/commonsdk/listener/OnGetOaidListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/umeng/commonsdk/UMConfigure$4;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/umeng/commonsdk/UMConfigure$4;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/pro/z;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->access$000()Lcom/umeng/commonsdk/listener/OnGetOaidListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->access$000()Lcom/umeng/commonsdk/listener/OnGetOaidListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/umeng/commonsdk/listener/OnGetOaidListener;->onGetOaid(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
