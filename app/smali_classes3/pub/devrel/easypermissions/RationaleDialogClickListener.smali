.class Lpub/devrel/easypermissions/RationaleDialogClickListener;
.super Ljava/lang/Object;
.source "RationaleDialogClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

.field private mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

.field private mHost:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lpub/devrel/easypermissions/RationaleDialogFragment;Lpub/devrel/easypermissions/RationaleDialogConfig;Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;)V
    .locals 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xb
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mHost:Ljava/lang/Object;

    :goto_1
    iput-object p2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    iput-object p3, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    return-void

    :cond_0
    invoke-virtual {p1}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lpub/devrel/easypermissions/RationaleDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mHost:Ljava/lang/Object;

    goto :goto_1
.end method

.method constructor <init>(Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;Lpub/devrel/easypermissions/RationaleDialogConfig;Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mHost:Ljava/lang/Object;

    iput-object p2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    iput-object p3, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    return-void

    :cond_0
    invoke-virtual {p1}, Lpub/devrel/easypermissions/RationaleDialogFragmentCompat;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    goto :goto_0
.end method

.method private notifyPermissionDenied()V
    .locals 3

    iget-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mCallbacks:Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;

    iget-object v1, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    iget v1, v1, Lpub/devrel/easypermissions/RationaleDialogConfig;->requestCode:I

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    iget-object v2, v2, Lpub/devrel/easypermissions/RationaleDialogConfig;->permissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lpub/devrel/easypermissions/EasyPermissions$PermissionCallbacks;->onPermissionsDenied(ILjava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mHost:Ljava/lang/Object;

    instance-of v0, v0, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mHost:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    iget-object v1, v1, Lpub/devrel/easypermissions/RationaleDialogConfig;->permissions:[Ljava/lang/String;

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    iget v2, v2, Lpub/devrel/easypermissions/RationaleDialogConfig;->requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mHost:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Fragment;

    if-eqz v0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mHost:Ljava/lang/Object;

    check-cast v0, Landroid/app/Fragment;

    iget-object v1, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    iget-object v1, v1, Lpub/devrel/easypermissions/RationaleDialogConfig;->permissions:[Ljava/lang/String;

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    iget v2, v2, Lpub/devrel/easypermissions/RationaleDialogConfig;->requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Target SDK needs to be greater than 23 if caller is android.app.Fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mHost:Ljava/lang/Object;

    instance-of v0, v0, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mHost:Ljava/lang/Object;

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    iget-object v1, v1, Lpub/devrel/easypermissions/RationaleDialogConfig;->permissions:[Ljava/lang/String;

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogClickListener;->mConfig:Lpub/devrel/easypermissions/RationaleDialogConfig;

    iget v2, v2, Lpub/devrel/easypermissions/RationaleDialogConfig;->requestCode:I

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lpub/devrel/easypermissions/RationaleDialogClickListener;->notifyPermissionDenied()V

    goto :goto_0
.end method
