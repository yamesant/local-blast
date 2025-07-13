# Configure path to blast databases
if [ -z "$BLASTDB" ]; then
    export BLASTDB=~/databases/blast/
    {
        echo ""
        echo "# Set path to BLAST databases"
        echo "export BLASTDB=\$HOME/databases/blast/"
    } >> ~/.zprofile
    source ~/.zprofile
fi

# Download swissprot
mkdir -p $BLASTDB
cd $BLASTDB
update_blastdb.pl --decompress swissprot