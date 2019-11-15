.class Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;
.super Ljava/lang/Object;
.source "BaseDataMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->trace(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;

.field final synthetic val$ac:Ljava/lang/String;

.field final synthetic val$accIp:Ljava/lang/String;

.field final synthetic val$accPort:I

.field final synthetic val$clientIp:Ljava/lang/String;

.field final synthetic val$clientIsp:Ljava/lang/String;

.field final synthetic val$cmd:Ljava/lang/String;

.field final synthetic val$reqSize:I

.field final synthetic val$requestTime:J

.field final synthetic val$responseTime:J

.field final synthetic val$retCode:I

.field final synthetic val$rspSize:I

.field final synthetic val$seq:I

.field final synthetic val$vuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->this$0:Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;

    iput-object p2, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$ac:Ljava/lang/String;

    iput-object p3, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$accIp:Ljava/lang/String;

    iput p4, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$accPort:I

    iput-object p5, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$cmd:Ljava/lang/String;

    iput p6, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$retCode:I

    iput-wide p7, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$requestTime:J

    iput-wide p9, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$responseTime:J

    iput p11, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$reqSize:I

    iput p12, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$rspSize:I

    iput p13, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$seq:I

    iput-object p14, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$vuid:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$clientIp:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$clientIsp:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->this$0:Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$ac:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$accIp:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$accPort:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$cmd:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$retCode:I

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$requestTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$responseTime:J

    move-object/from16 v0, p0

    iget v12, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$reqSize:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$rspSize:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$seq:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$vuid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$clientIp:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor$2;->val$clientIsp:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v2 .. v17}, Lcom/mi/milinkforgame/sdk/debug/BaseDataMonitor;->traceToServer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJJIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
