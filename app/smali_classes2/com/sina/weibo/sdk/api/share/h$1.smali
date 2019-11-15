.class Lcom/sina/weibo/sdk/api/share/h$1;
.super Ljava/lang/Object;
.source "WeiboDownloader.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sina/weibo/sdk/api/share/h;->a(Landroid/content/Context;Lcom/sina/weibo/sdk/api/share/c;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/api/share/h$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/share/h$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/sina/weibo/sdk/api/share/h;->a(Landroid/content/Context;)V

    return-void
.end method
