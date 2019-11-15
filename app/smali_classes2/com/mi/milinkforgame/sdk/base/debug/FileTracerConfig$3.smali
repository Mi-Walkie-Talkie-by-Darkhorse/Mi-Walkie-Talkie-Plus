.class Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig$3;
.super Ljava/lang/Object;
.source "FileTracerConfig.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;


# direct methods
.method constructor <init>(Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig$3;->this$0:Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->access$000(Ljava/io/File;)I

    move-result v0

    invoke-static {p2}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->access$000(Ljava/io/File;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig$3;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
