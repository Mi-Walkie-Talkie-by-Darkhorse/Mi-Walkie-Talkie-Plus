.class Lpub/devrel/easypermissions/RationaleDialogConfig;
.super Ljava/lang/Object;
.source "RationaleDialogConfig.java"


# static fields
.field private static final KEY_NEGATIVE_BUTTON:Ljava/lang/String; = "negativeButton"

.field private static final KEY_PERMISSIONS:Ljava/lang/String; = "permissions"

.field private static final KEY_POSITIVE_BUTTON:Ljava/lang/String; = "positiveButton"

.field private static final KEY_RATIONALE_MESSAGE:Ljava/lang/String; = "rationaleMsg"

.field private static final KEY_REQUEST_CODE:Ljava/lang/String; = "requestCode"


# instance fields
.field negativeButton:I

.field permissions:[Ljava/lang/String;

.field positiveButton:I

.field rationaleMsg:Ljava/lang/String;

.field requestCode:I


# direct methods
.method constructor <init>(IILjava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->positiveButton:I

    iput p2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->negativeButton:I

    iput-object p3, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->rationaleMsg:Ljava/lang/String;

    iput p4, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->requestCode:I

    iput-object p5, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->permissions:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "positiveButton"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->positiveButton:I

    const-string v0, "negativeButton"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->negativeButton:I

    const-string v0, "rationaleMsg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->rationaleMsg:Ljava/lang/String;

    const-string v0, "requestCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->requestCode:I

    const-string v0, "permissions"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->permissions:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method createDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;
    .locals 2

    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget v1, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->positiveButton:I

    invoke-virtual {v0, v1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget v1, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->negativeButton:I

    invoke-virtual {v0, v1, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->rationaleMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "positiveButton"

    iget v2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->positiveButton:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "negativeButton"

    iget v2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->negativeButton:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "rationaleMsg"

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->rationaleMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "requestCode"

    iget v2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "permissions"

    iget-object v2, p0, Lpub/devrel/easypermissions/RationaleDialogConfig;->permissions:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
