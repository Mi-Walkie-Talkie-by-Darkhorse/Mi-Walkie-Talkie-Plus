.class Lcom/mi/milinkforgame/sdk/session/Session$2;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/session/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/milinkforgame/sdk/session/Session;


# direct methods
.method constructor <init>(Lcom/mi/milinkforgame/sdk/session/Session;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/session/Session$2;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/session/Session$2;->this$0:Lcom/mi/milinkforgame/sdk/session/Session;

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/session/Session;->access$800(Lcom/mi/milinkforgame/sdk/session/Session;)V

    return-void
.end method
