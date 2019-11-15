.class public Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;
.super Landroid/app/Fragment;
.source "ErrorDialogManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/util/ErrorDialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HoneycombManagerFragment"
.end annotation


# instance fields
.field protected a:Z

.field protected b:Landroid/os/Bundle;

.field private c:Lde/greenrobot/event/c;

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventMainThread(Lde/greenrobot/event/util/d;)V
    .locals 4

    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->d:Ljava/lang/Object;

    invoke-static {v0, p1}, Lde/greenrobot/event/util/ErrorDialogManager;->a(Ljava/lang/Object;Lde/greenrobot/event/util/d;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lde/greenrobot/event/util/ErrorDialogManager;->a(Lde/greenrobot/event/util/d;)V

    invoke-virtual {p0}, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    const-string v0, "de.greenrobot.eventbus.error_dialog"

    invoke-virtual {v1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_2
    sget-object v0, Lde/greenrobot/event/util/ErrorDialogManager;->a:Lde/greenrobot/event/util/b;

    iget-boolean v2, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->a:Z

    iget-object v3, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v2, v3}, Lde/greenrobot/event/util/b;->a(Lde/greenrobot/event/util/d;ZLandroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    if-eqz v0, :cond_0

    const-string v2, "de.greenrobot.eventbus.error_dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->c:Lde/greenrobot/event/c;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->d(Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-object v0, Lde/greenrobot/event/util/ErrorDialogManager;->a:Lde/greenrobot/event/util/b;

    iget-object v0, v0, Lde/greenrobot/event/util/b;->a:Lde/greenrobot/event/util/a;

    invoke-virtual {v0}, Lde/greenrobot/event/util/a;->a()Lde/greenrobot/event/c;

    move-result-object v0

    iput-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->c:Lde/greenrobot/event/c;

    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogManager$HoneycombManagerFragment;->c:Lde/greenrobot/event/c;

    invoke-virtual {v0, p0}, Lde/greenrobot/event/c;->a(Ljava/lang/Object;)V

    return-void
.end method
