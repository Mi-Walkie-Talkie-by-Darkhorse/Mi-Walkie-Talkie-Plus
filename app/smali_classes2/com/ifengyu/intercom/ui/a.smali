.class public final synthetic Lcom/ifengyu/intercom/ui/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/ui/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/ui/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/a;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/a;->a:Lcom/ifengyu/intercom/ui/MainActivity;

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/ui/MainActivity;->c(Landroid/content/DialogInterface;I)V

    return-void
.end method
