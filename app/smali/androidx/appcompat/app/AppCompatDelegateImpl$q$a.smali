.class Landroidx/appcompat/app/AppCompatDelegateImpl$q$a;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/app/AppCompatDelegateImpl$q;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/app/AppCompatDelegateImpl$q;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl$q;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$q$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$q;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$q$a;->a:Landroidx/appcompat/app/AppCompatDelegateImpl$q;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDelegateImpl$q;->d()V

    return-void
.end method
