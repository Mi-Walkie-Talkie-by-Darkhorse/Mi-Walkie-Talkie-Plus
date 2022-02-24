.class public final Lcom/just/agentweb/ActionActivity;
.super Landroid/app/Activity;
.source "ActionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/just/agentweb/ActionActivity$ChooserListener;,
        Lcom/just/agentweb/ActionActivity$PermissionListener;,
        Lcom/just/agentweb/ActionActivity$RationaleListener;
    }
.end annotation


# static fields
.field public static final KEY_ACTION:Ljava/lang/String; = "KEY_ACTION"

.field public static final KEY_FILE_CHOOSER_INTENT:Ljava/lang/String; = "KEY_FILE_CHOOSER_INTENT"

.field public static final KEY_FROM_INTENTION:Ljava/lang/String; = "KEY_FROM_INTENTION"

.field public static final KEY_URI:Ljava/lang/String; = "KEY_URI"

.field public static final REQUEST_CODE:I = 0x254

.field private static final TAG:Ljava/lang/String;

.field private static mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

.field private static mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

.field private static mRationaleListener:Lcom/just/agentweb/ActionActivity$RationaleListener;


# instance fields
.field private mAction:Lcom/just/agentweb/Action;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/just/agentweb/ActionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/just/agentweb/ActionActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private cancelAction()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    .line 2
    sput-object v0, Lcom/just/agentweb/ActionActivity;->mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

    .line 3
    sput-object v0, Lcom/just/agentweb/ActionActivity;->mRationaleListener:Lcom/just/agentweb/ActionActivity$RationaleListener;

    return-void
.end method

.method private chooserActionCallback(ILandroid/content/Intent;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    if-eqz v0, :cond_0

    const/16 v1, 0x254

    .line 2
    invoke-interface {v0, v1, p1, p2}, Lcom/just/agentweb/ActionActivity$ChooserListener;->onChoiceResult(IILandroid/content/Intent;)V

    const/4 p1, 0x0

    .line 3
    sput-object p1, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private fetchFile(Lcom/just/agentweb/Action;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/just/agentweb/ActionActivity;->realOpenFileChooser()V

    return-void
.end method

.method private permission(Lcom/just/agentweb/Action;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/just/agentweb/Action;->getPermissions()Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/just/agentweb/AgentWebUtils;->isEmptyCollection(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    sput-object v1, Lcom/just/agentweb/ActionActivity;->mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

    .line 4
    sput-object v1, Lcom/just/agentweb/ActionActivity;->mRationaleListener:Lcom/just/agentweb/ActionActivity$RationaleListener;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/just/agentweb/ActionActivity;->mRationaleListener:Lcom/just/agentweb/ActionActivity$RationaleListener;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-virtual {p0, v0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9
    :cond_2
    sget-object p1, Lcom/just/agentweb/ActionActivity;->mRationaleListener:Lcom/just/agentweb/ActionActivity$RationaleListener;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, v2, v0}, Lcom/just/agentweb/ActionActivity$RationaleListener;->onRationaleResult(ZLandroid/os/Bundle;)V

    .line 10
    sput-object v1, Lcom/just/agentweb/ActionActivity;->mRationaleListener:Lcom/just/agentweb/ActionActivity$RationaleListener;

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 12
    :cond_3
    sget-object v0, Lcom/just/agentweb/ActionActivity;->mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

    if-eqz v0, :cond_4

    new-array v0, v2, [Ljava/lang/String;

    .line 13
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_4
    return-void
.end method

.method private realOpenCamera()V
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x254

    const/4 v2, 0x0

    .line 1
    :try_start_0
    sget-object v3, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    if-nez v3, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/just/agentweb/AgentWebUtils;->createImageFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    .line 4
    sget-object v4, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    invoke-interface {v4, v1, v0, v2}, Lcom/just/agentweb/ActionActivity$ChooserListener;->onChoiceResult(IILandroid/content/Intent;)V

    .line 5
    sput-object v2, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7
    :cond_1
    invoke-static {p0, v3}, Lcom/just/agentweb/AgentWebUtils;->getIntentCaptureCompat(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "output"

    .line 8
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/just/agentweb/ActionActivity;->mUri:Landroid/net/Uri;

    .line 9
    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 10
    sget-object v4, Lcom/just/agentweb/ActionActivity;->TAG:Ljava/lang/String;

    const-string v5, "\u627e\u4e0d\u5230\u7cfb\u7edf\u76f8\u673a"

    invoke-static {v4, v5}, Lcom/just/agentweb/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v4, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    if-eqz v4, :cond_2

    .line 12
    invoke-interface {v4, v1, v0, v2}, Lcom/just/agentweb/ActionActivity$ChooserListener;->onChoiceResult(IILandroid/content/Intent;)V

    .line 13
    :cond_2
    sput-object v2, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    .line 14
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method private realOpenFileChooser()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_FILE_CHOOSER_INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/just/agentweb/ActionActivity;->cancelAction()V

    return-void

    :cond_1
    const/16 v1, 0x254

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    sget-object v1, Lcom/just/agentweb/ActionActivity;->TAG:Ljava/lang/String;

    const-string v2, "\u627e\u4e0d\u5230\u6587\u4ef6\u9009\u62e9\u5668"

    invoke-static {v1, v2}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 7
    invoke-direct {p0, v1, v2}, Lcom/just/agentweb/ActionActivity;->chooserActionCallback(ILandroid/content/Intent;)V

    .line 8
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private realOpenVideo()V
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x254

    const/4 v2, 0x0

    .line 1
    :try_start_0
    sget-object v3, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    if-nez v3, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/just/agentweb/AgentWebUtils;->createVideoFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    .line 4
    sget-object v4, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    invoke-interface {v4, v1, v0, v2}, Lcom/just/agentweb/ActionActivity$ChooserListener;->onChoiceResult(IILandroid/content/Intent;)V

    .line 5
    sput-object v2, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 7
    :cond_1
    invoke-static {p0, v3}, Lcom/just/agentweb/AgentWebUtils;->getIntentVideoCompat(Landroid/content/Context;Ljava/io/File;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "output"

    .line 8
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/just/agentweb/ActionActivity;->mUri:Landroid/net/Uri;

    .line 9
    invoke-virtual {p0, v3, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 10
    sget-object v4, Lcom/just/agentweb/ActionActivity;->TAG:Ljava/lang/String;

    const-string v5, "\u627e\u4e0d\u5230\u7cfb\u7edf\u76f8\u673a"

    invoke-static {v4, v5}, Lcom/just/agentweb/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    sget-object v4, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    if-eqz v4, :cond_2

    .line 12
    invoke-interface {v4, v1, v0, v2}, Lcom/just/agentweb/ActionActivity$ChooserListener;->onChoiceResult(IILandroid/content/Intent;)V

    .line 13
    :cond_2
    sput-object v2, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    .line 14
    invoke-static {}, Lcom/just/agentweb/LogUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public static setChooserListener(Lcom/just/agentweb/ActionActivity$ChooserListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/just/agentweb/ActionActivity;->mChooserListener:Lcom/just/agentweb/ActionActivity$ChooserListener;

    return-void
.end method

.method public static setPermissionListener(Lcom/just/agentweb/ActionActivity$PermissionListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/just/agentweb/ActionActivity;->mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

    return-void
.end method

.method public static start(Landroid/app/Activity;Lcom/just/agentweb/Action;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/just/agentweb/ActionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "KEY_ACTION"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/16 v0, 0x254

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lcom/just/agentweb/ActionActivity;->mUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p3, p0, Lcom/just/agentweb/ActionActivity;->mUri:Landroid/net/Uri;

    const-string v0, "KEY_URI"

    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p3

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/just/agentweb/ActionActivity;->chooserActionCallback(ILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 2
    sget-object v0, Lcom/just/agentweb/ActionActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savedInstanceState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/just/agentweb/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "KEY_ACTION"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/just/agentweb/Action;

    iput-object p1, p0, Lcom/just/agentweb/ActionActivity;->mAction:Lcom/just/agentweb/Action;

    if-nez p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/just/agentweb/ActionActivity;->cancelAction()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/just/agentweb/Action;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/just/agentweb/ActionActivity;->mAction:Lcom/just/agentweb/Action;

    invoke-direct {p0, p1}, Lcom/just/agentweb/ActionActivity;->permission(Lcom/just/agentweb/Action;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/just/agentweb/ActionActivity;->mAction:Lcom/just/agentweb/Action;

    invoke-virtual {p1}, Lcom/just/agentweb/Action;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/just/agentweb/ActionActivity;->realOpenCamera()V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/just/agentweb/ActionActivity;->mAction:Lcom/just/agentweb/Action;

    invoke-virtual {p1}, Lcom/just/agentweb/Action;->getAction()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 12
    invoke-direct {p0}, Lcom/just/agentweb/ActionActivity;->realOpenVideo()V

    goto :goto_0

    .line 13
    :cond_4
    iget-object p1, p0, Lcom/just/agentweb/ActionActivity;->mAction:Lcom/just/agentweb/Action;

    invoke-direct {p0, p1}, Lcom/just/agentweb/ActionActivity;->fetchFile(Lcom/just/agentweb/Action;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lcom/just/agentweb/ActionActivity;->mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 3
    iget-object v0, p0, Lcom/just/agentweb/ActionActivity;->mAction:Lcom/just/agentweb/Action;

    invoke-virtual {v0}, Lcom/just/agentweb/Action;->getFromIntention()I

    move-result v0

    const-string v1, "KEY_FROM_INTENTION"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    sget-object v0, Lcom/just/agentweb/ActionActivity;->mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

    invoke-interface {v0, p2, p3, p1}, Lcom/just/agentweb/ActionActivity$PermissionListener;->onRequestPermissionsResult([Ljava/lang/String;[ILandroid/os/Bundle;)V

    :cond_0
    const/4 p1, 0x0

    .line 5
    sput-object p1, Lcom/just/agentweb/ActionActivity;->mPermissionListener:Lcom/just/agentweb/ActionActivity$PermissionListener;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
