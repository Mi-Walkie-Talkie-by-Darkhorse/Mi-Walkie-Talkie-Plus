.class public Lpub/devrel/easypermissions/AppSettingsDialog$Builder;
.super Ljava/lang/Object;
.source "AppSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpub/devrel/easypermissions/AppSettingsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mActivityOrFragment:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mNegativeButton:Ljava/lang/String;

.field private mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveButton:Ljava/lang/String;

.field private mRationale:Ljava/lang/String;

.field private mRequestCode:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRequestCode:I

    iput-object p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mActivityOrFragment:Ljava/lang/Object;

    iput-object p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRequestCode:I

    iput-object p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mActivityOrFragment:Ljava/lang/Object;

    iput-object p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRationale:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xb
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRequestCode:I

    iput-object p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mActivityOrFragment:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0xb
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRequestCode:I

    iput-object p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mActivityOrFragment:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRationale:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRequestCode:I

    iput-object p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mActivityOrFragment:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRequestCode:I

    iput-object p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mActivityOrFragment:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRationale:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lpub/devrel/easypermissions/AppSettingsDialog;
    .locals 10

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRationale:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mContext:Landroid/content/Context;

    sget v1, Lpub/devrel/easypermissions/R$string;->rationale_ask_again:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRationale:Ljava/lang/String;

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mContext:Landroid/content/Context;

    sget v1, Lpub/devrel/easypermissions/R$string;->title_settings_dialog:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mTitle:Ljava/lang/String;

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mPositiveButton:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mContext:Landroid/content/Context;

    const v1, 0x104000a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mPositiveButton:Ljava/lang/String;

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mNegativeButton:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mContext:Landroid/content/Context;

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mNegativeButton:Ljava/lang/String;

    iget v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRequestCode:I

    if-lez v0, :cond_4

    iget v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRequestCode:I

    :goto_4
    iput v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRequestCode:I

    new-instance v0, Lpub/devrel/easypermissions/AppSettingsDialog;

    iget-object v1, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mActivityOrFragment:Ljava/lang/Object;

    iget-object v2, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRationale:Ljava/lang/String;

    iget-object v4, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mTitle:Ljava/lang/String;

    iget-object v5, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mPositiveButton:Ljava/lang/String;

    iget-object v6, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mNegativeButton:Ljava/lang/String;

    iget-object v7, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    iget v8, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRequestCode:I

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lpub/devrel/easypermissions/AppSettingsDialog;-><init>(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;ILpub/devrel/easypermissions/AppSettingsDialog$1;)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRationale:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mTitle:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mPositiveButton:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mNegativeButton:Ljava/lang/String;

    goto :goto_3

    :cond_4
    const/16 v0, 0x3ebd

    goto :goto_4
.end method

.method public setNegativeButton(I)Lpub/devrel/easypermissions/AppSettingsDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mNegativeButton:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;)Lpub/devrel/easypermissions/AppSettingsDialog$Builder;
    .locals 0

    iput-object p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mNegativeButton:Ljava/lang/String;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lpub/devrel/easypermissions/AppSettingsDialog$Builder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mNegativeButton:Ljava/lang/String;

    iput-object p2, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(I)Lpub/devrel/easypermissions/AppSettingsDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mPositiveButton:Ljava/lang/String;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/String;)Lpub/devrel/easypermissions/AppSettingsDialog$Builder;
    .locals 0

    iput-object p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mPositiveButton:Ljava/lang/String;

    return-object p0
.end method

.method public setRationale(I)Lpub/devrel/easypermissions/AppSettingsDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRationale:Ljava/lang/String;

    return-object p0
.end method

.method public setRationale(Ljava/lang/String;)Lpub/devrel/easypermissions/AppSettingsDialog$Builder;
    .locals 0

    iput-object p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRationale:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestCode(I)Lpub/devrel/easypermissions/AppSettingsDialog$Builder;
    .locals 0

    iput p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mRequestCode:I

    return-object p0
.end method

.method public setTitle(I)Lpub/devrel/easypermissions/AppSettingsDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lpub/devrel/easypermissions/AppSettingsDialog$Builder;
    .locals 0

    iput-object p1, p0, Lpub/devrel/easypermissions/AppSettingsDialog$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method
