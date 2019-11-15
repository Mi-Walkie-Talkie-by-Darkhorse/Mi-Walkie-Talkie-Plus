.class public Lpub/devrel/easypermissions/RationaleDialogFragment;
.super Landroid/app/DialogFragment;
.source "RationaleDialogFragment.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xb
.end annotation

.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "RationaleDialogFragment"


# instance fields
.field private mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(IILjava/lang/String;I[Ljava/lang/String;)Lpub/devrel/easypermissions/RationaleDialogFragment;
    .locals 7
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v6, Lpub/devrel/easypermissions/RationaleDialogFragment;

    invoke-direct {v6}, Lpub/devrel/easypermissions/RationaleDialogFragment;-><init>()V

    new-instance v0, Lpub/devrel/easypermissions/RationaleDialogConfig;

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lpub/devrel/easypermissions/RationaleDialogConfig;-><init>(IILjava/lang/String;I[Ljava/lang/String;)V

    invoke-virtual {v0}, Lpub/devrel/easypermissions/RationaleDialogConfig;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v6, v0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v6
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v0, :cond_0

    check-cast p1, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    iput-object p1, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    goto :goto_1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->setCancelable(Z)V

    new-instance v0, Lpub/devrel/easypermissions/RationaleDialogConfig;

    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lpub/devrel/easypermissions/RationaleDialogConfig;-><init>(Landroid/os/Bundle;)V

    new-instance v1, Lpub/devrel/easypermissions/RationaleDialogClickListener;

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    invoke-direct {v1, p0, v0, v2}, Lpub/devrel/easypermissions/RationaleDialogClickListener;-><init>(Lpub/devrel/easypermissions/RationaleDialogFragment;Lpub/devrel/easypermissions/RationaleDialogConfig;Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;)V

    invoke-virtual {p0}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lpub/devrel/easypermissions/RationaleDialogConfig;->createDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onDetach()V

    const/4 v0, 0x0

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogFragment;->mPermissionCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    return-void
.end method
