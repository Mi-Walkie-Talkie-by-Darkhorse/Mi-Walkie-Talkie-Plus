.class Lcom/mi/milinkforgame/sdk/base/debug/FileTracer$1;
.super Ljava/lang/Object;
.source "FileTracer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;-><init>(IZLcom/mi/milinkforgame/sdk/base/debug/TraceFormat;Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;


# direct methods
.method constructor <init>(Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer$1;->this$0:Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer$1;->this$0:Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracer;->getConfig()Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->cleanWorkFolders()V

    return-void
.end method
