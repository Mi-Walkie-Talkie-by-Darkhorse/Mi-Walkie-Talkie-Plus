package org.osmdroid.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

public class GEMFFile {
    private static final int FILE_COPY_BUFFER_SIZE = 1024;
    private static final long FILE_SIZE_LIMIT = 1073741824;
    private static final int TILE_SIZE = 256;
    private static final int U32_SIZE = 4;
    private static final int U64_SIZE = 8;
    private static final int VERSION = 4;
    private int mCurrentSource;
    private final List<String> mFileNames;
    private final List<Long> mFileSizes;
    private final List<RandomAccessFile> mFiles;
    private final String mLocation;
    private final List<GEMFRange> mRangeData;
    private boolean mSourceLimited;
    private final LinkedHashMap<Integer, String> mSources;

    class GEMFInputStream extends InputStream {
        RandomAccessFile raf;
        int remainingBytes;

        GEMFInputStream(String str, long j, int i) throws IOException {
            this.raf = new RandomAccessFile(str, "r");
            this.raf.seek(j);
            this.remainingBytes = i;
        }

        public int available() {
            return this.remainingBytes;
        }

        public void close() throws IOException {
            this.raf.close();
        }

        public boolean markSupported() {
            return false;
        }

        public int read(byte[] bArr, int i, int i2) throws IOException {
            RandomAccessFile randomAccessFile = this.raf;
            if (i2 > this.remainingBytes) {
                i2 = this.remainingBytes;
            }
            int read = randomAccessFile.read(bArr, i, i2);
            this.remainingBytes -= read;
            return read;
        }

        public int read() throws IOException {
            if (this.remainingBytes > 0) {
                this.remainingBytes--;
                return this.raf.read();
            }
            throw new IOException("End of stream");
        }

        public long skip(long j) {
            return 0;
        }
    }

    private class GEMFRange {
        Long offset;
        Integer sourceIndex;
        Integer xMax;
        Integer xMin;
        Integer yMax;
        Integer yMin;
        Integer zoom;

        private GEMFRange() {
        }

        public String toString() {
            return String.format("GEMF Range: source=%d, zoom=%d, x=%d-%d, y=%d-%d, offset=0x%08X", new Object[]{this.sourceIndex, this.zoom, this.xMin, this.xMax, this.yMin, this.yMax, this.offset});
        }
    }

    public GEMFFile(File file) throws FileNotFoundException, IOException {
        this(file.getAbsolutePath());
    }

    public GEMFFile(String str) throws FileNotFoundException, IOException {
        this.mFiles = new ArrayList();
        this.mFileNames = new ArrayList();
        this.mRangeData = new ArrayList();
        this.mFileSizes = new ArrayList();
        this.mSources = new LinkedHashMap<>();
        this.mSourceLimited = false;
        this.mCurrentSource = 0;
        this.mLocation = str;
        openFiles();
        readHeader();
    }

    public GEMFFile(String str, List<File> list) throws FileNotFoundException, IOException {
        int i;
        File[] listFiles;
        File[] listFiles2;
        this.mFiles = new ArrayList();
        this.mFileNames = new ArrayList();
        this.mRangeData = new ArrayList();
        this.mFileSizes = new ArrayList();
        this.mSources = new LinkedHashMap<>();
        this.mSourceLimited = false;
        this.mCurrentSource = 0;
        this.mLocation = str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (File file : list) {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (File file2 : file.listFiles()) {
                try {
                    Integer.parseInt(file2.getName());
                    LinkedHashMap linkedHashMap3 = new LinkedHashMap();
                    File[] listFiles3 = file2.listFiles();
                    int length = listFiles3.length;
                    int i2 = 0;
                    while (true) {
                        int i3 = i2;
                        if (i3 >= length) {
                            break;
                        }
                        File file3 = listFiles3[i3];
                        try {
                            Integer.parseInt(file3.getName());
                            LinkedHashMap linkedHashMap4 = new LinkedHashMap();
                            for (File file4 : file3.listFiles()) {
                                try {
                                    Integer.parseInt(file4.getName().substring(0, file4.getName().indexOf(46)));
                                    linkedHashMap4.put(Integer.valueOf(Integer.parseInt(file4.getName().substring(0, file4.getName().indexOf(46)))), file4);
                                } catch (NumberFormatException e) {
                                }
                            }
                            linkedHashMap3.put(new Integer(file3.getName()), linkedHashMap4);
                        } catch (NumberFormatException e2) {
                        }
                        i2 = i3 + 1;
                    }
                    linkedHashMap2.put(Integer.valueOf(Integer.parseInt(file2.getName())), linkedHashMap3);
                } catch (NumberFormatException e3) {
                }
            }
            linkedHashMap.put(file.getName(), linkedHashMap2);
        }
        LinkedHashMap linkedHashMap5 = new LinkedHashMap();
        LinkedHashMap linkedHashMap6 = new LinkedHashMap();
        int i4 = 0;
        Iterator it = linkedHashMap.keySet().iterator();
        while (true) {
            int i5 = i4;
            if (!it.hasNext()) {
                break;
            }
            String str2 = (String) it.next();
            linkedHashMap5.put(str2, new Integer(i5));
            linkedHashMap6.put(new Integer(i5), str2);
            i4 = i5 + 1;
        }
        ArrayList<GEMFRange> arrayList = new ArrayList<>();
        for (String str3 : linkedHashMap.keySet()) {
            for (Integer num : ((LinkedHashMap) linkedHashMap.get(str3)).keySet()) {
                LinkedHashMap linkedHashMap7 = new LinkedHashMap();
                Iterator it2 = new TreeSet(((LinkedHashMap) ((LinkedHashMap) linkedHashMap.get(str3)).get(num)).keySet()).iterator();
                while (it2.hasNext()) {
                    Integer num2 = (Integer) it2.next();
                    ArrayList arrayList2 = new ArrayList();
                    for (Integer add : ((LinkedHashMap) ((LinkedHashMap) ((LinkedHashMap) linkedHashMap.get(str3)).get(num)).get(num2)).keySet()) {
                        arrayList2.add(add);
                    }
                    if (arrayList2.size() != 0) {
                        Collections.sort(arrayList2);
                        if (!linkedHashMap7.containsKey(arrayList2)) {
                            linkedHashMap7.put(arrayList2, new ArrayList());
                        }
                        ((List) linkedHashMap7.get(arrayList2)).add(num2);
                    }
                }
                LinkedHashMap linkedHashMap8 = new LinkedHashMap();
                for (List list2 : linkedHashMap7.keySet()) {
                    TreeSet treeSet = new TreeSet((Collection) linkedHashMap7.get(list2));
                    ArrayList arrayList3 = new ArrayList();
                    int intValue = ((Integer) treeSet.first()).intValue();
                    ArrayList arrayList4 = arrayList3;
                    while (true) {
                        int i6 = intValue;
                        if (i6 >= ((Integer) treeSet.last()).intValue() + 1) {
                            break;
                        }
                        if (treeSet.contains(new Integer(i6))) {
                            arrayList4.add(new Integer(i6));
                        } else if (arrayList4.size() > 0) {
                            linkedHashMap8.put(list2, arrayList4);
                            arrayList4 = new ArrayList();
                        }
                        intValue = i6 + 1;
                    }
                    if (arrayList4.size() > 0) {
                        linkedHashMap8.put(list2, arrayList4);
                    }
                }
                for (List list3 : linkedHashMap8.keySet()) {
                    TreeSet treeSet2 = new TreeSet(list3);
                    TreeSet treeSet3 = new TreeSet((Collection) linkedHashMap7.get(list3));
                    GEMFRange gEMFRange = new GEMFRange();
                    gEMFRange.zoom = num;
                    gEMFRange.sourceIndex = (Integer) linkedHashMap5.get(str3);
                    gEMFRange.xMin = (Integer) treeSet3.first();
                    gEMFRange.xMax = (Integer) treeSet3.last();
                    int intValue2 = ((Integer) treeSet2.first()).intValue();
                    GEMFRange gEMFRange2 = gEMFRange;
                    while (true) {
                        int i7 = intValue2;
                        if (i7 >= ((Integer) treeSet2.last()).intValue() + 1) {
                            break;
                        }
                        if (treeSet2.contains(new Integer(i7))) {
                            if (gEMFRange2.yMin == null) {
                                gEMFRange2.yMin = Integer.valueOf(i7);
                            }
                            gEMFRange2.yMax = Integer.valueOf(i7);
                        } else if (gEMFRange2.yMin != null) {
                            arrayList.add(gEMFRange2);
                            gEMFRange2 = new GEMFRange();
                            gEMFRange2.zoom = num;
                            gEMFRange2.sourceIndex = (Integer) linkedHashMap5.get(str3);
                            gEMFRange2.xMin = (Integer) treeSet3.first();
                            gEMFRange2.xMax = (Integer) treeSet3.last();
                        }
                        intValue2 = i7 + 1;
                    }
                    if (gEMFRange2.yMin != null) {
                        arrayList.add(gEMFRange2);
                    }
                }
            }
        }
        int i8 = 0;
        Iterator it3 = linkedHashMap5.keySet().iterator();
        while (true) {
            i = i8;
            if (!it3.hasNext()) {
                break;
            }
            i8 = ((String) it3.next()).length() + 8 + i;
        }
        long size = (long) (i + 12 + (arrayList.size() * 32) + 4);
        long j = size;
        for (GEMFRange gEMFRange3 : arrayList) {
            gEMFRange3.offset = Long.valueOf(j);
            for (int intValue3 = gEMFRange3.xMin.intValue(); intValue3 < gEMFRange3.xMax.intValue() + 1; intValue3++) {
                int intValue4 = gEMFRange3.yMin.intValue();
                while (intValue4 < gEMFRange3.yMax.intValue() + 1) {
                    intValue4++;
                    j = 12 + j;
                }
            }
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, "rw");
        randomAccessFile.writeInt(4);
        randomAccessFile.writeInt(256);
        randomAccessFile.writeInt(linkedHashMap5.size());
        for (String str4 : linkedHashMap5.keySet()) {
            randomAccessFile.writeInt(((Integer) linkedHashMap5.get(str4)).intValue());
            randomAccessFile.writeInt(str4.length());
            randomAccessFile.write(str4.getBytes());
        }
        randomAccessFile.writeInt(arrayList.size());
        for (GEMFRange gEMFRange4 : arrayList) {
            randomAccessFile.writeInt(gEMFRange4.zoom.intValue());
            randomAccessFile.writeInt(gEMFRange4.xMin.intValue());
            randomAccessFile.writeInt(gEMFRange4.xMax.intValue());
            randomAccessFile.writeInt(gEMFRange4.yMin.intValue());
            randomAccessFile.writeInt(gEMFRange4.yMax.intValue());
            randomAccessFile.writeInt(gEMFRange4.sourceIndex.intValue());
            randomAccessFile.writeLong(gEMFRange4.offset.longValue());
        }
        long j2 = j;
        for (GEMFRange gEMFRange5 : arrayList) {
            int intValue5 = gEMFRange5.xMin.intValue();
            while (true) {
                int i9 = intValue5;
                if (i9 < gEMFRange5.xMax.intValue() + 1) {
                    int intValue6 = gEMFRange5.yMin.intValue();
                    while (true) {
                        int i10 = intValue6;
                        if (i10 >= gEMFRange5.yMax.intValue() + 1) {
                            break;
                        }
                        randomAccessFile.writeLong(j2);
                        long length2 = ((File) ((LinkedHashMap) ((LinkedHashMap) ((LinkedHashMap) linkedHashMap.get(linkedHashMap6.get(gEMFRange5.sourceIndex))).get(gEMFRange5.zoom)).get(Integer.valueOf(i9))).get(Integer.valueOf(i10))).length();
                        randomAccessFile.writeInt((int) length2);
                        j2 += length2;
                        intValue6 = i10 + 1;
                    }
                    intValue5 = i9 + 1;
                }
            }
        }
        byte[] bArr = new byte[1024];
        int i11 = 0;
        RandomAccessFile randomAccessFile2 = randomAccessFile;
        for (GEMFRange gEMFRange6 : arrayList) {
            int intValue7 = gEMFRange6.xMin.intValue();
            while (intValue7 < gEMFRange6.xMax.intValue() + 1) {
                long j3 = j;
                int i12 = i11;
                for (int intValue8 = gEMFRange6.yMin.intValue(); intValue8 < gEMFRange6.yMax.intValue() + 1; intValue8++) {
                    long length3 = ((File) ((LinkedHashMap) ((LinkedHashMap) ((LinkedHashMap) linkedHashMap.get(linkedHashMap6.get(gEMFRange6.sourceIndex))).get(gEMFRange6.zoom)).get(Integer.valueOf(intValue7))).get(Integer.valueOf(intValue8))).length();
                    if (j3 + length3 > FILE_SIZE_LIMIT) {
                        randomAccessFile2.close();
                        i12++;
                        randomAccessFile2 = new RandomAccessFile(str + "-" + i12, "rw");
                        j3 = 0;
                    } else {
                        j3 += length3;
                    }
                    FileInputStream fileInputStream = new FileInputStream((File) ((LinkedHashMap) ((LinkedHashMap) ((LinkedHashMap) linkedHashMap.get(linkedHashMap6.get(gEMFRange6.sourceIndex))).get(gEMFRange6.zoom)).get(Integer.valueOf(intValue7))).get(Integer.valueOf(intValue8)));
                    for (int read = fileInputStream.read(bArr, 0, 1024); read != -1; read = fileInputStream.read(bArr, 0, 1024)) {
                        randomAccessFile2.write(bArr, 0, read);
                    }
                    fileInputStream.close();
                }
                intValue7++;
                i11 = i12;
                j = j3;
            }
        }
        randomAccessFile2.close();
        openFiles();
        readHeader();
    }

    public void close() throws IOException {
        for (RandomAccessFile close : this.mFiles) {
            close.close();
        }
    }

    private void openFiles() throws FileNotFoundException {
        File file = new File(this.mLocation);
        this.mFiles.add(new RandomAccessFile(file, "r"));
        this.mFileNames.add(file.getPath());
        int i = 0;
        while (true) {
            i++;
            File file2 = new File(this.mLocation + "-" + i);
            if (file2.exists()) {
                this.mFiles.add(new RandomAccessFile(file2, "r"));
                this.mFileNames.add(file2.getPath());
            } else {
                return;
            }
        }
    }

    private void readHeader() throws IOException {
        RandomAccessFile randomAccessFile = (RandomAccessFile) this.mFiles.get(0);
        for (RandomAccessFile length : this.mFiles) {
            this.mFileSizes.add(Long.valueOf(length.length()));
        }
        int readInt = randomAccessFile.readInt();
        if (readInt != 4) {
            throw new IOException("Bad file version: " + readInt);
        }
        int readInt2 = randomAccessFile.readInt();
        if (readInt2 != 256) {
            throw new IOException("Bad tile size: " + readInt2);
        }
        int readInt3 = randomAccessFile.readInt();
        for (int i = 0; i < readInt3; i++) {
            int readInt4 = randomAccessFile.readInt();
            int readInt5 = randomAccessFile.readInt();
            byte[] bArr = new byte[readInt5];
            randomAccessFile.read(bArr, 0, readInt5);
            this.mSources.put(new Integer(readInt4), new String(bArr));
        }
        int readInt6 = randomAccessFile.readInt();
        for (int i2 = 0; i2 < readInt6; i2++) {
            GEMFRange gEMFRange = new GEMFRange();
            gEMFRange.zoom = Integer.valueOf(randomAccessFile.readInt());
            gEMFRange.xMin = Integer.valueOf(randomAccessFile.readInt());
            gEMFRange.xMax = Integer.valueOf(randomAccessFile.readInt());
            gEMFRange.yMin = Integer.valueOf(randomAccessFile.readInt());
            gEMFRange.yMax = Integer.valueOf(randomAccessFile.readInt());
            gEMFRange.sourceIndex = Integer.valueOf(randomAccessFile.readInt());
            gEMFRange.offset = Long.valueOf(randomAccessFile.readLong());
            this.mRangeData.add(gEMFRange);
        }
    }

    public String getName() {
        return this.mLocation;
    }

    public LinkedHashMap<Integer, String> getSources() {
        return this.mSources;
    }

    public void selectSource(int i) {
        if (this.mSources.containsKey(new Integer(i))) {
            this.mSourceLimited = true;
            this.mCurrentSource = i;
        }
    }

    public void acceptAnySource() {
        this.mSourceLimited = false;
    }

    public Set<Integer> getZoomLevels() {
        TreeSet treeSet = new TreeSet();
        for (GEMFRange gEMFRange : this.mRangeData) {
            treeSet.add(gEMFRange.zoom);
        }
        return treeSet;
    }

    public InputStream getInputStream(int i, int i2, int i3) {
        GEMFRange gEMFRange;
        RandomAccessFile randomAccessFile;
        int i4;
        Iterator it = this.mRangeData.iterator();
        while (true) {
            if (!it.hasNext()) {
                gEMFRange = null;
                break;
            }
            gEMFRange = (GEMFRange) it.next();
            if (i3 == gEMFRange.zoom.intValue() && i >= gEMFRange.xMin.intValue() && i <= gEMFRange.xMax.intValue() && i2 >= gEMFRange.yMin.intValue() && i2 <= gEMFRange.yMax.intValue()) {
                if (!this.mSourceLimited || gEMFRange.sourceIndex.intValue() == this.mCurrentSource) {
                    break;
                }
            }
        }
        if (gEMFRange == null) {
            return null;
        }
        try {
            long intValue = (((long) ((((gEMFRange.yMax.intValue() + 1) - gEMFRange.yMin.intValue()) * (i - gEMFRange.xMin.intValue())) + (i2 - gEMFRange.yMin.intValue()))) * 12) + gEMFRange.offset.longValue();
            RandomAccessFile randomAccessFile2 = (RandomAccessFile) this.mFiles.get(0);
            randomAccessFile2.seek(intValue);
            long readLong = randomAccessFile2.readLong();
            int readInt = randomAccessFile2.readInt();
            RandomAccessFile randomAccessFile3 = (RandomAccessFile) this.mFiles.get(0);
            if (readLong > ((Long) this.mFileSizes.get(0)).longValue()) {
                int size = this.mFileSizes.size();
                int i5 = 0;
                while (i5 < size - 1 && readLong > ((Long) this.mFileSizes.get(i5)).longValue()) {
                    readLong -= ((Long) this.mFileSizes.get(i5)).longValue();
                    i5++;
                }
                int i6 = i5;
                randomAccessFile = (RandomAccessFile) this.mFiles.get(i5);
                i4 = i6;
            } else {
                randomAccessFile = randomAccessFile3;
                i4 = 0;
            }
            randomAccessFile.seek(readLong);
            return new GEMFInputStream((String) this.mFileNames.get(i4), readLong, readInt);
        } catch (IOException e) {
            return null;
        }
    }
}
