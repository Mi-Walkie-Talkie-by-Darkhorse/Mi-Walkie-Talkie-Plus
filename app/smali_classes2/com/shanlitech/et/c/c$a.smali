.class Lcom/shanlitech/et/c/c$a;
.super Landroid/content/BroadcastReceiver;
.source "AlarmSchedule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shanlitech/et/c/c;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/shanlitech/et/c/c;


# direct methods
.method constructor <init>(Lcom/shanlitech/et/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shanlitech/et/c/c$a;->a:Lcom/shanlitech/et/c/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/shanlitech/et/c/c$a;->a:Lcom/shanlitech/et/c/c;

    invoke-static {p2}, Lcom/shanlitech/et/c/c;->a(Lcom/shanlitech/et/c/c;)Lcom/shanlitech/et/c/c$b;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/shanlitech/et/c/c$a;->a:Lcom/shanlitech/et/c/c;

    invoke-static {p2}, Lcom/shanlitech/et/c/c;->a(Lcom/shanlitech/et/c/c;)Lcom/shanlitech/et/c/c$b;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/shanlitech/et/c/c$b;->a(Landroid/content/Context;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/shanlitech/et/c/c$a;->a:Lcom/shanlitech/et/c/c;

    invoke-static {p1}, Lcom/shanlitech/et/c/c;->b(Lcom/shanlitech/et/c/c;)V

    return-void
.end method
