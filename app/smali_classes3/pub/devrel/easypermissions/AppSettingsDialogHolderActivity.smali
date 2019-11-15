.class public Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "AppSettingsDialogHolderActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static createShowDialogIntent(Landroid/content/Context;Lpub/devrel/easypermissions/AppSettingsDialog;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_app_settings"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    invoke-virtual {p0, p2, p3}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->setResult(I)V

    invoke-virtual {p0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lpub/devrel/easypermissions/AppSettingsDialogHolderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_app_settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lpub/devrel/easypermissions/AppSettingsDialog;

    invoke-virtual {v0, p0}, Lpub/devrel/easypermissions/AppSettingsDialog;->setContext(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lpub/devrel/easypermissions/AppSettingsDialog;->setActivityOrFragment(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lpub/devrel/easypermissions/AppSettingsDialog;->setNegativeListener(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lpub/devrel/easypermissions/AppSettingsDialog;->showDialog()V

    return-void
.end method
