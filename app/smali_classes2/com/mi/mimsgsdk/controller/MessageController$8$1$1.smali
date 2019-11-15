.class Lcom/mi/mimsgsdk/controller/MessageController$8$1$1;
.super Landroid/os/AsyncTask;
.source "MessageController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/mimsgsdk/controller/MessageController$8$1;->onTaskSuccess(I[Lorg/apache/http/Header;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lcom/mi/mimsgsdk/controller/MessageController$8$1;


# direct methods
.method constructor <init>(Lcom/mi/mimsgsdk/controller/MessageController$8$1;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/controller/MessageController$8$1$1;->this$2:Lcom/mi/mimsgsdk/controller/MessageController$8$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mi/mimsgsdk/controller/MessageController$8$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/controller/MessageController$8$1$1;->this$2:Lcom/mi/mimsgsdk/controller/MessageController$8$1;

    iget-object v0, v0, Lcom/mi/mimsgsdk/controller/MessageController$8$1;->this$1:Lcom/mi/mimsgsdk/controller/MessageController$8;

    invoke-static {v0}, Lcom/mi/mimsgsdk/controller/MessageController$8;->access$900(Lcom/mi/mimsgsdk/controller/MessageController$8;)V

    const/4 v0, 0x0

    return-object v0
.end method
