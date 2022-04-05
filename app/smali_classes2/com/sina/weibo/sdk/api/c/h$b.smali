.class Lcom/sina/weibo/sdk/api/c/h$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/api/c/h;->a(Landroid/content/Context;Lcom/sina/weibo/sdk/api/c/c;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/sina/weibo/sdk/api/c/c;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/api/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/api/c/h$b;->a:Lcom/sina/weibo/sdk/api/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/sina/weibo/sdk/api/c/h$b;->a:Lcom/sina/weibo/sdk/api/c/c;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sina/weibo/sdk/api/c/c;->onCancel()V

    :cond_0
    return-void
.end method
