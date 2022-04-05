.class final Lcom/google/zxing/oned/EANManufacturerOrgSupport;
.super Ljava/lang/Object;


# instance fields
.field private final countryIdentifiers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final ranges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    return-void
.end method

.method private add([ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private declared-synchronized initIfNeeded()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x2

    :try_start_1
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/16 v3, 0x13

    const/4 v4, 0x1

    aput v3, v1, v4

    const-string v3, "US/CA"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x1e

    aput v3, v1, v2

    const/16 v3, 0x27

    aput v3, v1, v4

    const-string v3, "US"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x3c

    aput v3, v1, v2

    const/16 v3, 0x8b

    aput v3, v1, v4

    const-string v3, "US/CA"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x12c

    aput v3, v1, v2

    const/16 v3, 0x17b

    aput v3, v1, v4

    const-string v3, "FR"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x17c

    aput v3, v1, v2

    const-string v3, "BG"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x17f

    aput v3, v1, v2

    const-string v3, "SI"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x181

    aput v3, v1, v2

    const-string v3, "HR"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x183

    aput v3, v1, v2

    const-string v3, "BA"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x190

    aput v3, v1, v2

    const/16 v3, 0x1b8

    aput v3, v1, v4

    const-string v3, "DE"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x1c2

    aput v3, v1, v2

    const/16 v3, 0x1cb

    aput v3, v1, v4

    const-string v3, "JP"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x1cc

    aput v3, v1, v2

    const/16 v3, 0x1d5

    aput v3, v1, v4

    const-string v3, "RU"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x1d7

    aput v3, v1, v2

    const-string v3, "TW"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x1da

    aput v3, v1, v2

    const-string v3, "EE"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x1db

    aput v3, v1, v2

    const-string v3, "LV"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x1dc

    aput v3, v1, v2

    const-string v3, "AZ"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x1dd

    aput v3, v1, v2

    const-string v3, "LT"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x1de

    aput v3, v1, v2

    const-string v3, "UZ"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x1df

    aput v3, v1, v2

    const-string v3, "LK"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x1e0

    aput v3, v1, v2

    const-string v3, "PH"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x1e1

    aput v3, v1, v2

    const-string v3, "BY"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x1e2

    aput v3, v1, v2

    const-string v3, "UA"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x1e4

    aput v3, v1, v2

    const-string v3, "MD"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x1e5

    aput v3, v1, v2

    const-string v3, "AM"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x1e6

    aput v3, v1, v2

    const-string v3, "GE"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x1e7

    aput v3, v1, v2

    const-string v3, "KZ"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x1e9

    aput v3, v1, v2

    const-string v3, "HK"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x1ea

    aput v3, v1, v2

    const/16 v3, 0x1f3

    aput v3, v1, v4

    const-string v3, "JP"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x1f4

    aput v3, v1, v2

    const/16 v3, 0x1fd

    aput v3, v1, v4

    const-string v3, "GB"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x208

    aput v3, v1, v2

    const-string v3, "GR"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x210

    aput v3, v1, v2

    const-string v3, "LB"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x211

    aput v3, v1, v2

    const-string v3, "CY"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x213

    aput v3, v1, v2

    const-string v3, "MK"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x217

    aput v3, v1, v2

    const-string v3, "MT"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x21b

    aput v3, v1, v2

    const-string v3, "IE"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x21c

    aput v3, v1, v2

    const/16 v3, 0x225

    aput v3, v1, v4

    const-string v3, "BE/LU"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x230

    aput v3, v1, v2

    const-string v3, "PT"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x239

    aput v3, v1, v2

    const-string v3, "IS"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x23a

    aput v3, v1, v2

    const/16 v3, 0x243

    aput v3, v1, v4

    const-string v3, "DK"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x24e

    aput v3, v1, v2

    const-string v3, "PL"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x252

    aput v3, v1, v2

    const-string v3, "RO"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x257

    aput v3, v1, v2

    const-string v3, "HU"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x258

    aput v3, v1, v2

    const/16 v3, 0x259

    aput v3, v1, v4

    const-string v3, "ZA"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x25b

    aput v3, v1, v2

    const-string v3, "GH"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x260

    aput v3, v1, v2

    const-string v3, "BH"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x261

    aput v3, v1, v2

    const-string v3, "MU"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x263

    aput v3, v1, v2

    const-string v3, "MA"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x265

    aput v3, v1, v2

    const-string v3, "DZ"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x268

    aput v3, v1, v2

    const-string v3, "KE"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x26a

    aput v3, v1, v2

    const-string v3, "CI"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x26b

    aput v3, v1, v2

    const-string v3, "TN"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x26d

    aput v3, v1, v2

    const-string v3, "SY"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x26e

    aput v3, v1, v2

    const-string v3, "EG"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x270

    aput v3, v1, v2

    const-string v3, "LY"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x271

    aput v3, v1, v2

    const-string v3, "JO"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x272

    aput v3, v1, v2

    const-string v3, "IR"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x273

    aput v3, v1, v2

    const-string v3, "KW"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x274

    aput v3, v1, v2

    const-string v3, "SA"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x275

    aput v3, v1, v2

    const-string v3, "AE"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x280

    aput v3, v1, v2

    const/16 v3, 0x289

    aput v3, v1, v4

    const-string v3, "FI"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x2b2

    aput v3, v1, v2

    const/16 v3, 0x2b7

    aput v3, v1, v4

    const-string v3, "CN"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x2bc

    aput v3, v1, v2

    const/16 v3, 0x2c5

    aput v3, v1, v4

    const-string v3, "NO"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x2d9

    aput v3, v1, v2

    const-string v3, "IL"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x2da

    aput v3, v1, v2

    const/16 v3, 0x2e3

    aput v3, v1, v4

    const-string v3, "SE"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x2e4

    aput v3, v1, v2

    const-string v3, "GT"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x2e5

    aput v3, v1, v2

    const-string v3, "SV"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x2e6

    aput v3, v1, v2

    const-string v3, "HN"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x2e7

    aput v3, v1, v2

    const-string v3, "NI"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x2e8

    aput v3, v1, v2

    const-string v3, "CR"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x2e9

    aput v3, v1, v2

    const-string v3, "PA"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x2ea

    aput v3, v1, v2

    const-string v3, "DO"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x2ee

    aput v3, v1, v2

    const-string v3, "MX"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x2f2

    aput v3, v1, v2

    const/16 v3, 0x2f3

    aput v3, v1, v4

    const-string v3, "CA"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x2f7

    aput v3, v1, v2

    const-string v3, "VE"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x2f8

    aput v3, v1, v2

    const/16 v3, 0x301

    aput v3, v1, v4

    const-string v3, "CH"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x302

    aput v3, v1, v2

    const-string v3, "CO"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x305

    aput v3, v1, v2

    const-string v3, "UY"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x307

    aput v3, v1, v2

    const-string v3, "PE"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x309

    aput v3, v1, v2

    const-string v3, "BO"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x30b

    aput v3, v1, v2

    const-string v3, "AR"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x30c

    aput v3, v1, v2

    const-string v3, "CL"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x310

    aput v3, v1, v2

    const-string v3, "PY"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x311

    aput v3, v1, v2

    const-string v3, "PE"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x312

    aput v3, v1, v2

    const-string v3, "EC"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x315

    aput v3, v1, v2

    const/16 v3, 0x316

    aput v3, v1, v4

    const-string v3, "BR"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x320

    aput v3, v1, v2

    const/16 v3, 0x347

    aput v3, v1, v4

    const-string v3, "IT"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x348

    aput v3, v1, v2

    const/16 v3, 0x351

    aput v3, v1, v4

    const-string v3, "ES"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x352

    aput v3, v1, v2

    const-string v3, "CU"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x35a

    aput v3, v1, v2

    const-string v3, "SK"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x35b

    aput v3, v1, v2

    const-string v3, "CZ"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x35c

    aput v3, v1, v2

    const-string v3, "YU"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x361

    aput v3, v1, v2

    const-string v3, "MN"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x363

    aput v3, v1, v2

    const-string v3, "KP"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x364

    aput v3, v1, v2

    const/16 v3, 0x365

    aput v3, v1, v4

    const-string v3, "TR"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x366

    aput v3, v1, v2

    const/16 v3, 0x36f

    aput v3, v1, v4

    const-string v3, "NL"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x370

    aput v3, v1, v2

    const-string v3, "KR"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x375

    aput v3, v1, v2

    const-string v3, "TH"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x378

    aput v3, v1, v2

    const-string v3, "SG"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x37a

    aput v3, v1, v2

    const-string v3, "IN"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x37d

    aput v3, v1, v2

    const-string v3, "VN"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x380

    aput v3, v1, v2

    const-string v3, "PK"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v4, [I

    const/16 v3, 0x383

    aput v3, v1, v2

    const-string v3, "ID"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x384

    aput v3, v1, v2

    const/16 v3, 0x397

    aput v3, v1, v4

    const-string v3, "AT"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v1, v0, [I

    const/16 v3, 0x3a2

    aput v3, v1, v2

    const/16 v3, 0x3ab

    aput v3, v1, v4

    const-string v3, "AU"

    invoke-direct {p0, v1, v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v0, v0, [I

    const/16 v1, 0x3ac

    aput v1, v0, v2

    const/16 v1, 0x3b5

    aput v1, v0, v4

    const-string v1, "AZ"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v0, v4, [I

    const/16 v1, 0x3bb

    aput v1, v0, v2

    const-string v1, "MY"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V

    new-array v0, v4, [I

    const/16 v1, 0x3be

    aput v1, v0, v2

    const-string v1, "MO"

    invoke-direct {p0, v0, v1}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->add([ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method lookupCountryIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    invoke-direct {p0}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->initIfNeeded()V

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_3

    iget-object v4, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->ranges:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v5, v4, v0

    if-ge p1, v5, :cond_0

    return-object v3

    :cond_0
    array-length v3, v4

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    aget v5, v4, v6

    :goto_1
    if-gt p1, v5, :cond_2

    iget-object p1, p0, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->countryIdentifiers:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method
