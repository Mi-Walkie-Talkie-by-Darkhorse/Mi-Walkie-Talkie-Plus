.class final Lcom/ifengyu/intercom/b/z$1;
.super Ljava/lang/Object;
.source "PermissionUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/b/z;->a(Landroid/content/Context;I[Ljava/lang/String;[I)Z
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

    iput-object p1, p0, Lcom/ifengyu/intercom/b/z$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/b/z$1;->a:Landroid/content/Context;

    instance-of v0, v0, Lcom/ifengyu/intercom/ui/activity/PermissionActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/b/z$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/ifengyu/intercom/b/z$1;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/b/d;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/b/z$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ifengyu/intercom/b/f;->a(Landroid/content/Context;)V

    return-void
.end method
