.class public Lcom/yalantis/ucrop/a;
.super Ljava/lang/Object;
.source "UCrop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yalantis/ucrop/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/a;->a:Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/yalantis/ucrop/a;->b:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/yalantis/ucrop/a;->b:Landroid/os/Bundle;

    const-string v1, "com.yalantis.ucrop.InputUri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/yalantis/ucrop/a;->b:Landroid/os/Bundle;

    const-string v1, "com.yalantis.ucrop.OutputUri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public static a(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1
    .param p0    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const-string v0, "com.yalantis.ucrop.OutputUri"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public static a(Landroid/net/Uri;Landroid/net/Uri;)Lcom/yalantis/ucrop/a;
    .locals 1
    .param p0    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/yalantis/ucrop/a;

    invoke-direct {v0, p0, p1}, Lcom/yalantis/ucrop/a;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/a;->a:Landroid/content/Intent;

    const-class v1, Lcom/yalantis/ucrop/UCropActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/yalantis/ucrop/a;->a:Landroid/content/Intent;

    iget-object v1, p0, Lcom/yalantis/ucrop/a;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/yalantis/ucrop/a;->a:Landroid/content/Intent;

    return-object v0
.end method

.method public a(II)Lcom/yalantis/ucrop/a;
    .locals 2
    .param p1    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x64L
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x64L
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/a;->b:Landroid/os/Bundle;

    const-string v1, "com.yalantis.ucrop.MaxSizeX"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/yalantis/ucrop/a;->b:Landroid/os/Bundle;

    const-string v1, "com.yalantis.ucrop.MaxSizeY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public a(Lcom/yalantis/ucrop/a$a;)Lcom/yalantis/ucrop/a;
    .locals 2
    .param p1    # Lcom/yalantis/ucrop/a$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/yalantis/ucrop/a;->b:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/yalantis/ucrop/a$a;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0x45

    invoke-virtual {p0, p1, v0}, Lcom/yalantis/ucrop/a;->a(Landroid/app/Activity;I)V

    return-void
.end method

.method public a(Landroid/app/Activity;I)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/yalantis/ucrop/a;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
