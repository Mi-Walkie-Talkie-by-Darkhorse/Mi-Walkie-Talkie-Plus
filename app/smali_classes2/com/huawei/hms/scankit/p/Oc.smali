.class Lcom/huawei/hms/scankit/p/Oc;
.super Ljava/util/LinkedHashMap;
.source "HaLog60002.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/scankit/p/Pc;->a(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/scankit/p/Pc;


# direct methods
.method constructor <init>(Lcom/huawei/hms/scankit/p/Pc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/Oc;->a:Lcom/huawei/hms/scankit/p/Pc;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    iget-object p1, p1, Lcom/huawei/hms/scankit/p/Qc;->f:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method
