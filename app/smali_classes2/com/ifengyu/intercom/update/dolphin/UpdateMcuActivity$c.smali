.class Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$c;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget v1, Lcom/ifengyu/intercom/i/d0;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$c;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->g(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "filePath"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity$c;->a:Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a(Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;)Lcom/ifengyu/intercom/update/dolphin/l;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/content/ContentValues;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
