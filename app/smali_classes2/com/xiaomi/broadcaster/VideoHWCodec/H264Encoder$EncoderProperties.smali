.class Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder$EncoderProperties;
.super Ljava/lang/Object;
.source "H264Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EncoderProperties"
.end annotation


# instance fields
.field public final codecName:Ljava/lang/String;

.field public final colorFormat:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder$EncoderProperties;->codecName:Ljava/lang/String;

    iput p2, p0, Lcom/xiaomi/broadcaster/VideoHWCodec/H264Encoder$EncoderProperties;->colorFormat:I

    return-void
.end method
