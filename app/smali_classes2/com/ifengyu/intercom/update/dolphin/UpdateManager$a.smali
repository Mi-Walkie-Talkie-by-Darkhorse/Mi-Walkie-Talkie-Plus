.class Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ifengyu/intercom/network/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/update/dolphin/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateManager$a;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateManager;

    invoke-static {v0}, Lcom/ifengyu/intercom/update/dolphin/UpdateManager;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateManager;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ifengyu/intercom/network/c;->a(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
